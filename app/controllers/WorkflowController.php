<?php

use Phalcon\Flash;
use Phalcon\Session;

/**
 * WorkflowController
 *
 * Manage operations 
 */
class WorkflowController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Admin');
        parent::initialize();
    }

    public function indexAction()
    {
        if (isset($_POST['call'])) {
            var_dump($_POST);
            die();
            $C = $_POST['cab'];
            $N = $_POST['Num'];
            $R = rand($N - 500, $N + 500);
            $CID = $_POST['Callerid'];
            if (isset($_POST['rendom'])) {
                $CID = $R;
            } else {
                $CID = $_POST['Callerid'];
            }

            $F = fopen("husein$C.call", "w+t");
            fwrite($F, "Channel: Local/s@randomcoling1\nCallerid:");
            fwrite($F, $CID);
            fwrite($F,
                "\nMaxRetries: 0\nWaitTime: 960000\nContext: default\nExtension: s\nPriority: 1\nSet: CalleridFild=");
            fwrite($F, $CID);
            fwrite($F, "\nSet: dilernumber=2\nSet: StartName=husein\nSet: StartNumber=");
            fwrite($F, $N);
            fwrite($F, "\nSet: Voiper=voip3\nSet: KillFiles=");
            fwrite($F, $_POST['Rad']);
            fwrite($F, "\nSet: NumberFile=");
            fwrite($F, $_POST['cab']);
            fwrite($F, "\nSet: CallTime=");
            fwrite($F, $_POST['CT']);
            fwrite($F, "\nSet: C1=");
            fwrite($F, $_POST['C1']);
            fwrite($F, "\nSet: C2=");
            fwrite($F, $_POST['C2']);

            fclose($F);

            rename("husein$C.call", "d:\outgoing\husein$C.call");
        }

    }

    /**
     * Edit the active user profile
     *
     */
    public function profileAction()
    {
        //Get session info
        $auth = $this->session->get('auth');

        //Query the active user
        $user = Users::findFirst($auth['id']);
        if ($user == false) {
            return $this->dispatcher->forward(
                [
                    "controller" => "index",
                    "action" => "index",
                ]
            );
        }

        if (!$this->request->isPost()) {
            $this->tag->setDefault('name', $user->name);
            $this->tag->setDefault('email', $user->email);
        } else {

            $name = $this->request->getPost('name', ['string', 'striptags']);
            $email = $this->request->getPost('email', 'email');

            $user->name = $name;
            $user->email = $email;
            if ($user->save() == false) {
                foreach ($user->getMessages() as $message) {
                    $this->flash->error((string)$message);
                }
            } else {
                $this->flash->success('Your profile information was updated successfully');
            }
        }
    }

}
