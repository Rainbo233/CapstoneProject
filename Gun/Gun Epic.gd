extends XRToolsPickable

export (PackedScene) var bullet 
export var initial_bullet_speed = 10.0


var can_shoot = true

func action():
	if can_shoot and bullet:
		# shoot
		var new_bullet = bullet.instance()
		get_node("/root/Staging/Scene/Main/Spawns").add_child(new_bullet)
		new_bullet.global_transform =  $Pivot/Muzzle.global_transform
		new_bullet.linear_velocity = -new_bullet.global_transform.basis.z * initial_bullet_speed
		
		#start cooldown 
		can_shoot = false 
		$Cooldown.start()


func _on_Cooldown_timeout():
	can_shoot = true
	
