# 4 Damage
 data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!BrachyRParts,distance=..4] run function asa_animator:brachyr/anim/upper_2/events/damage_sub
particle block grass_block ~ ~ ~ 1 0.1 1 0 30
playsound entity.hoglin.step master @a ~ ~ ~ 2 0.5