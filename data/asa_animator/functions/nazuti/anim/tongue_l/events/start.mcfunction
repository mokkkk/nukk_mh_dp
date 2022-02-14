
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["NazutiTongue"]}

execute as @e[type=marker,tag=NazutiTongue] positioned as @e[type=armor_stand,tag=NazutiParts,tag=HeadU] positioned ^ ^1.2 ^1 run tp @s ~ ~ ~
execute as @e[type=marker,tag=NazutiTongue] at @s facing entity @e[tag=NazutiAttackTarget] feet run tp @s ~ ~ ~ ~ ~
data modify entity @e[type=marker,tag=NazutiTongue,limit=1] Rotation[0] set from entity @s Rotation[0]
scoreboard players set @e[type=marker,tag=NazutiTongue] AsaMatrix 14

execute as @e[type=marker,tag=NazutiTongue] at @s run function asa_animator:nazuti/anim/tongue_l/events/tongue

playsound entity.llama.spit master @a ~ ~ ~ 3 0.5
playsound entity.llama.spit master @a ~ ~ ~ 3 0.8
kill @e[tag=NazutiTongue]