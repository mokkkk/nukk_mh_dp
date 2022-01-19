

playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
particle large_smoke ~ ~2 ~ 1 1 1 0.5 50
execute if entity @e[type=arrow,tag=!MhdpReflected,distance=0..18] as @e[type=arrow,tag=!MhdpReflected,distance=0..18] at @s facing entity @e[type=armor_stand,tag=KushalaRoot,limit=1] eyes run function asa_animator:kushala/manager/particle/reflect_