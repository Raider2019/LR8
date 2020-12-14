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

<form action="updateFilms.php" method="post">
        <label>ІД рядка який змінюємо</label><input name="Name" type="varchar"><br>
        <label>Нове значення Оператора</label><input name="Operator" type="varchar"><br>
        <label>Нове значення Кода</label><input name="code_films" type="varchar"><br>
		<label>Нове значення Актора </label><input name="Actors" type="varchar"><br>
	    <label>Нове значення Режисера</label><input name="Rezisers" type="varchar"><br>
		<label>Нове значення Студій</label><input name="Studio" type="varchar"><br>
		<label>Нове значення Сценариста</label><input name="Scenarist" type="varchar"><br>
        <input type="submit" value="Змінюємо рядок">
</form>

</body>
</html>