<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:import url="/WEB-INF/jsp/common/header.jsp"/>
<c:set var="game" value="${gameData}"/>
<section>
<div class="countdown">
	<script type="text/javascript">
		var timer;
			function clock() {
				timer = setInterval(myClock, 1000);
	     		var minutes = ${game.turnLength * 60};

	     		function myClock() {
	     			document.getElementById("timeLimit").innerHTML = --minutes;
	       			if (minutes == 0) {
	         			clearInterval(timer);
	         			alert("You're wasting everyone's time!");
	      		 	}
	    			}
	  		 }
	</script>
	<p id="timeLimit">${game.turnLength} Minutes</p>
	</div>
<div class = "flex-container">
<c:forEach var="player" items="${playerList}">
	<div class="player-info" style="margin: 10px;">
	<p>Player <c:out value="${player.id}"/></p>
	<button onclick="clearInterval(timer); 
					clock(); 
					document.getElementById('timeLimit').innerHTML=minutes;">Begin Turn
	</button><br>
	<button onclick="clearInterval(timer);">End Turn</button>
	</div>
</c:forEach>
</div>
</section>
<c:import url="/WEB-INF/jsp/common/footer.jsp"/>