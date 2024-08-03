extends Node

func cell_automaton_1d_next_state(a, b, c, wolfram_code) -> int:
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
