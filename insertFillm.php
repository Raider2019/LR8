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
$Rez = $_POST['Actors'];
$Stud = $_POST['Studio'];
$Sce = $_POST['Scenarist'];

$sql = "INSERT INTO `films`(`Name`, `Operator`, `code_films`, `Actors`, `Rezisers`, `Studio`, `Scenarist`) VALUES ('$id ','$oper ','$code ','$actor','$Rez','$Stud','$Sce')";


if($mysqli->query($sql)){
    echo "Рядок вставлено успішно";
    }
else
    {
        echo "Error" . $sql . "<br/>" . $mysqli->error;
    }



/*Закриваємо з'єднання*/
$mysqli->close();

include("showFilms.php")
?>
