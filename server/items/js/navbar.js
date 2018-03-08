$(document).ready(function(){
	$('.botones_menu li').click(function(){
	    $('.botones_menu li').removeClass('active');
	    $(this).addClass('active');
	});
});