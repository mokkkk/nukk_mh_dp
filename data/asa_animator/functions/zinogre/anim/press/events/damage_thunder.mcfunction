# 4 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:1b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!marker,tag=!ZinogreParts,distance=0..4] run function asa_animator:zinogre/anim/press/events/damage_sub
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.7
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
particle sneeze ^ ^1 ^ 1 0.5 1 0.1 50