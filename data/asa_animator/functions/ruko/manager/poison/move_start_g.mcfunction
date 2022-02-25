
execute if entity @e[type=marker,tag=NazutiPoisonMover] run scoreboard players set @e[type=marker,tag=NazutiPoisonMover] AsaMatrix 0
execute unless entity @e[type=marker,tag=NazutiPoisonMover] run summon marker ~ ~ ~ {Tags:["NazutiPoisonMover"]}
execute as @e[type=marker,tag=NazutiPoison,distance=0..40] at @s facing entity @e[type=armor_stand,tag=NazutiRoot] feet run tp @s ~ ~ ~ ~ 0
playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7