summon marker ~ ~ ~ {Tags:["ReusChargeAttack"]}
scoreboard players set @e[type=marker,tag=ReusChargeAttack] AsaMatrix 30
execute at @s rotated ~ ~ as @e[type=marker,tag=ReusChargeAttack,limit=1] facing entity @e[type=marker,tag=ReusChargeTarget,limit=1] feet run tp @s ~ ~ ~ ~ ~
execute as @e[type=marker,tag=ReusChargeAttack,limit=1] at @s run function asa_animator:reus/charge/effect/particle_tp
playsound entity.ghast.shoot master @a ~ ~ ~ 3 1