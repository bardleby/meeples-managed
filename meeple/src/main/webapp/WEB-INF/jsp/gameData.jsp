<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>
<section>
<c:set var="game" value="${gameData}"/>
<div class="player-info">
	<p>Players: ${game.totalPlayers}</p>
	<p>Turn Length: ${game.turnLength} Minute(s)</p>
	<form method="POST" action="startRound">
		<button type="submit">Begin Game</button>
	</form>
</div>
</section>
<c:import url="/WEB-INF/jsp/common/footer.jsp"/>