# 1 - 2 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:2.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:4.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:0b}
execute unless entity @s[tag=DestroyHead] as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3] run function asa_animator:diablos/anim/horn/events/damage_sub_0
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound item.trident.hit master @a ~ ~ ~ 3 0.5
playsound entity.hoglin.step master @a ~ ~ ~ 3 0.5