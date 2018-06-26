<?php

use Phalcon\Mvc\Controller;
use Phalcon\Mvc\Dispatcher;

class ControllerBase extends Controller
{
    protected function initialize()
    {
        $this->tag->prependTitle('');
        $this->view->setTemplateAfter('main');
    }
}
