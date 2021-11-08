scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ReusParts] run function #asa_matrix:animate_reset
tag @s remove AnmEndFly
tag @s remove IsFlying
execute if entity @s[tag=ChangeToVoice] run tag @s add AnmVoice
execute if entity @s[tag=ChangeToVoice] run tag @s remove ChangeToVoice