
execute unless entity @e[type=marker,tag=NazutiPoisonMover] run summon marker ~ ~ ~ {Tags:["NazutiPoisonMover"]}
execute as @e[type=marker,tag=NazutiPoison,distance=0..40] at @s facing entity @e[type=armor_stand,tag=NazutiRoot] feet run tp @s ~ ~ ~ ~180 0
playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7