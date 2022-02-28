# 4 Damage
data modify storage score_damage: Argument set value {Damage:8.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:4,Knockback:1b}
execute as @e[tag=MhdpDHit] run function asa_animator:ruko/anim/breath/events/damage_sub
data remove storage score_damage: Argument
data remove storage mhdp: DamageType
particle block grass_block ~ ~ ~ 0.5 0.5 0.5 1 30

kill @s