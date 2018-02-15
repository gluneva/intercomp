<?php

class Controller_Employees extends Controller {

    function action_index() {
        $filter = $_POST['dismissal'];
        $this->model = new Model_Employees();
        $employees = $this->model->get_data($filter);

        $checked = '';
        if ($filter) {$checked = 'checked';}

        $data = array('employees' => $employees, 'filter' => $filter, 'checked' => $checked);

        $this->view->generate('employees_list_view.php', 'template_view.php', $data);
    }
}