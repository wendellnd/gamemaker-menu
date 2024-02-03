keyUp = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"))
keyDown = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"))
keyEnter = keyboard_check_pressed(vk_enter)

currentOption = options[index]

if (keyDown) {
	index++
	if(index > array_length(options) - 1) {
		index = 0
	}
}

if (keyUp) {
	index--
	if(index < 0) {
		index = array_length(options) - 1
	}
}

if (keyEnter) {
	if (currentOption.name == "New Game") {
		room_goto_next()
	}

	if (currentOption.name == "Exit") {
		game_end()
	}
}