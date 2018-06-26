<?php

/**
 * ErrorsController
 *
 * Manage errors
 */
class ErrorsController extends ControllerBase
{
    public function initialize()
    {
        $this->tag->setTitle('Oops!');
        parent::initialize();
    }

    public function show404Action()
    {
        return $this->dispatcher->forward(
            [
                "controller" => "session",
                "action"     => "index",
            ]
        );
    }

    public function show401Action()
    {

    }

    public function show500Action()
    {

    }
}
