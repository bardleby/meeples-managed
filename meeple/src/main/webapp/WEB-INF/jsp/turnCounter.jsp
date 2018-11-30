<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>
<c:set var="game" value="${gameData}"/>
	<section>
		<div class="countdown">
			<p id="timeLimit">${game.turnLength} Minutes</p>
		</div>
	<div class = "flex-container">
	<c:forEach var="player" items="${playerList}">
		<div class="player-info" style="margin: 10px;">
			<p>Player <c:out value="${player.id}"/></p>
			<div class="example stopwatch" data-timer="900"></div>
			<button class="btn btn-success start">Start</button>
			<button class="btn btn-danger stop">Stop</button>
			<button class="btn btn-info restart">Restart</button>	
	</div>
</c:forEach>
</div>
</section>
<c:import url="/WEB-INF/jsp/common/footer.jsp"/>