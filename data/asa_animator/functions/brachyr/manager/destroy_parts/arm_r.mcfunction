execute unless entity @s[tag=Phase2] unless entity @s[tag=ActiveArmR] run data modify entity @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10262
execute unless entity @s[tag=Phase2] if entity @s[tag=ActiveArmR] run data modify entity @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10264
execute if entity @s[tag=Phase2] run data modify entity @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10289

tag @s add DestroyArmR
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=BrachyRParts,tag=ArmR1,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/brachyr_parts
scoreboard players set @s AsaMatrix 0

function asa_animator:brachyr/manager/remove_animation_tag
tag @s add AnmDArmR

execute as @a[distance=0..64] run advancement grant @s only mh_dp:toasts/brachyr
schedule function asa_animator:brachyr/manager/destroy_parts/revoke 5t