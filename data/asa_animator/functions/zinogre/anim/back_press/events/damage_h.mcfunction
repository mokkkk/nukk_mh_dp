# 7..8.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:14.0f, BypassArmor:1b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:17.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..6.7] run function asa_animator:zinogre/anim/back_press/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~ ~ 3 0.5
playsound entity.generic.explode master @a ~ ~ ~ 3 0.7
particle block grass ~ ~0.5 ~ 2 0 2 0 20
particle explosion ~ ~0.5 ~ 2 0 2 0 10
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.8

particle dust 1 1000000000 1000000000 10 ^ ^5 ^ 2 10 2 0 200
particle flash ^ ^3 ^ 2 2 2 0 30
particle sneeze ^ ^3 ^ 1 1 1 1 150
particle end_rod ^ ^3 ^ 2 2 2 0.5 100
particle explosion ^ ^1 ^ 2 0.5 2 0 30
summon lightning_bolt ~ 256 ~