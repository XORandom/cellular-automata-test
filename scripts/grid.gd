class_name Grid

extends Node2D

@onready var label: Label = $Control/Label
@onready var timer: Timer = $Timer
@onready var tile_map_layer: TileMapLayer = $TileMapLayer
@onready var ca_1d_wolfram: Node = $CA_1D_Wolfram
@onready var ca_2d_v_1: Node = $CA_2D_v1
@onready var ca_2d_v_2: Node = $CA_2D_v2


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
var atlas_keys = []
var field = [] # Игровое поле
var input_iter: int = 1 # Номер ключа в атласе. Цвет выбираемый пользователем.
var atlas_size = 15
var rule_num : int = 1 # Номер правила для 1D клеточного автомата
var running: bool = false

## Ширина мира игры
@export var width: int = 200
## Высота мира игры
@export var height: int = 200

func _process(_delta: float) -> void:
	pass


func _ready() -> void:
	generate_field()
	draw_state()

	
func _input(event):
	if event.is_action_pressed("left click"):
		var pos = (get_local_mouse_position()).floor()
		# Так как мы работаем с массивом, то меняем значения в нём
		if pos.x <= width and pos.y <=height:
			field[pos.x][pos.y] = atlas[atlas_keys[input_iter]]
			draw_state()
	
	if event.is_action_pressed("1"):
		input_iter = clamp(input_iter-1, 0, atlas_size)
	if event.is_action_pressed("2"):
		input_iter = clamp(input_iter+1, 0, atlas_size)
	if event.is_action_pressed("3"):
		rule_num = clamp(rule_num-1, 0, 255)
	if event.is_action_pressed("4"):
		rule_num = clamp(rule_num+1, 0, 255)
			
	if event.is_action_pressed("start"):
		running = !running
		if running:
			timer.start()
		else:
			timer.stop()
			
	if event.is_action_pressed("right click"):
		#game_of_life()
		cell_automaton_2d()
		draw_state()

func generate_field():

	for keys in atlas.keys():
		atlas_keys.append(keys)
	print(atlas_keys)
	
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
func cell_automaton_2d():
	var binary_string := String.num_uint64(rule_num, 2).lpad(8, "0")
	var rule_binary = []

	for i in binary_string:
		rule_binary.append(int(i))
	label.text = "правило № %s" % [rule_num]
	## За раз надо изменять только одно состояние поля 
	# Соседние ячейки клетки
	var left
	var right
	var up
	var down
	var cell
	# Буфер, что используется для расчета состояний клеток
	var temp_field = field.duplicate()
	#TODO Пока что не буду рассматривать края, они будут статичными, но в будущем надо придумать, как их обрабатывать
	for x in range(1, width-1):
		for y in range(1, height-1):
			left = temp_field[x-1][y]
			right = temp_field[x+1][y]
			up = temp_field[x][y-1]
			down = temp_field[x][y+1]
			cell = temp_field[x][y]
			field[x][y] = ca_2d_v_1.cellular_automaton_next_state(left, right, up, down, rule_binary, cell)


# ------------------------------------------------------------------------------


func cell_automaton_1d():
	var binary_string := String.num_uint64(rule_num, 2).lpad(8, "0")
	var rule_binary = []

	for i in binary_string:
		rule_binary.append(int(i))
	label.text = "правило № %s" % [rule_num]
	#print(rule_num, " ", binary_string)
	#print(rule_binary)
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
			field[x][y+1] = Vector2i(ca_1d_wolfram.cell_automaton_1d_next_state(left.x, cell.x, right.x, rule_binary), 0)
		# Для краёв
		field[0][y+1] = Vector2i(ca_1d_wolfram.cell_automaton_1d_next_state(field[width-1][y].x, field[0][y].x, field[1][y].x, rule_binary), 0)
		field[width-1][y+1] = Vector2i(ca_1d_wolfram.cell_automaton_1d_next_state(field[width-2][y].x, field[width-1][y].x, field[0][y].x, rule_binary), 0)


func game_of_life() -> void:
	var temp_field = field.duplicate()
	for x in range(1, width-1):
		for y in range(1, height-1):
			var live_neighbors = 0
			for y_cord in [-1, 0, 1]:
				for x_cord in [-1, 0, 1]:
					if x_cord != y_cord or x_cord != 0:
						if temp_field[x+x_cord][y+y_cord] == Vector2i(1, 0):
							live_neighbors += 1
							
			if temp_field[x][y] == Vector2i(1, 0): 
				if live_neighbors in [2, 3]:
					field[x][y] = Vector2i(1, 0)
				else:
					field[x][y] = Vector2i(0, 0)
			else:
				if live_neighbors == 3:
					field[x][y] = Vector2i(1, 0)
				else:
					field[x][y] = Vector2i(0, 0)


func _on_timer_timeout() -> void:
	game_of_life()
	draw_state()
