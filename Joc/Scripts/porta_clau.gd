extends Area2D

var clau = false

func _on_porta_clau_body_entered(body):
	if body.get_name() == "personatge"and clau == true:
		queue_free()
		#quan hi hagi una altre sala la porta la portarà a la seguent sala de moment només l 'agafa'
	




func _on_clau_porta_clau():
	clau = true 
