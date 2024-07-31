extends Camera2D

var zoom_speed: float = 0.05
var zoom_min: float = 0.05
var zoom_max: float = 30.0
var drag_sensitivity: float = 1.0

var speed = 10

var camera_zoom := zoom # Для исключения ошибок масштабирования

func _ready() -> void:
	pass
	
func _input(event: InputEvent) -> void:
	# Для управления мышью
	if event is InputEventMouseMotion and Input.is_mouse_button_pressed(MOUSE_BUTTON_MIDDLE):
		position -= event.relative * drag_sensitivity / zoom
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_WHEEL_UP:
			camera_zoom += Vector2(zoom_speed, zoom_speed)
		if event.button_index == MOUSE_BUTTON_WHEEL_DOWN:
			camera_zoom -= Vector2(zoom_speed, zoom_speed)
		zoom = clamp(camera_zoom, Vector2(zoom_min, zoom_min), Vector2(zoom_max, zoom_max))
		camera_zoom = zoom

		
	# Для управления с клавиатуры
	if event.is_action_pressed("move_left"):
		offset.x -= speed
	if event.is_action_pressed("move_right"):
		offset.x += speed
	if event.is_action_pressed("move_up"):
		offset.y -= speed
	if event.is_action_pressed("move_down"):
		offset.y += speed
	if event.is_action_pressed("zoom+"):
		camera_zoom += Vector2(1, 1)
	if event.is_action_pressed("zoom-"):
		camera_zoom -= Vector2(1, 1)
	zoom = clamp(camera_zoom, Vector2(zoom_min, zoom_min), Vector2(zoom_max, zoom_max))
	camera_zoom = zoom
