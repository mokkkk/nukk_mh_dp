
execute if entity @e[type=marker,tag=MhdpKnockbackPos] run tp @e[type=marker,tag=MhdpKnockbackPos] ~ ~ ~
execute unless entity @e[type=marker,tag=MhdpKnockbackPos] run summon marker ~ ~ ~ {Tags:["MhdpKnockbackPos"]}
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:6,Age:4,Effects:[{Id:25b,Amplifier:20b,Duration:4,ShowParticles:0b}]}
tag @s add MdhpKnockback
scoreboard players set @s MhdpTKnockback 3