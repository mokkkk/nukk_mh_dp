# 効果音等
playsound entity.ghast.shoot master @a ~ ~ ~ 5 1
particle flame ~ ~ ~ 0 0 0 0.1 10 force

# 攻撃
summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","A"]}
summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","B"]}
summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","C"]}
summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","D"]}
summon marker ~ ~ ~ {Tags:["ReusChargeFAttack","E"]}
scoreboard players set @e[type=marker,tag=ReusChargeFAttack] AsaMatrix 30
execute at @s rotated ~ ~ as @e[type=marker,tag=ReusChargeFAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-3 as @e[type=marker,tag=ReusChargeFAttack,tag=B,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-6 as @e[type=marker,tag=ReusChargeFAttack,tag=C,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-12 as @e[type=marker,tag=ReusChargeFAttack,tag=D,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-18 as @e[type=marker,tag=ReusChargeFAttack,tag=E,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~ as @e[type=marker,tag=ReusChargeFAttack,tag=A,limit=1] run function asa_animator:reus/normal/flying_charge/effect/attack_tp
execute at @s rotated ~ ~-3 as @e[type=marker,tag=ReusChargeFAttack,tag=B,limit=1] run function asa_animator:reus/normal/flying_charge/effect/attack_tp
execute at @s rotated ~ ~-6 as @e[type=marker,tag=ReusChargeFAttack,tag=C,limit=1] run function asa_animator:reus/normal/flying_charge/effect/attack_tp
execute at @s rotated ~ ~-12 as @e[type=marker,tag=ReusChargeFAttack,tag=D,limit=1] run function asa_animator:reus/normal/flying_charge/effect/attack_tp
execute at @s rotated ~ ~-18 as @e[type=marker,tag=ReusChargeFAttack,tag=E,limit=1] run function asa_animator:reus/normal/flying_charge/effect/attack_tp
execute as @e[type=marker,tag=ReusChargeFAttack] at @s run function asa_animator:reus/normal/flying_charge/effect/damage

# 回転
tp @s ~ ~ ~ ~ ~-24