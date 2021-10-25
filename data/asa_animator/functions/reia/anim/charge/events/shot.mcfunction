
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["ReiaCharge"]}

execute as @e[type=marker,tag=ReiaCharge] positioned as @s run tp @s ~ ~ ~ ~ ~
scoreboard players set @e[type=marker,tag=ReiaCharge] AsaMatrix 25
execute as @e[type=marker,tag=ReiaCharge] at @s run function asa_animator:reia/anim/charge/events/attack_tp
execute as @e[type=marker,tag=ReiaCharge] at @s run tp @s ~ ~ ~ ~ 0

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1

kill @e[tag=ReiaBreathTarget]