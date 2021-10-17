
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","ReusBreath","Start"]}

execute as @e[type=marker,tag=ReusBreath,tag=Start] at @s facing entity @e[type=marker,tag=ReusBreathTarget] feet run tp @s ~ ~ ~ ~ ~

tag @e[type=marker,tag=ReusBreath] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1
kill @e[tag=ReusBreathTarget]