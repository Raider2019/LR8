<?php

$mysqli = new mysqli('localhost', 'root', '', 'films'); // Створюємо нове підключення з назвою $mysqli за допомогою створення об'єта класу mysqli. Параметри підключення по порядку: сервер, логін, пароль, БД
$mysqli->set_charset("utf8"); // Встановлюємо кодування utf8

if (mysqli_connect_errno()) {
    printf("Підключення до сервера не вдалось. Код помилки: %s\n", mysqli_connect_error());
    exit;
}


$id = $_POST['Name'];
$oper = $_POST['Operator'];
$code = $_POST['code_films'];
$actor = $_POST['Actors'];
$Rez = $_POST['Rezisers'];
$Stud = $_POST['Studio'];
$Sce = $_POST['Scenarist'];


$sql = "UPDATE `films` SET `Operator`= '$oper ',`code_films`='$code ',`Actors`='$actor ',`Rezisers`='$Rez ',`Studio`='$Stud ',`Scenarist`='$Sce' WHERE Name = '$id'";


if($mysqli->query($sql)){
    echo "Рядок змінено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }



/*Закриваємо з'єднання*/
$mysqli->close();

include("showFilms.php")
?>
