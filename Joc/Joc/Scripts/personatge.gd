extends KinematicBody2D



var velocitat = Vector2.ZERO
var velocitat_maxima = 500

func _process(delta):
	var moviment = mou()
	anima (moviment)



func mou():
	velocitat = Vector2.ZERO
	if Input.is_action_pressed("dreta"):
		velocitat += Vector2.RIGHT
	if Input.is_action_pressed("esquerra"):
		velocitat += Vector2.LEFT
	if Input.is_action_pressed("abaix(davant)"):
		velocitat += Vector2.DOWN
	if Input.is_action_pressed("amunt(esquenes)"):
		velocitat += Vector2.UP
	velocitat = velocitat.normalized() * velocitat_maxima
	var moviment = move_and_slide(velocitat)
	return moviment 

func anima(moviment):
	if moviment.x > 0:
		$Animacions.flip_h = false
		$Animacions.play('caminar')
	if moviment.x < 0:
		$Animacions.flip_h = true
		$Animacions.play('caminar')
	if moviment.x == 0 :
		$Animacions.play('parat')
	if moviment.y > 0:
		$Animacions.flip_v = false
		$Animacions.play ('de cara')
	
	if moviment.y < 0:
		$Animacions.flip_v = false
		$Animacions.play (' esquenes')


