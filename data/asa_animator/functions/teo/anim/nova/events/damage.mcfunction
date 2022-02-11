# 9 Damage
data modify storage score_damage: Argument set value {Damage:18.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:3,Knockback:0b}
execute as @a[distance=0..9] run function mh_dp:player/knockback/start_dwind
execute as @e[type=!armor_stand,type=!area_effect_cloud,type=!marker,tag=!TeoParts,distance=..9] run function asa_animator:teo/anim/nova/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
playsound entity.generic.explode master @a ~ ~ ~ 3 0.9
playsound entity.generic.explode master @a ~ ~ ~ 3 0.7
playsound entity.generic.explode master @a ~ ~ ~ 3 0.5

# [ImportKey]: NobwRALgngDgpmAXGAxgSwE4oDYIDRgCuhaAJkqgBwDMADKQGYoBMAtJQCzUBGrHAhpRSsAnHFr9W1FNwBsghgxEdOYAgDt+AWwTJAYYoACAIxqwMfhm0BnJOBQB7QuohIArARRxncDLbAA3fmxCXXAADyRaAihIgF9YgktSNEIbRGoCKwgLF0QOWQI4bGw0GCtdI1oosAx7bIhdarQrAFFi0vKWgEdCIOwoAGVzT3JEBiDy+IBdIA_3
# 円 1
particle explosion_emitter ^ ^2 ^ 0 0 0 0 1
particle explosion_emitter ^ ^-2 ^ 0 0 0 0 1
particle explosion_emitter ^2.15802 ^ ^-2.08398 0 0 0 0 1
particle explosion_emitter ^2.64884 ^ ^1.40841 0 0 0 0 1
particle explosion_emitter ^-0.52094 ^ ^2.95442 0 0 0 0 1
particle explosion_emitter ^-2.9708 ^ ^0.41752 0 0 0 0 1
particle explosion_emitter ^-1.31511 ^ ^-2.69638 0 0 0 0 1

particle lava ~ ~ ~ 1 1 1 0.2 15
particle large_smoke ~ ~ ~ 1 1 1 0.2 30

kill @s