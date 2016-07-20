$(document).ready(function(){
if (gon) var photos = gon.photos;

if (photos) {
    var temp2 = "<div class='brick item gallery' style='width:{width}px;'><img src='/system/photographs/avatars/000/000/{folder}/original/{index}' width='100%' class='clearfix fancybox' title='{title}'></div>";

    var w = 1, h = 1, html = '', limitItem = photos.length;
    for (var i = 0; i < limitItem; ++i) {
        w = 1 + 3 * Math.random() << 0;
        if (photos[i].id < 10){
            html += temp2.replace(/\{width\}/g, w*160).replace("{id}", photos[i].id).replace("{folder}", "00"+(photos[i].id)).replace("{title}", photos[i].name).replace("{index}", photos[i].avatar_file_name, i+1);
        }
        else if (photos[i].id > 9 && photos[i].id <= 99){
            html += temp2.replace(/\{width\}/g, w*160).replace("{folder}", 	"0"+(photos[i].id)).replace("{index}", photos[i].avatar_file_name, i+1);
        }
        else if (photos[i].id > 99){
            html += temp2.replace(/\{width\}/g, w*160).replace("{folder}", 	photos[i].id).replace("{index}", photos[i].avatar_file_name, i+1);
        }
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
}
})
