tool
extends Actor

var direction := Vector2()

func _enter_tree() -> void:
	if Engine.editor_hint:
		set_physics_process(false)

func _unhandled_key_input(event: InputEventKey) -> void:
	direction.x = Input.get_axis('ui_left', 'ui_right')
	if event.is_action_pressed('jump') and direction.y == 0.0:
		direction.y = -1
		velocity.y = -speed_cap.y

func _physics_process(_delta: float) -> void:
	velocity.x = direction.x * speed_cap.x
	
	var snap_vector := Vector2.UP * 10 if velocity.y > 0 else Vector2()
	velocity = move_and_slide_with_snap(velocity, snap_vector, Vector2.UP)
	
	if direction.y < 0.0:
		if is_on_floor():
			direction.y = 0
