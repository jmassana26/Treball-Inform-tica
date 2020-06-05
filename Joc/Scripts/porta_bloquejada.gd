extends StaticBody2D

var clau1 = false 


var sala1
func _on_clau_blava_body_entered(body):
	if body.get_name() == "personatge" and clau1 == true:
		pass
		
		
  


func _on_clau_blava_porta_bloquejada():
	clau1 = true



