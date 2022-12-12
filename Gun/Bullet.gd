extends RigidBody


func _on_Lifetime_timeout():
	queue_free()


func _on_Bullet_body_entered(body):
	if body.has_method("hit"):
		body.hit(global_transform.origin)
		
		queue_free()
