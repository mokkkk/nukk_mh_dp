execute positioned as @e[type=armor_stand,tag=KushalaParts,tag=HeadU,distance=0..7] run tp @s ~ ~ ~ ~ 90

# 効果音等
playsound entity.player.attack.sweep master @a ~ ~ ~ 3 0.5
execute at @s run particle cloud ~ ~ ~ 0 0 0 0.1 10 force

# 攻撃
summon marker ~ ~ ~ {Tags:["KushalaChargeFAttack","A"]}

scoreboard players set @e[type=marker,tag=KushalaChargeFAttack] AsaMatrix 30
execute at @s rotated ~ ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
execute at @s rotated ~ ~ as @e[type=marker,tag=KushalaChargeFAttack,tag=A,limit=1] run function asa_animator:kushala/anim/breath_v/events/attack_tp
execute as @e[type=marker,tag=KushalaChargeFAttack] at @s run function asa_animator:kushala/anim/breath_v/events/damage