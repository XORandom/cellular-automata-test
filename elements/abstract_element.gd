"""
Абстрактный класс элемента, 
от которого будут наследоваться все остальные элементы песочницы
"""

class_name AbstractElement

extends Node

@export var x: int = 0
@export var y: int = 0
var hp
var friction
var mass
var velocity
## Сопротивление инерции
var resist_inertial
## Сопротивление к поджогу
var resist_flammable

## Элемент горит в данный момент?
var is_on_fire: bool
## Элемент нагрет в данный момент?
var is_heated: bool

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
## Движение элемента
func step(celluar_matrix):
	pass

## Замена одного блока на другой
func swap_block():
	pass

## Воздействие на соседние элементы
func act_on_other_elem(other_elem, celluar_matrix) -> bool:
	return false

## Может ли на элемент повлиять коррозия
func can_corrode(celluar_matrix) -> bool:
	return false

## Может ли элемент нагреваться и проводить тепло
func can_heat(celluar_matrix, heat: int) -> bool:
	return false

## Должен ли нагревать окружающие предметы? Если горит или нагрет, то да.
func should_heat() -> bool:
	return is_on_fire || is_heated 

## Должен ли элемент загореться
func should_on_fire():
	if resist_flammable <= 0:
		is_on_fire = true
	else:
		is_on_fire = false

## Прекратил ли элемент свое существование
func is_dead(celluar_matrix):
	if hp <=0:
		die()

# Воздействия
func die():
	pass

## Корррозия элемента
func corrode(celluar_matrix, damage):
	hp -= damage
	is_dead(celluar_matrix)

## Получение тепла (повышает шансы предмета загореться, снижая устойчивость к возгоранию)
func receive_heat(heat) -> bool:
	if is_on_fire:
		return false
	else: 
		resist_flammable -= int(randi_range(0, 10)*heat)
		return true

## Потеря тепла (повышает устойчивость к возгоранию)
func receive_cooling(heat) -> bool:
	if is_on_fire:
		resist_flammable += heat
		return true
	else:
		return false

## Нагревает соседние элементы, если нагрет или горит
func apply_heat():
	pass 
