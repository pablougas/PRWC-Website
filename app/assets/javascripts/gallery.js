$(document).ready(function() {
	var temp = "<div class='brick item gallery' style='width:{width}px;'><img src='../assets/carousel/{index}.jpg' width='100%' class='clearfix fancybox'></div>";
	var w = 1, h = 1, html = '', limitItem = 30;
	for (var i = 0; i < limitItem; ++i) {
		w = 1 + 3 * Math.random() << 0;
		html += temp.replace(/\{width\}/g, w*160).replace("{index}", i + 1);
	}
	$("#freewall").html(html);

	var wall = new Freewall("#freewall");
	wall.reset({
		selector: '.brick',
		animate: true,
		cellW: 150,
		cellH: 'auto',
		onResize: function() {
			wall.fitWidth();
		}
	});

	var images = wall.container.find('.brick');
	images.find('img').load(function() {
		wall.fitWidth();
	});

	
	$(".item").find("img").each( function() {
     		$(this).attr("href",$(this).attr("src"));
	});
	
  	$(".fancybox").fancybox();
});	