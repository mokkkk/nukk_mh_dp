# 3 - 5 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:6.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:10.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:4,Knockback:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!MagaraParts,distance=0..3.5] run function asa_animator:magara/anim/breath_3/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType

playsound entity.generic.explode master @a ~ ~1 ~ 3 0.7
particle dust 0.325 0.239 0.4 50 ~ ~1 ~ 1.3 1.3 1.3 0 50
particle explosion ~ ~1 ~ 1 1 1 0 10
particle flash ~ ~1 ~ 0.5 0.5 0.5 0 10
particle squid_ink ~ ~1 ~ 1 1 1 0.4 30

# 設置
    function asa_animator:magara/manager/attack/place_virus

kill @s