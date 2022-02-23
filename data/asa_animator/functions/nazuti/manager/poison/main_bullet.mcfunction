

particle dust 0.643 0.322 0.706 4 ~ ~1 ~ 1 1 1 0 3 force

execute if entity @a[distance=0..2.6] run effect give @e[distance=0..3] poison 7 0

scoreboard players add @s AsaMatrix 1
execute if entity @s[tag=!NazutiSpPoison,scores={AsaMatrix=300..}] run kill @s
execute if entity @s[tag=NazutiSpPoison,scores={AsaMatrix=150..}] run kill @s
