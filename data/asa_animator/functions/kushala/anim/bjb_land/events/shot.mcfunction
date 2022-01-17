
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathT","Start"]}

execute as @e[type=marker,tag=KushalaBreathT,tag=Start] run tp @s ~ ~ ~ ~ 70

tag @e[type=marker,tag=KushalaBreathT] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1