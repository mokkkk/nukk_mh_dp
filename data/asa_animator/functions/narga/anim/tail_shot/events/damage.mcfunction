# 2 - 3 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!NargaParts,distance=0..1.8] run function asa_animator:narga/anim/tail_shot/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound item.trident.hit master @a ~ ~ ~ 1 0.7
particle block obsidian ~ ~ ~ 0 0 0 0 10
kill @s