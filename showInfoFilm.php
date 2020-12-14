<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Таблиця Films <td>%s</td></title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1>Таблиця Films</h1>


    <?php

    $mysqli = new mysqli('localhost', 'root', '', 'films'); // Створюємо нове підключення з назвою $mysqli за допомогою створення об'єта класу mysqli. Параметри підключення по порядку: сервер, логін, пароль, БД
    $mysqli->set_charset("utf8"); // Встановлюємо кодування utf8
    
    if (mysqli_connect_errno()) {
    printf("Підключення до сервера не вдалось. Код помилки: %s\n", mysqli_connect_error());
    exit;
    }

    /* Надсилаємо запит серверу */
    if($result = $mysqli->query('SELECT f.`Name`, f.`code_films` , m.Date, m.Budzet FROM films AS f LEFT JOIN `finans_film` AS m ON f.Name = m.Name ')) {   // $mysqli - наш об'єкт, через який здійснюємо підключення, query - метод, який дозволяє виконати довільний запит

        printf("<h3>Звіт - фінансова інформація про фільм і його вихід: </h3><br>");   // <br> в html - розрив рядка
        printf("<table><tr><th>Імя	</th><th>Код</th></th><th>Дата<th>Бюджет</th></tr>");   // <br> в html - розрив рядка
        /* Вибірка результатів запиту  */
        while( $row = $result->fetch_assoc() ){ // fetch_assoc() повертає рядок із запиту у вигляді асоціативного масиву, наприклад $row = ['id'=>'1', 'pib'=>'Олександр', 'grupa'=>'ІПЗ-31']
            printf("<tr><td>%s</td><td>%s</td><td>%s</td><td>%s</td></tr>",$row['Name'], $row['code_films'], $row['Date'],$row['Budzet']); //виводимо результат на сторінку
        };
        printf("</table>");
        /*Звільняємо пам'ять*/
        $result->close();
    }

    /*Закриваємо з'єднання*/
    $mysqli->close();
    ?>

    <br><br><br>

    <ul>
    <li><a href="showFilms.php">Таблиця Films</a></li>
    <li><a href="showActors.php">Таблиця Actors</a></li>
    <li><a href="showRezisers.php">Таблиця Rezisers</a></li>
	<li><a href="showfin_Films.php">Таблиця Fin_Films</a></li>
	<li><a href="showcontact_rez.php">Таблиця Contact Rez</a></li>
	<li><a href="showActors_contacts.php">Таблиця contacts actors</a></li>
	<li><a href="showScenars_contacts.php">Таблиця contacts scenar</a></li>
        <li><a href="index.html">На головну</a><br></li>
    </ul>
    
</body>
</html>
