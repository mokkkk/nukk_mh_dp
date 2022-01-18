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
summon marker ~ ~ ~ {Tags:["KushalaChargeFAttack","F"]}
scoreboard players set @e[type=marker,tag=KushalaChargeFAttack] AsaMatrix 30
execute at @s rotated ~ ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~-4 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=B,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~-8 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=C,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~-12 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=D,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~-16 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=E,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~-20 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=F,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=A,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~-4 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=B,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~-8 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=C,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~-12 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=D,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~-16 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=E,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute at @s rotated ~-20 ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=F,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute as @e[type=marker,tag=KushalaChargeFAttack] at @s run function asa_animator:kushala/anim/breath_v/events/damage

# 回転
execute at @s run tp @s ~ ~ ~ ~-24 ~-0.5