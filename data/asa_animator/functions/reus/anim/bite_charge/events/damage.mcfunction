# 6 Damage
 data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:2}
execute as @e[distance=0..6,type=!armor_stand,type=!marker,tag=!ReusParts] run function asa_animator:reus/anim/bite_charge/events/damage_sub
playsound entity.generic.explode master @a ~ ~ ~ 3 0.7
particle explosion_emitter ~ ~ ~ 0 0 0 0 1
particle lava ~ ~ ~ 0.6 0.6 0.6 0.5 15
particle flame ~ ~ ~ 0.6 0.6 0.6 0.05 15