<?php
date_default_timezone_set('UTC');
$dbh = new PDO('mysql:host=127.0.0.1;dbname=lb1v7', "root", ""); /*подключение к БД*/
$stmt = $dbh->prepare("SELECT ID_GAME FROM GAME WHERE DATE >= ? AND DATE <= ?;"); /*обьект PDOStatement был возвращен из метода PDO::prepare() не узнаешь сразу число столбцов*/
$firstDate = $_GET['firstDate'];
$lastDate = $_GET['lastDate'];
$stmt->execute(array($firstDate, $lastDate));/*узнаем точное колличество столбцов*/
print "<table border='1'><tr><caption>Games from $firstDate until $lastDate<br></caption><th>GAME</th></tr>";
while ($row = $stmt->fetch(PDO::FETCH_ASSOC))/*прлучение информации из запроса*/ {
    print "<tr><td>$row[ID_GAME]</td></tr>";
}
?>
