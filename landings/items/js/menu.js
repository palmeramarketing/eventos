$(document).ready(function(){
	$('.mostrar').on('click', function(){
		if ($('.mostrar').hasClass('ocultar')) {
			$('.content-menu').css('margin-left','0px');
			$('.mostrar').removeClass('ocultar');
		}else{
			$('.content-menu').css('margin-left','-200px');
			$('.mostrar').addClass('ocultar');
		}
	});
});