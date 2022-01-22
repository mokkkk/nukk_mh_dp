
# 攻撃用マーカー召喚
execute positioned ^-10 ^ ^3 run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start","IsTornado"]}
execute positioned ^-6 ^ ^2 run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start","IsTornado"]}
execute positioned ^-2 ^ ^1 run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start","IsTornado"]}
execute positioned ^2 ^ ^1 run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start","IsTornado"]}
execute positioned ^6 ^ ^2 run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start","IsTornado"]}
execute positioned ^10 ^ ^3 run summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start","IsTornado"]}

execute as @e[type=marker,tag=KushalaBreathT,tag=Start] at @s run function asa_animator:zinogre/manager/check_ground
execute as @e[type=marker,tag=KushalaBreathT,tag=Start] positioned as @s run tp @s ~ ~1 ~ ~ 0

tag @e[type=marker,tag=KushalaBreathT] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1