<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
	<head>
		<title>Board Game Timer</title>
	</head>
	<body>
		<form method="POST" action="setup">
			<label for="totalPlayers">Number of players: </label>
			<select name="totalPlayers">
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
				<option value="5">5</option>
				<option value="6">6</option>
				<option value="7">7</option>
				<option value="8">8</option>
			</select>
			<label for="turnLength">Minutes per turn: </label>
			<input type="text" name="turnLength" id="turnLength"/>
		</form>
	</body>
</html>