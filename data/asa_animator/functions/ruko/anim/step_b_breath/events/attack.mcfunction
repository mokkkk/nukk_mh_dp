
# 攻撃
playsound block.beacon.deactivate master @a ~ ~ ~ 2 2
summon marker ~ ~ ~ {Tags:["RukoBreathAttack","A"]}
execute as @e[type=marker,tag=RukoBreathAttack,tag=A,limit=1] positioned as @e[type=armor_stand,tag=RukoParts,tag=HeadU,distance=0..7] positioned ^ ^1.4 ^0.5 facing entity @e[type=marker,tag=RukoBreathTarget] eyes run tp @s ~ ~ ~ ~ ~-5

scoreboard players set @e[type=marker,tag=RukoBreathAttack] AsaMatrix 40
execute as @e[type=marker,tag=RukoBreathAttack,tag=A,limit=1] at @s run function asa_animator:ruko/anim/breath/events/attack_tp
execute as @e[type=marker,tag=RukoBreathAttack] at @s run function asa_animator:ruko/anim/breath/events/damage
tag @e[tag=MhdpDHit] remove MhdpDHit
kill @e[type=marker,tag=RukoBreathTarget]