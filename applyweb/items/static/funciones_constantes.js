function alert_message(strong, span, tipo){
	$("#mensaje-strong").text(strong+" ");
	$("#mensaje-span").text(span);
	$(".mensaje-div").addClass("alert "+tipo);
	$(".mensaje-div").slideDown();
	setTimeout(function(){ $(".mensaje-div").slideUp(); }, 2500);
};