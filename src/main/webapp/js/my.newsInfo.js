$('#selectPage').on('change', function(){
	var queryString = '?page=' + this.value;
	window.location.href = queryString;
	
})

$('#newsMsgList li').hover(function() {
				$(this).find('a span:nth(1)').css({
						'font-weight': 'bold',
						'color': '#A3313A'
					})
			}, function() {
				$(this).find('a span:nth(1)').css({
						'font-weight': '400',
						'color': '#404040'
					})
			})
