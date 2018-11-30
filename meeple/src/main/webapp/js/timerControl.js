$(document).ready(function() {

	$(".example.stopwatch").TimeCircles();
	$(".start").click(function(){ $(".example.stopwatch").TimeCircles().start(); });
	$(".stop").click(function(){ $(".example.stopwatch").TimeCircles().stop(); });
	$(".restart").click(function(){ $(".example.stopwatch").TimeCircles().restart(); });
	
});