extends RichTextLabel

var ms = 0
var s = 0
var m = 0


func _on_ms_timeout():
	if ms > 59:
		s += 1
		ms = 0
		
	if s > 59:
		m += 1
		s = 0
	set_text('%d:%d:%d' % [m,s,ms])
	#set_text(str(m)+":"+str(s)+":"+str(ms))
	ms += 1
	pass # Replace with function body.
