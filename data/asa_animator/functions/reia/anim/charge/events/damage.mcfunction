# 4.5 Damage
 data modify storage score_damage: Argument set value {Damage:9.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!ReiaParts,distance=0..4] run function asa_animator:reia/anim/charge/events/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 1 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~ ~ 0 0 0 0 15
particle large_smoke ~ ~ ~ 0 0 0 0.2 20