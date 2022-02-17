# 5 Damage
data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute as @e[tag=MhdpDHit] run function asa_animator:nazuti/anim/breath_jump/events/damage_sub
tag @e[tag=MhdpDHit] remove MhdpDHit
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
