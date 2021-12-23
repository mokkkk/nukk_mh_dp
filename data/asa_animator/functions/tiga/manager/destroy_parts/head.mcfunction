execute unless entity @s[tag=IsAnger] run data modify entity @e[type=armor_stand,tag=TigaParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10335
execute if entity @s[tag=IsAnger] run data modify entity @e[type=armor_stand,tag=TigaParts,tag=HeadU,limit=1] ArmorItems[3].tag.CustomModelData set value 10336
tag @s add DestroyHead
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=TigaParts,tag=HeadU,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=TigaParts,tag=HeadU,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/tiga_parts
scoreboard players set @s AsaMatrix 0

function asa_animator:tiga/manager/remove_animation_tag
tag @s add AnmDHead

advancement grant @a[distance=0..64] only mh_dp:toasts/tiga
schedule function asa_animator:tiga/manager/destroy_parts/revoke 5t