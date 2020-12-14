<html>
<head>
    <meta charset="utf-8">
    <meta name="keywords" content="Лабораторна робота, MySQL, з'єднання з базою даних">
    <meta name="description" content="Лабораторна робота. З'єднання з базою даних">
    <title>Вставка даних</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>

    <?php
        include("showFilms.php")    
    ?>

<form action="deleteFromFilms.php" method="post">
        <label >Ключ рядка, який видаляємо</label><input name="Name" type="varchar"><br>
        <input type="submit" value="Видалити рядок">
</form>

</body>
</html>