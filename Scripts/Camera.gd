extends Camera2D

onready var zoomfactor = 2
onready var zoomspeed = 2
onready var zoomstep = 1
onready var factorstep = 1

func _ready():
	pass
	
func _process(delta): 
	zoom.x = lerp(zoom.x, zoomfactor * zoom.x, zoomspeed * delta)
	zoom.y = lerp(zoom.y, zoomfactor * zoom.y, zoomspeed * delta)
	zoom.x = clamp(zoom.x, 0.5, 2)
	zoom.y = clamp(zoom.y, 0.5, 2)
	
	if zoomfactor > 1:
		zoomfactor -= factorstep
	elif zoomfactor < 1:
		zoomfactor += factorstep
	
func _input(event):
	if event is InputEventMouseButton:
		
		if event.button_index == BUTTON_WHEEL_UP:
			zoomfactor -= zoomspeed
		elif event.button_index == BUTTON_WHEEL_DOWN:
			zoomfactor += zoomstep
			
	
