"""
Для двухмерного клеточного автомата существует $4^9=262144$ комбинаций 
состояний клетки и 8-ми соседних клеток.
Правило для двухмерного клеточного автомата кодируется 262144 битами. 
Всего существует 
$2^{262144}=1.61132571748576047361957211845200501064402387454966951747... × 10^{78913}$ 
двухмерных клеточных автоматов, я даже не знаю, с чем это сравнить

Для примера - количество атомов в наблюдаемой вселенной = $10^{80}$
"""

extends Node

func cell_automaton_2d_next_state(a, b, c, wolfram_code) -> int:
	"""
	окрестность Мура
	- - -
	1 2 3
	4 5 6
	7 8 9
	- - -
	"""
#	2^3=8 состояний для проверки
	if a == 1 and b == 1 and c == 1: return wolfram_code[0] 
	if a == 1 and b == 1 and c == 0: return wolfram_code[1] 
	if a == 0 and b == 0 and c == 1: return wolfram_code[2] 
	if a == 1 and b == 0 and c == 0: return wolfram_code[3] 
	if a == 0 and b == 1 and c == 1: return wolfram_code[4] 
	if a == 0 and b == 1 and c == 0: return wolfram_code[5] 
	if a == 0 and b == 0 and c == 1: return wolfram_code[6] 
	if a == 0 and b == 0 and c == 0: return wolfram_code[7] 
	else: return 0
