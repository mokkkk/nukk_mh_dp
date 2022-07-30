execute positioned as @e[type=armor_stand,tag=ReusParts,tag=HeadU,distance=0..7] run tp @s ~ ~ ~ ~ 45

# 効果音等
playsound item.firecharge.use master @a ~ ~ ~ 3 0.5
particle flame ~ ~ ~ 0 0 0 0.1 10 force

# 攻撃
summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","A"]}

scoreboard players set @e[type=marker,tag=ReusChargeFAttack] AsaMatrix 30
execute at @s rotated ~ ~ as @e[type=marker,tag=ReusChargeFAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~ as @e[type=marker,tag=ReusChargeFAttack,tag=A,limit=1] run function asa_animator:reus/anim/hard_flying_flare/events/attack_tp
execute as @e[type=marker,tag=ReusChargeFAttack] at @s run function asa_animator:reus/anim/hard_flying_flare/events/damage