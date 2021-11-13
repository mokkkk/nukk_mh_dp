data modify entity @e[type=armor_stand,tag=ReiaParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10156
tag @s add DestroyHead
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadU,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=ReiaParts,tag=HeadU,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/reia_parts
scoreboard players set @s AsaMatrix 0

execute if entity @s[tag=AnmSault] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyStay] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyCharge] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyTackle] run tag @s add IsFlying
execute if entity @s[tag=AnmBjbLand] run tag @s add IsFlying
function asa_animator:reia/manager/remove_animation_tag
execute unless entity @s[tag=IsFlying] run tag @s add AnmDHead
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
tag @s remove IsFlying