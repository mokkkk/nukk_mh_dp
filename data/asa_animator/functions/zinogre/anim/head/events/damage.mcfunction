# 3 Damage
data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute positioned ^ ^1 ^5 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..2.5] run function asa_animator:zinogre/anim/head/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.8