
# 攻撃用マーカー召喚
summon marker ^ ^ ^12 {Tags:["NargaShotTarget"]}
execute unless entity @e[distance=0..6,tag=NargaAttackTarget] as @e[distance=0..13,type=marker,tag=NargaShotTarget] positioned as @e[tag=NargaAttackTarget] run tp @s ~ ~ ~