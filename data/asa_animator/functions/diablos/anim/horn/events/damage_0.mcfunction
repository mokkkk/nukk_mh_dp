# 1 Damage
 data modify storage score_damage: Argument set value {Damage:2.0f, BypassArmor:0b}
data merge storage mhdp: {Epf:1}
execute unless entity @s[tag=DestroyHead] as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!DiablosParts,distance=0..3] run function asa_animator:diablos/anim/horn/events/damage_sub_0
playsound item.trident.hit master @a ~ ~ ~ 3 0.5
playsound entity.hoglin.step master @a ~ ~ ~ 3 0.5