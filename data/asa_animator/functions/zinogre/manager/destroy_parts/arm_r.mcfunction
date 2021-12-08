execute unless entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10303
execute unless entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10304
execute if entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10305
execute if entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10306

tag @s add DestroyArmR
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/zinogre_parts
scoreboard players set @s AsaMatrix 0

function asa_animator:zinogre/manager/remove_animation_tag
tag @s add AnmDArm

execute as @a[distance=0..64] run advancement grant @s only mh_dp:toasts/zinogre
schedule function asa_animator:zinogre/manager/destroy_parts/revoke 5t