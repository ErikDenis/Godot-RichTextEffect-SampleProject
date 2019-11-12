tool extends RichTextEffect
class_name RichTextGhost

var bbcode = "ghost"

func _init():
	resource_name = "RichTextGhost"

func _process_custom_fx(char_fx: CharFXTransform) -> bool:
	
	var speed = char_fx.get_value_or("freq", 5.0)
	var span = char_fx.get_value_or("span", 10.0)
	
	var alpha = sin(char_fx.elapsed_time * speed + (char_fx.absolute_index / span)) * 0.5 + 0.5
	char_fx.color.a = alpha
	return true
