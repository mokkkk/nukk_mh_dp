# 6 - 8 Damage
execute if data storage mh_dp:settings Custom{QuestRank:0} run data modify storage score_damage: Argument set value {Damage:12.0f, BypassArmor:0b}
execute if data storage mh_dp:settings Custom{QuestRank:1} run data modify storage score_damage: Argument set value {Damage:16.0f, BypassArmor:0b}
data modify storage mhdp: DamageType set value {Epf:1,Knockback:1b}
execute positioned ^ ^ ^4 run function asa_animator:narga/anim/tail_bitan/events/damage
execute positioned ^ ^ ^5.5 run function asa_animator:narga/anim/tail_bitan/events/damage
execute positioned ^ ^ ^7 run function asa_animator:narga/anim/tail_bitan/events/damage
execute positioned ^ ^ ^8.5 run function asa_animator:narga/anim/tail_bitan/events/damage
execute positioned ^ ^ ^10 run function asa_animator:narga/anim/tail_bitan/events/damage

execute as @e[tag=MhdpDHit,distance=0..16] run function asa_animator:narga/anim/tail_bitan/events/damage_sub
tag @e[tag=MhdpDHit,distance=0..16] remove MhdpDHit

data remove storage score_damage: Argument
data remove storage mhdp: DamageType