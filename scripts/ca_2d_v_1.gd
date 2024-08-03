extends Node

func cellular_automaton_next_state(l, r, u, d, _rule_binary, c:=Vector2i(3, 0)) -> Vector2i:
	"""
	окрестность фон Неймана
	- - -
	  u  
	l c r
	  d  
	- - -
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
	if c == Vector2i(0,0): # пустота
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			return Vector2i(2,0)
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			return Vector2i(2,1)
		if u == Vector2i(3,1): # болото
			return Vector2i(3,1)
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			return Vector2i(2,2)
		if u == Vector2i(3,2): # магма
			return Vector2i(3,2)
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			return Vector2i(1,3)
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			return Vector2i(1,1)
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			return Vector2i(1,1)
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			return Vector2i(1,1)
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			return Vector2i(2,0)
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			return Vector2i(3,2)
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			return Vector2i(2,0)
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(1,0): # статичная клетка
		return Vector2i(1,0)
	if c == Vector2i(2,0): # вода
		if u == Vector2i(0,0): # пустота
			return Vector2i(2,0)
		if u == Vector2i(1,0): # статичная клетка
			return Vector2i(2,0)
		if u == Vector2i(2,0): # вода
			return Vector2i(2,0)
		if u == Vector2i(3,0): # камень
			return Vector2i(2,0)
		if u == Vector2i(0,1): # огонь
			return Vector2i(2,0)
		if u == Vector2i(1,1): # дым
			return Vector2i(2,0)
		if u == Vector2i(2,1): # яд
			return Vector2i(2,1)
		if u == Vector2i(3,1): # болото
			return Vector2i(3,1)
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			return Vector2i(2,2)
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			return Vector2i(0,1)
		if u == Vector2i(2,3): # пламя
			return Vector2i(2,0)
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			return Vector2i(0,0)
		if d == Vector2i(1,0): # статичная клетка
			return Vector2i(2,0)
		if d == Vector2i(2,0): # вода
			return Vector2i(2,0)
		if d == Vector2i(3,0): # камень
			return Vector2i(2,0)
		if d == Vector2i(0,1): # огонь
			return Vector2i(1,1)
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			return Vector2i(2,1)
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			return Vector2i(1,1)
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			return Vector2i(1,1)
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			return Vector2i(2,0)
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			return Vector2i(2,0)
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(3,0): # камень
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(0,1): # огонь
		if u == Vector2i(0,0): # пустота
			return Vector2i(0, 0)
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			return Vector2i(1,1)
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(1,1): # дым
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(2,1): # яд
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(3,1): # болото
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(0,2): # земля
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(1,2): # глина
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(2,2): # песок
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(3,2): # магма
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(0,3): # лед
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(1,3): # кислота
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(2,3): # пламя
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	if c == Vector2i(3,3): # синева
		if u == Vector2i(0,0): # пустота
			pass
		if u == Vector2i(1,0): # статичная клетка
			pass
		if u == Vector2i(2,0): # вода
			pass
		if u == Vector2i(3,0): # камень
			pass
		if u == Vector2i(0,1): # огонь
			pass
		if u == Vector2i(1,1): # дым
			pass
		if u == Vector2i(2,1): # яд
			pass
		if u == Vector2i(3,1): # болото
			pass
		if u == Vector2i(0,2): # земля
			pass
		if u == Vector2i(1,2): # глина
			pass
		if u == Vector2i(2,2): # песок
			pass
		if u == Vector2i(3,2): # магма
			pass
		if u == Vector2i(0,3): # лед
			pass
		if u == Vector2i(1,3): # кислота
			pass
		if u == Vector2i(2,3): # пламя
			pass
		if u == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if d == Vector2i(0,0): # пустота
			pass
		if d == Vector2i(1,0): # статичная клетка
			pass
		if d == Vector2i(2,0): # вода
			pass
		if d == Vector2i(3,0): # камень
			pass
		if d == Vector2i(0,1): # огонь
			pass
		if d == Vector2i(1,1): # дым
			pass
		if d == Vector2i(2,1): # яд
			pass
		if d == Vector2i(3,1): # болото
			pass
		if d == Vector2i(0,2): # земля
			pass
		if d == Vector2i(1,2): # глина
			pass
		if d == Vector2i(2,2): # песок
			pass
		if d == Vector2i(3,2): # магма
			pass
		if d == Vector2i(0,3): # лед
			pass
		if d == Vector2i(1,3): # кислота
			pass
		if d == Vector2i(2,3): # пламя
			pass
		if d == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if l == Vector2i(0,0): # пустота
			pass
		if l == Vector2i(1,0): # статичная клетка
			pass
		if l == Vector2i(2,0): # вода
			pass
		if l == Vector2i(3,0): # камень
			pass
		if l == Vector2i(0,1): # огонь
			pass
		if l == Vector2i(1,1): # дым
			pass
		if l == Vector2i(2,1): # яд
			pass
		if l == Vector2i(3,1): # болото
			pass
		if l == Vector2i(0,2): # земля
			pass
		if l == Vector2i(1,2): # глина
			pass
		if l == Vector2i(2,2): # песок
			pass
		if l == Vector2i(3,2): # магма
			pass
		if l == Vector2i(0,3): # лед
			pass
		if l == Vector2i(1,3): # кислота
			pass
		if l == Vector2i(2,3): # пламя
			pass
		if l == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
		if r == Vector2i(0,0): # пустота
			pass
		if r == Vector2i(1,0): # статичная клетка
			pass
		if r == Vector2i(2,0): # вода
			pass
		if r == Vector2i(3,0): # камень
			pass
		if r == Vector2i(0,1): # огонь
			pass
		if r == Vector2i(1,1): # дым
			pass
		if r == Vector2i(2,1): # яд
			pass
		if r == Vector2i(3,1): # болото
			pass
		if r == Vector2i(0,2): # земля
			pass
		if r == Vector2i(1,2): # глина
			pass
		if r == Vector2i(2,2): # песок
			pass
		if r == Vector2i(3,2): # магма
			pass
		if r == Vector2i(0,3): # лед
			pass
		if r == Vector2i(1,3): # кислота
			pass
		if r == Vector2i(2,3): # пламя
			pass
		if r == Vector2i(3,3): # синева
			pass
	# ---------------------------------------------------------------------
	# -------------------------------------------------------------------------
	return c
