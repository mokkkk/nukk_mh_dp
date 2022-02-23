
# 召喚
summon armor_stand ~ ~2 ~ {Invisible:1b,Invulnerable:1b,OnGround:0b,Tags:["MonsterShot","NazutiBreathU","Start"]}

# Motion代入
execute positioned 0 0 0 align xyz positioned ^ ^ ^1 run summon marker ~ ~ ~ {Tags:["MhdpForMotion"]}
data modify storage mhdp: Temp.Pos set from entity @e[type=marker,tag=MhdpForMotion,limit=1] Pos
data modify entity @e[type=armor_stand,tag=NazutiBreathU,tag=Start,limit=1] Motion set from storage mhdp: Temp.Pos
data remove storage mhdp: Temp.Pos

playsound entity.player.burp master @a ~ ~ ~ 3 0.5
playsound entity.player.burp master @a ~ ~ ~ 3 1.2
playsound block.dispenser.launch master @a ~ ~ ~ 3 0.5

# 終了
tag @e[type=armor_stand,tag=NazutiBreathU,tag=Start] remove Start
kill @e[type=marker,tag=MhdpForMotion]