execute positioned as @e[type=armor_stand,tag=RukoParts,tag=HeadU,distance=0..7] run tp @s ~ ~1.4 ~

# 攻撃
playsound block.beacon.deactivate master @a ~ ~ ~ 2 2
summon marker ~ ~ ~ {Tags:["RukoChargeFAttack","A"]}
summon marker ~ ~ ~ {Tags:["RukoChargeFAttack","B"]}
summon marker ~ ~ ~ {Tags:["RukoChargeFAttack","C"]}
scoreboard players set @e[type=marker,tag=RukoChargeFAttack] AsaMatrix 30
execute at @s rotated ~ ~ as @e[type=marker,tag=RukoChargeFAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-2.5 as @e[type=marker,tag=RukoChargeFAttack,tag=B,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-5 as @e[type=marker,tag=RukoChargeFAttack,tag=C,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~ as @e[type=marker,tag=RukoChargeFAttack,tag=A,limit=1] run function asa_animator:ruko/anim/breath/events/attack_tp
execute at @s rotated ~ ~-2.5 as @e[type=marker,tag=RukoChargeFAttack,tag=B,limit=1] run function asa_animator:ruko/anim/breath/events/attack_tp
execute at @s rotated ~ ~-5 as @e[type=marker,tag=RukoChargeFAttack,tag=C,limit=1] run function asa_animator:ruko/anim/breath/events/attack_tp
execute as @e[type=marker,tag=RukoChargeFAttack] at @s run function asa_animator:ruko/anim/breath/events/damage
tag @e[tag=MhdpDHit] remove MhdpDHit

# 回転
tp @s ~ ~ ~ ~ ~-10