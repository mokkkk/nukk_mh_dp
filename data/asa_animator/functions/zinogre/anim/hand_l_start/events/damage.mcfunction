# 3.5 - 4.5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:7.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1}
execute if entity @s[tag=IsThunder] run data modify storage score_damage: Argument.BypassArmor set value 1b
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ZinogreParts,distance=0..3] run function asa_animator:zinogre/anim/hand_l_start/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.wither.break_block master @a ~ ~ ~ 2 0.6
particle block grass ~ ~0.5 ~ 0.5 0 0.5 0 20
particle explosion ~ ~0.5 ~ 1 0 1 0 3

execute if entity @s[tag=IsThunder] run playsound entity.lightning_bolt.thunder master @a ~ ~ ~ 2 0.5
execute if entity @s[tag=IsThunder] run playsound entity.lightning_bolt.impact master @a ~ ~ ~ 2 0.8
execute if entity @s[tag=IsThunder] run particle dust 1 1000000000 1000000000 5 ^ ^5 ^ 0.2 2 0.2 0 100
execute if entity @s[tag=IsThunder] run particle flash ^ ^1 ^ 2 2 2 0 10

# 命中カウント
    scoreboard players add #mhdp_zinogre_hand_count AsaMatrix 1