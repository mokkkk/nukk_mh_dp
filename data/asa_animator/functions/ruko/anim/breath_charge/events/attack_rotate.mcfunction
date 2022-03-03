execute positioned as @e[type=armor_stand,tag=RukoParts,tag=HeadU,distance=0..7] run tp @s ~ ~1.4 ~

# 攻撃
playsound block.beacon.deactivate master @a ~ ~ ~ 2 2
summon marker ~ ~ ~ {Tags:["RukoChargeFAttack","A"]}
summon marker ~ ~ ~ {Tags:["RukoChargeFAttack","B"]}
summon marker ~ ~ ~ {Tags:["RukoChargeFAttack","C"]}
summon marker ~ ~ ~ {Tags:["RukoChargeFAttack","D"]}
scoreboard players set @e[type=marker,tag=RukoChargeFAttack] AsaMatrix 30
execute at @s rotated ~ ~ as @e[type=marker,tag=RukoChargeFAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-3 as @e[type=marker,tag=RukoChargeFAttack,tag=B,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-6 as @e[type=marker,tag=RukoChargeFAttack,tag=C,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-9 as @e[type=marker,tag=RukoChargeFAttack,tag=D,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~ as @e[type=marker,tag=RukoChargeFAttack,tag=A,limit=1] run function asa_animator:ruko/anim/breath_charge/events/attack_tp
execute at @s rotated ~ ~-3 as @e[type=marker,tag=RukoChargeFAttack,tag=B,limit=1] run function asa_animator:ruko/anim/breath_charge/events/attack_tp
execute at @s rotated ~ ~-6 as @e[type=marker,tag=RukoChargeFAttack,tag=C,limit=1] run function asa_animator:ruko/anim/breath_charge/events/attack_tp
execute at @s rotated ~ ~-9 as @e[type=marker,tag=RukoChargeFAttack,tag=D,limit=1] run function asa_animator:ruko/anim/breath_charge/events/attack_tp
execute as @e[type=marker,tag=RukoChargeFAttack] at @s run function asa_animator:ruko/anim/breath_charge/events/damage

# 回転
tp @s ~ ~ ~ ~ ~-12