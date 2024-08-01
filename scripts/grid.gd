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
var field = [] # Игровое поле
var input_cell = atlas["static_cell"] # Цвет клетки, рисуемой пользователем
## Ширина мира игры
@export var width: int = 200
## Высота мира игры
@export var height: int = 200

func _process(delta: float) -> void:
	pass


func _ready() -> void:
	generate_field()
	draw_state()

	
func _input(event):
	if event.is_action_pressed("left click"):
		var pos = (get_local_mouse_position()).floor()
		# Так как мы работаем с массивом, то меняем значения в нём
		if pos.x <= width and pos.y <=height:
			field[pos.x][pos.y] = input_cell
			draw_state()
	
	if event.is_action_pressed("1"):
		input_cell = atlas["static_cell"]
	if event.is_action_pressed("2"):
		input_cell = atlas["void_cell"]
	if event.is_action_pressed("3"):
		input_cell = atlas["void_cell"]
			
	if event.is_action_pressed("right click"):
		elementary_cell_automata()
		draw_state()
			

func generate_field():
	var temp_line
	for x in range(width):
		temp_line = []
		for y in range(height):
			tile_map_layer.set_cell(Vector2i(x, y), 0, Vector2i(0, 0))
			temp_line.append(Vector2i(0, 0))
		field.append(temp_line)
	

# Отрисовываем поле каждый раз, когда оно изменилось
func draw_state():
	for x in range(width):
		for y in range(height):
			tile_map_layer.set_cell(Vector2i(x, y), 0, field[x][y])


 # Важно отделить логику конечного автомата от его отрисовки, чтобы я мог
 # Спокойно попробовать разные методы.
 # Это означает, что я запрашиваю информацию с массива, а не к примеру из карты тайлов
func next_state():
	## За раз надо изменять только одно состояние поля 
	# Соседние ячейки клетки
	var left
	var right
	var up
	var down
	# Буфер, что используется для расчета состояний клеток
	var temp_field = field.duplicate()
	#TODO Пока что не буду рассматривать края, они будут статичными, но в будущем надо придумать, как их обрабатывать
	for x in range(1, width-1):
		for y in range(1, height-1):
			left = temp_field[x-1][y]
			right = temp_field[x+1][y]
			up = temp_field[x][y+1]
			down = temp_field[x][y-1]

# ------------------------------------------------------------------------------
var rule_num := 246
var rule_binary = []


func elementary_cell_automata():
	var binary_string := String.num_uint64(rule_num, 2)
	binary_string = binary_string.lpad(8, "0")
	print(binary_string)
	rule_binary = []
# Split the string into an array of individual characters
	for i in binary_string:
		rule_binary.append(int(i))
	print(rule_binary)
	## Одномерный простой клеточный автомат, где y - это изменение состояние во времени
	# За раз надо изменять только одно состояние поля, 
	#используются только два состояния (0, 0), (1, 0)
	var cell
	# Соседние ячейки клетки
	var left
	var right
	# Здесь не требуется буффер, т.к. исходная строка не меняется
	for y in range(height-1):
		for x in range(1, width-1):
			left = field[x-1][y]
			right = field[x+1][y]
			cell = field[x][y]
			# Помещаем значение в новую строку
			field[x][y+1] = Vector2i(elementary_cell_automata_next_state(left.x, cell.x, right.x), 0)


func elementary_cell_automata_next_state(a, b, c) -> float:
#	2^3=8 состояний для проверки
	if a == 1 and b == 1 and c == 1: return rule_binary[0] 
	if a == 1 and b == 1 and c == 0: return rule_binary[1] 
	if a == 0 and b == 0 and c == 1: return rule_binary[2] 
	if a == 1 and b == 0 and c == 0: return rule_binary[3] 
	if a == 0 and b == 1 and c == 1: return rule_binary[4] 
	if a == 0 and b == 1 and c == 0: return rule_binary[5] 
	if a == 0 and b == 0 and c == 1: return rule_binary[6] 
	if a == 0 and b == 0 and c == 0: return rule_binary[7] 
	else: return 0
