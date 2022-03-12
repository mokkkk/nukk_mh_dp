
# 攻撃用マーカー召喚
summon marker ~ ~ ~ {Tags:["MonsterShot","KushalaBreathU","Start"]}

execute as @e[type=marker,tag=KushalaBreathU,tag=Start] run tp @s ~ ~ ~ ~ -70

tag @e[type=marker,tag=KushalaBreathU] remove Start

playsound entity.ghast.shoot master @a ~ ~ ~ 3 1