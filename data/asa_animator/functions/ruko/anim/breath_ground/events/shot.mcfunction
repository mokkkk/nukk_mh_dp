
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","RukoBreathB","Start","IsBomb"]}
execute as @e[type=marker,tag=RukoBreathB,tag=Start] at @s run function asa_animator:zinogre/manager/check_ground
tag @e[type=marker,tag=RukoBreathB] remove Start