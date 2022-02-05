
# 演出
    playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
    particle flame ~ ~2 ~ 1 1 1 0.5 50
# 矢弾き
    execute if entity @e[type=arrow,distance=0..15] as @e[type=arrow,distance=0..15] at @s facing entity @e[type=armor_stand,tag=TeoRoot,limit=1] eyes run function asa_animator:teo/manager/particle/reflect_
# 炎やられ蓄積
    execute if entity @a[distance=..8] as @a[tag=!BlightFire,distance=..8] run scoreboard players add @s MhdpBlightFire 200