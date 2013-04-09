$(function () {
	if ($('#definition').length > 0) { 
		$('#definition').remove();
		$('.results').append('<%= j render "index" %>');	
	} else {
		$('.results').append('<%= j render "index" %>');
	}
});