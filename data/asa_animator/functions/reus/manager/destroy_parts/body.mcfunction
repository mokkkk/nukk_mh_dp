data modify entity @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] ArmorItems[3].tag.CustomModelData set value 10121
data modify entity @e[type=armor_stand,tag=ReusParts,tag=Body1,limit=1] ArmorItems[3].tag.CustomModelData set value 10122
tag @s add DestroyBody
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=ReusParts,tag=Body1,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=ReusParts,tag=Body0,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/reus_parts
scoreboard players set @s AsaMatrix 0

function asa_animator:reus/manager/remove_animation_tag
execute unless entity @s[tag=IsFlying] run tag @s add AnmDBody
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage

advancement grant @a[distance=0..64] only mh_dp:toasts/reus
schedule function asa_animator:reus/manager/destroy_parts/revoke 5t