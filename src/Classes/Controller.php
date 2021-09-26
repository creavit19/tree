<?php

namespace Tree\Classes;

use Tree\Classes\View;
use Tree\Classes\Model;

class Controller
{
  public $model;
  public $view;

  public function __construct()
  {
    $this->model = new Model;
    $this->view = new View;
  }

  public function run()
  {
    $level = $this->model->getSelect();
    $data = $this->model->readData($level);
    $this->view->renderDocument($data, $level);
  }

}
