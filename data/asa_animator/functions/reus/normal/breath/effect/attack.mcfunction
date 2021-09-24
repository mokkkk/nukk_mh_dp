# 効果音等
playsound entity.ghast.shoot master @a ~ ~ ~ 2 1
particle flame ~ ~ ~ 0 0 0 0.1 10 force

# 火の玉召喚
summon fireball ~ ~ ~ {ExplosionPower:2b,power:[0.0,1.0,0.0],Tags:["ReusBreath","Start"]}

# Motion代入
execute positioned 0 0 0 align xyz positioned ^ ^ ^0.2 run summon marker ~ ~ ~ {Tags:["MhdpForMotion"]}
data modify storage mhdp: Temp set from entity @e[type=marker,tag=MhdpForMotion,limit=1] Pos
data modify entity @e[type=fireball,tag=ReusBreath,tag=Start,limit=1] power set from storage mhdp: Temp
data remove storage mhdp: Temp

# 終了
tag @e[type=fireball,tag=ReusBreath,tag=Start] remove Start
kill @e[type=marker,tag=ReusBreathTarget]
kill @e[type=marker,tag=MhdpForMotion]