# 3 - 5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute positioned ^ ^ ^5 as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TigaParts,distance=..4] run function asa_animator:tiga/anim/hand_l/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

execute positioned ^ ^ ^5 run particle block grass_block ~ ~0.1 ~ 0.5 0.1 0.5 0 3
playsound block.grass.step master @a ~ ~ ~ 2 0.7