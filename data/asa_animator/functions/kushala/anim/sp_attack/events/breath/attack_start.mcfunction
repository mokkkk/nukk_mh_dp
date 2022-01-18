# 攻撃用marker
summon marker ~ ~ ~ {Tags:["KushalaChargeFPos"]}
execute as @e[type=marker,tag=KushalaChargeFPos,distance=0..5] run tp @s ~ ~ ~ ~ -12
playsound item.firecharge.use master @a ~ ~ ~ 3 0.5