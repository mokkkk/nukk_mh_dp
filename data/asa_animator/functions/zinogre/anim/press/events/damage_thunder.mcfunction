# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..4] run function asa_animator:zinogre/anim/press/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.7
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
particle sneeze ^ ^1 ^ 1 0.5 1 0.1 50