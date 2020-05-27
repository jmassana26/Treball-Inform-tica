extends Area2D


signal porta_clau


func _on_clau_body_entered(body):
	if body.get_name() == "personatge":
		emit_signal ("porta_clau")
		queue_free()


func _on_Clau_blava_body_entered(body):
	pass # Replace with function body.
