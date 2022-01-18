
summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start","L","IsTornado"]}
summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start","R","IsTornado"]}

execute as @e[type=marker,tag=KushalaBreathT,tag=Start,tag=L] run tp @s ~ ~ ~ ~-30 0
execute as @e[type=marker,tag=KushalaBreathT,tag=Start,tag=R] run tp @s ~ ~ ~ ~30 0

tag @e[type=marker,tag=KushalaBreathT] remove Start