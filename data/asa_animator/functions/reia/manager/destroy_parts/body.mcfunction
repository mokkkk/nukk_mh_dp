data modify entity @e[type=armor_stand,tag=ReiaParts,tag=Body1,limit=1] ArmorItems[3].tag.CustomModelData set value 10158
tag @s add DestroyBody
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body0,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body1,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=ReiaParts,tag=Body0,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/reia_parts
scoreboard players set @s AsaMatrix 0

execute if entity @s[tag=AnmSault] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyStay] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyCharge] run tag @s add IsFlying
execute if entity @s[tag=AnmFlyTackle] run tag @s add IsFlying
execute if entity @s[tag=AnmBjbLand] run tag @s add IsFlying
function asa_animator:reia/manager/remove_animation_tag
execute unless entity @s[tag=IsFlying] run tag @s add AnmDBody
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
tag @s remove IsFlying

advancement grant @a[distance=0..64] only mh_dp:toasts/reia
schedule function asa_animator:reia/manager/destroy_parts/revoke 5t