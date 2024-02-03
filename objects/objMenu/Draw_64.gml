draw_set_font(ftMenu)

var itemsDistance = 55
var guiWidth = display_get_gui_width()
var guiHeight = display_get_gui_height()

var middleX = guiWidth / 2
var middleY = guiHeight / 2

for(var i = 0; i < array_length(options); i++) {
	option = options[i]

	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	
	if (index == i) {
		draw_set_color(c_yellow)
	} else {
		draw_set_color(c_white)
	}
	
	draw_text(middleX, middleY + (itemsDistance * i), option.name)
}