# 3 Damage
data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..3] run function asa_animator:zinogre/anim/shot/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound block.glass.break master @a ~ ~ ~ 1 2
kill @s