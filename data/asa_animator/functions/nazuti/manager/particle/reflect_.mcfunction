

playsound item.shield.block master @a ~ ~ ~ 2 1
tag @s add MhdpReflected

# Motion代入
execute positioned 0 0 0 align xyz positioned ^ ^ ^-1 run summon marker ~ ~ ~ {Tags:["MhdpForMotion"]}
data modify storage mhdp: Temp set from entity @e[type=marker,tag=MhdpForMotion,limit=1] Pos
data modify entity @s Motion set from storage mhdp: Temp
data remove storage mhdp: Temp
kill @e[type=marker,tag=MhdpForMotion]