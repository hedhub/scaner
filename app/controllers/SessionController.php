<?php

/**
 * SessionController
 *
 * Allows to authenticate users
 */
class SessionController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Sign Up/Sign In');
        parent::initialize();
    }

    public function indexAction()
    {
        if (!$this->request->isPost()) {
            $this->tag->setDefault('email', 'demo');
            $this->tag->setDefault('password', 'phalcon');
        }
    }

    /**
     * Register an authenticated user into session data
     *
     * @param Users $user
     */
    private function _registerSession(Users $user)
    {
        $this->session->set('auth', [
            'id' => $user->id,
            'name' => $user->name
        ]);
    }

    /**
     * This action authenticate and logs an user into the application
     *
     */
    public function startAction()
    {
        if ($this->request->isPost()) {

            $email = $this->request->getPost('email');
            $password = $this->request->getPost('password');

            try {
                $user = Users::findFirst([
                    "(email = :email: OR username = :email:) AND password = :password: AND active = '1'",
                    'bind' => ['email' => $email, 'password' => sha1($password)]
                ]);
            }catch (Exception $e)
            {
            }

            if ($user != false) {
                $this->_registerSession($user);
                $this->view->setVar('auth','true');

                /*$this->flash->success('Welcome ' . $user->name);*/

                return $this->dispatcher->forward(
                    [
                        "controller" => "workflow",
                        "action"     => "index",
                    ]
                );
            }

            $this->flash->error('Wrong email/password');
        }

        return $this->dispatcher->forward(
            [
                "controller" => "workflow",
                "action"     => "index",
            ]
        );
    }

    /**
     * Finishes the active session redirecting to the index
     *
     * @return unknown
     */
    public function endAction()
    {
        $this->session->remove('auth');
        $this->flash->success('Goodbye!');

        return $this->dispatcher->forward(
            [
                "controller" => "session",
                "action"     => "index",
            ]
        );
    }
}
