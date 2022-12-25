extends Node2D


var level = 0

onready var level1 = $one
onready var level2 = $two
onready var level3 = $three
onready var level4 = $four
onready var level5 = $five
onready var level6 = $six
onready var home = $home

func setLevel(n):
	level = n
	if(level == 0):
		level1.visible = true
		level2.visible = false
		level3.visible = false
		level4.visible = false
		level5.visible = false
		level6.visible = false
		home.visible = false
	if(level == 1):
		level1.visible = false
		level2.visible = true
		level3.visible = false
		level4.visible = false
		level5.visible = false
		level6.visible = false
		home.visible = false
	if(level == 2):
		level1.visible = false
		level2.visible = false
		level3.visible = true
		level4.visible = false
		level5.visible = false
		level6.visible = false
		home.visible = false
	if(level == 3):
		level1.visible = false
		level2.visible = false
		level3.visible = false
		level4.visible = true
		level5.visible = false
		level6.visible = false
		home.visible = false
	if(level == 4):
		level1.visible = false
		level2.visible = false
		level3.visible = false
		level4.visible = false
		level5.visible = true
		level6.visible = false
		home.visible = false
	if(level == 5):
		level1.visible = false
		level2.visible = false
		level3.visible = false
		level4.visible = false
		level5.visible = false
		level6.visible = true
		home.visible = false
	if(level == 6):
		level1.visible = false
		level2.visible = false
		level3.visible = false
		level4.visible = false
		level5.visible = false
		level6.visible = false
		home.visible = true

# Called when the node enters the scene tree for the first time.
func _ready():
	level1.visible = true
	level2.visible = false
	level3.visible = false
	level4.visible = false
	level5.visible = false
	level6.visible = false
	home.visible = false

func _on_reset_restart():
	setLevel(0)

func _on_homebutton_update1():
	setLevel(1)

func _on_homebutton_update2():
	setLevel(2)

func _on_homebutton_update3():
	setLevel(3)

func _on_danger_restart():
	setLevel(0)

func _on_homebutton_update4():
	setLevel(4)
	
func _on_homebutton_update5():
	setLevel(5)


func _on_homebutton_update6():
	setLevel(6)
