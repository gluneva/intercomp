<h1> Список сотрудников, сгруппированных по отделам</h1>

<?php

echo "<form name='filter' action='http://inter.dev/' method='post'>
<label for='dismissal'>Отобразить уволенных сотрудников</label>
<input  name='dismissal' id='dismissal' type='checkbox' value=".$data['filter']." ".$data['checked'].">

</form>";
$i = 1;
foreach ($data['employees'] as $key => $structure) {
    echo "<p>Отдел ".$i++.": ".$key."</p>";
    echo "<ul>";
    foreach ($structure as $employee) {
        echo "<li>".$employee['fullname']. "(".$employee['employee_name'].")</li>";
    }
    echo "</ul>";
}
?>