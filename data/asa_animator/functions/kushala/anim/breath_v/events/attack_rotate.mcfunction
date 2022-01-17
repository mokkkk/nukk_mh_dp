execute positioned as @e[type=armor_stand,tag=KushalaParts,tag=HeadU,distance=0..7] run tp @s ~ ~ ~

# 効果音等
playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.5
particle cloud ~ ~ ~ 0 0 0 0.1 10 force

# 攻撃
summon marker ~ ~ ~ {Tags:["KushalaChargeFAttack","A"]}
summon marker ~ ~ ~ {Tags:["KushalaChargeFAttack","B"]}
summon marker ~ ~ ~ {Tags:["KushalaChargeFAttack","C"]}
summon marker ~ ~ ~ {Tags:["KushalaChargeFAttack","D"]}
summon marker ~ ~ ~ {Tags:["KushalaChargeFAttack","E"]}
scoreboard players set @e[type=marker,tag=KushalaChargeFAttack] AsaMatrix 30
execute at @s rotated ~ ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-2.5 as @e[type=marker,tag=KushalaChargeFAttack,tag=B,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-5 as @e[type=marker,tag=KushalaChargeFAttack,tag=C,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-7.5 as @e[type=marker,tag=KushalaChargeFAttack,tag=D,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~-10 as @e[type=marker,tag=KushalaChargeFAttack,tag=E,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=A,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~ ~-2.5 as @e[type=marker,tag=KushalaChargeFAttack,tag=B,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~ ~-5 as @e[type=marker,tag=KushalaChargeFAttack,tag=C,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~ ~-7.5 as @e[type=marker,tag=KushalaChargeFAttack,tag=D,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~ ~-10 as @e[type=marker,tag=KushalaChargeFAttack,tag=E,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute as @e[type=marker,tag=KushalaChargeFAttack] at @s run function asa_animator:kushala/anim/breath_v/events/damage


# 回転
tp @s ~ ~ ~ ~ ~-12