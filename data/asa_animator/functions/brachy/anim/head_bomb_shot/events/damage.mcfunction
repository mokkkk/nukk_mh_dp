# 4 - 6 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyParts,distance=..4] run function asa_animator:brachy/anim/head_bomb_shot/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

particle block grass_block ~ ~ ~ 1 0.1 1 0 30
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5
execute unless entity @s[tag=IsAnger] run function asa_animator:brachy/manager/bomb/large