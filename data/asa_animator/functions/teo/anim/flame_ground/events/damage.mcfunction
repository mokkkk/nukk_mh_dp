# 3.5 Damage
data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:2,Knockback:0b}
function asa_animator:teo/anim/flame_ground/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType