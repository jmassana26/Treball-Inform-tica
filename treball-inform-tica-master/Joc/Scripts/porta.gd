extends Area2D

var clau = false

func _on_porta_clau_body_entered(body):
	if body.get_name() == "personatge" and clau == true:
		get_tree().change_scene("res://Escenes/Sala 1.tscn")

func _on_clau_porta():
	clau = true 


func _on_clau_2_porta():
	clau = false
