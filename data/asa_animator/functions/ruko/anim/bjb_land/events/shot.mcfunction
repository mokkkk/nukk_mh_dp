
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","RukoBreathB","Start"]}

execute as @e[type=marker,tag=RukoBreathB,tag=Start] run tp @s ~ ~ ~ ~ 60

tag @e[type=marker,tag=RukoBreathB] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1