scoreboard players set @s AsaMatrix 0
execute if entity @s[tag=IsFlying] run data merge entity @s {Tags:["MonsterRoot","ReusRoot","AnmEndFly","StartAnger"]}
execute if entity @s[tag=!AnmEndFly] run data merge entity @s {Tags:["MonsterRoot","ReusRoot","AnmAnger","StartAnger"]}
scoreboard players set #mhdp_reus_angercount AsaMatrix 18