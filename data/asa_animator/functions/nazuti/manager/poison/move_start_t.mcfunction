
execute if entity @e[type=marker,tag=NazutiPoisonMover] run scoreboard players set @e[type=marker,tag=NazutiPoisonMover] AsaMatrix 0
execute unless entity @e[type=marker,tag=NazutiPoisonMover] run summon marker ~ ~ ~ {Tags:["NazutiPoisonMover"]}

execute as @e[tag=NazutiAttackTarget,sort=nearest,limit=1] at @s at @e[type=marker,tag=NazutiPoison,sort=nearest,limit=1] facing entity @s feet as @e[type=marker,tag=NazutiPoison,sort=nearest] positioned as @s run tp @s ~ ~ ~ ~ 0

playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7