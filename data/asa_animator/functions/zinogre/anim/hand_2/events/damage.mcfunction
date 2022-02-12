# 4 Damage
data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..3] run function asa_animator:zinogre/anim/hand_2/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
particle block grass ~ ~ ~ 0.5 0 0.5 0 20

execute if entity @s[scores={AsaMatrix=15}] as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2] at @s run particle explosion ~ ~1.4 ~ 0.4 0.4 0.4 0 5
execute if entity @s[scores={AsaMatrix=40}] as @e[type=armor_stand,tag=ZinogreParts,tag=ArmL2] at @s run particle explosion ~ ~1.4 ~ 0.4 0.4 0.4 0 5