extends Area2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
signal restart

# Called when the node enters the scene tree for the first time.
func _ready():
	pass
	
func _on_danger_mouse_entered():
	emit_signal("restart")
