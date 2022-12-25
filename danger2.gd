extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal restart
var direction = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	while true:
		yield(get_tree().create_timer(1.0), "timeout")
		direction = Vector2(-10,0)
		yield(get_tree().create_timer(1.0), "timeout")
		direction = Vector2(10,0)



func _process(delta):
	self.translate(direction)

func _on_danger_mouse_entered():
	emit_signal("restart")
