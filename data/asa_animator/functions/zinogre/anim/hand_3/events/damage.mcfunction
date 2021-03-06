# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..3] run function asa_animator:zinogre/anim/hand_2/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.7
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
particle block grass ~ ~ ~ 0.5 0 0.5 0 20

execute if entity @s[scores={AsaMatrix=15}] positioned ^1.5 ^ ^1.5 run particle sneeze ~ ~2 ~ 0.1 3 0.1 0.05 40
execute if entity @s[scores={AsaMatrix=40}] positioned ^-1.5 ^ ^1.5 run particle sneeze ~ ~2 ~ 0.1 3 0.1 0.05 40
execute if entity @s[scores={AsaMatrix=65}] positioned ^1.5 ^ ^1.5 run particle sneeze ~ ~2 ~ 0.1 3 0.1 0.05 40