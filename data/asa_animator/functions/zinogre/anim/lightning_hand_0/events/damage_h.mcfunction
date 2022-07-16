# 6 - 8 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:1b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:1b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:3}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=..6.0] run function asa_animator:zinogre/anim/lightning_hand_0/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
particle block grass ~ ~0.5 ~ 2 0 2 0 20
particle explosion ~ ~1 ~ 3 0 3 0 40
playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.8
particle dust 1 1000000000 1000000000 5 ^ ^5 ^ 0.5 2 0.5 0 100
execute positioned ^ ^0.5 ^-4 run function asa_animator:zinogre/anim/jump/events/particle
particle dust 1 1000000000 1000000000 5 ^ ^5 ^-4.2 2 2 2 0 50
particle flash ^ ^5 ^-4.2 2 2 2 0 30
particle sneeze ^ ^5 ^-4.2 1 1 1 1 150
particle end_rod ^ ^5 ^ 3 3 3 0.5 70
execute positioned ^ ^0.2 ^ run function asa_animator:zinogre/anim/chargehand_l/events/particle_h
execute positioned ^ ^0.4 ^ rotated ~45 ~ run function asa_animator:zinogre/anim/chargehand_l/events/particle_h