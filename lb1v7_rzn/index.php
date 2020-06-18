<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Main</title>
    <style>
    form{
        margin: 20px;
    }
    </style>
</head>
<body>


<form method="GET" action="GamesPerPeriod.php">
<label>Get games by period:</label>
</br>
    <label>
        First date:
        <input name="firstDate" type="date"><br>
    </label>
    <label>
        Last date:
        <input name="lastDate" type="date"><br>
    </label>
    <input type="submit" value="Ok">
</form>

<form method="GET" action="Player.php">
    <label>
        Get games by player:
        <select name="player">
            <option>pname1</option>
            <option>pname2</option>
            <option>pname3</option>
            <option>pname4</option>
            <option>pname5</option>
        </select>
    </label><br>
    <input type="submit" value="OK">
</form>


<form method="GET" action="ScoreTable.php">
    <label>
        Get games by League:
        <select name="league">
            <option>LEAGUE1</option>
            <option>LEAGUE2</option>
        </select>
    </label><br>
    <input type="submit" value="OK">
</form>


</body>
</html>