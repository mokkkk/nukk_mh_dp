# 除外
execute if entity @s[type=slime,tag=MhdpKnockbackParts] run tag @s add MhdpDExcept
# hurttime取得
data modify storage mhdp: Temp.HT set from entity @s HurtTime
execute store result score #mhdp_hurt_time AsaMatrix run data get storage mhdp: Temp.HT
data remove storage mhdp: Temp.HT
# 攻撃
execute unless entity @s[tag=MhdpDExcept] if score #mhdp_hurt_time AsaMatrix matches ..0 run function score_damage_mhdp:api/attack
scoreboard players reset #mhdp_hurt_time
tag @s remove MhdpDExcept