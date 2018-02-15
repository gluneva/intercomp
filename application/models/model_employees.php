<?php

class Model_Employees extends Model {

    public function get_data($filter) {

        $mysqli = new mysqli($this->host, $this->user, $this->password, $this->db, 3306);
        if ($mysqli->connect_errno) {
            echo "Не удалось подключиться к MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
        }

        $query = 'select s.structure_name, p.fullname, e.employee_name from employees e
                  inner join structure s ON s.id = e.structure_id
                  inner join profiles p ON p.id = e.profile_id';

        if ($filter) {
            $query.= ' where e.dismissal_date IS NOT NULL';
        }

        $result = mysqli_query($mysqli, $query);

        if (!$result) {
            echo 'Запрос не выполнен.';
        }
        $employees = array();
        while($row = mysqli_fetch_assoc($result)) {
            if (!isset($employees[$row['structure_name']])) {
                $employees[$row['structure_name']] = array();
            }
            $employees[$row['structure_name']][] = array('fullname' => $row['fullname'], 'employee_name' => $row['employee_name']);

        }

    return $employees;
    }
}