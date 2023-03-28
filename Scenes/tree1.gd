extends StaticBody2D

func _ready():
	randomize()
	var a = int(rand_range(1,2))
	$Sprite.texture = load("res://Sprite/tree%s.png" % str(a))
	pass 
