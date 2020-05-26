extends Area2D

var clau = false 



func _on_clau_blava_body_entered(body):
	if body.get_name() == "personatge" :
		emit_signal ("porta")
		queue_free()
