<?php
$dbh = new PDO('mysql:host=127.0.0.1;dbname=lb1v7', "root", ""); /*подключение к БД*/

$stmt = $dbh->prepare("SELECT * FROM (game INNER JOIN team ON FID_TEAM1 = ID_TEAM or FID_TEAM2 = ID_TEAM) INNER JOIN player on ID_TEAM = FID_TEAM WHERE player.NAME = ?"); /*обьект PDOStatement был возвращен из метода PDO::prepare() не узнаешь сразу число столбцов*/
$player = $_GET['player'];

$stmt->execute(array($player)); /*узнаем точное колличество столбцов*/

print "<table border='1'><tr><caption> $player</caption><th>Game</th></tr>";
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) /*прлучение информации из запроса*/ {
    print "<tr><td>$row[ID_GAME]</td></tr>";
}
print "</table>";
?>
