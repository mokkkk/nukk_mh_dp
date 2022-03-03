
# execute positioned as @e[type=armor_stand,tag=RukoParts,tag=HeadU,distance=0..7] rotated as @s run tp @s ~ ~ ~ ~ ~

# 攻撃
playsound block.beacon.deactivate master @a ~ ~ ~ 2 2
summon marker ~ ~ ~ {Tags:["RukoBreathAttack","A"]}

scoreboard players set @e[type=marker,tag=RukoBreathAttack] AsaMatrix 30
execute as @e[type=marker,tag=RukoBreathAttack,tag=A,limit=1] run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=RukoBreathAttack,tag=A,limit=1] run function asa_animator:ruko/anim/breath/events/attack_tp
execute if entity @e[tag=MhdpDHit] as @e[type=marker,tag=RukoBreathAttack] at @s run function asa_animator:ruko/anim/breath_large/events/damage
tag @e[tag=MhdpDHit] remove MhdpDHit