extends Area2D


signal porta

func _on_clau_2_body_entered(body):
	if body.get_name() == "personatge":
		emit_signal ("porta")
		queue_free()




