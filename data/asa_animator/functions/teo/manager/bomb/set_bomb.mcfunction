playsound item.firecharge.use master @a ~ ~ ~ 2 1
summon marker ~ ~0.5 ~ {Tags:["MonsterShot","TeoBomb"]}
execute as @e[type=marker,tag=TeoBomb,sort=nearest,limit=1] at @s run function asa_animator:zinogre/manager/check_ground