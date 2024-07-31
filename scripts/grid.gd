class_name Grid

extends Node2D

@onready var tile_map_layer: TileMapLayer = $TileMapLayer
"""Структура атласа
На деле имена пока не важны, я собираюсь придать каждому пикселю свою логику
работы в качестве клеточного автомата и посмотреть на поведение
(0, 0) - пустота
(1, 0) - статичная клетка
(2, 0) - вода
(3, 0) - камень
(0, 1) - огонь
(1, 1) - дым
(2, 1) - яд
(3, 1) - болото
(0, 2) - земля
(1, 2) - глина
(2, 2) - песок
(3, 2) - магма
(0, 3) - лед
(1, 3) - кислота
(2, 3) - пламя
(3, 3) - синева
"""
var atlas = {"void_cell": Vector2i(0, 0), "static_cell": Vector2i(1, 0), "water_cell": Vector2i(2, 0), "rock_cell": Vector2i(3, 0),
"fire_cell": Vector2i(0, 1), "smoke_cell": Vector2i(1, 1), "venom_cell": Vector2i(2, 1), "swamp_cell": Vector2i(3, 1),
"dirt_cell": Vector2i(0, 2), "clay_cell": Vector2i(1, 2), "sand_cell": Vector2i(2, 2), "magma_cell": Vector2i(3, 2),
"ice_cell": Vector2i(0, 3), "acid_cell": Vector2i(1, 3), "flame_cell": Vector2i(2, 3), "deep_cell": Vector2i(3, 3)}
var temp_field = []
## Ширина мира игры
@export var width: int = 50
## Высота мира игры
@export var height: int = 50

func _process(delta: float) -> void:
	draw_state(delta)


func _ready() -> void:
	generate_field()
	next_state()
	
func _input(event):
	if event.is_action_pressed("left click"):
		var pos = (get_local_mouse_position()).floor()
		# Так как мы работаем с массивом, то меняем значения в нём
		if pos.x <= width and pos.y <=height:
			#temp_field[pos.x][pos.y] = atlas.get("ice_cell")
			temp_field[pos.x][pos.y] = atlas["ice_cell"]
			

func generate_field():
	var temp_line
	for x in range(width):
		temp_line = []
		for y in range(height):
			tile_map_layer.set_cell(Vector2i(x, y), 0, atlas["ice_cell"])
			temp_line.append(atlas["ice_cell"])
		temp_field.append(temp_line)
	

# Отрисовываем поле каждый раз, когда оно изменилось
func draw_state(_delta):
	for x in range(width):
		for y in range(height):
			tile_map_layer.set_cell(Vector2i(x, y), 0, temp_field[x][y])


# Важно отделить логику конечного автомата от его отрисовки, чтобы я мог
# Спокойно попробовать разные методы.
# Это означает, что я запрашиваю информацию с массива, а не к примеру из карты тайлов
func next_state():
	pass
