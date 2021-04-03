extends Spatial


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var SPEED = 300;

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
		
func _physics_process(delta):
	var velocity = Vector3()
	if Input.is_action_pressed("player_forward"):
		velocity += Vector3(SPEED,0,0)
	if Input.is_action_pressed("player_backward"):
		velocity += Vector3(-SPEED,0,0)
	if Input.is_action_pressed("player_right"):
		velocity += Vector3(0,0,SPEED)
	if Input.is_action_pressed("player_left"):
		velocity += Vector3(0,0,-SPEED)
	velocity += Vector3(0,-SPEED,0)
	self.get_child(0).move_and_slide(velocity*delta)
