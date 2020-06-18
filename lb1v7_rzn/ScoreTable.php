<?php
$dbh = new PDO('mysql:host=127.0.0.1;dbname=lb1v7', "root", ""); /*подключение к БД*/
$league = $_GET['league'];

$stmt = $dbh->prepare("SELECT * FROM game INNER JOIN team on FID_TEAM1 = ID_TEAM WHERE LEAGUE = ?"); /*обьект PDOStatement был возвращен из метода PDO::prepare() не узнаешь сразу число столбцов*/

$stmt->execute(array($league)); /*узнаем точное колличество столбцов*/

print "<table border='1'><tr><caption> $league</caption><th>Name</th><th>Points</th></tr>";
while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) /*прлучение информации из запроса*/ {
    print "<tr><td>$row[ID_GAME]</td><td>$row[SCORE]</td></tr>";
}
print "</table>"; 
?>
