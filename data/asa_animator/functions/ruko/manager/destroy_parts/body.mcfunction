data modify entity @e[type=armor_stand,tag=RukoParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10545
data modify entity @e[type=armor_stand,tag=RukoParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10545
data modify entity @e[type=armor_stand,tag=RukoParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10546
data modify entity @e[type=armor_stand,tag=RukoParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10546
tag @s add DestroyBody
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=RukoParts,tag=Body0,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=RukoParts,tag=Body0,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/ruko_parts
scoreboard players set @s AsaMatrix 0

function asa_animator:ruko/manager/remove_animation_tag
execute if entity @s[tag=!IsFlying] run tag @s add AnmDBody
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage

advancement grant @a[distance=0..64] only mh_dp:toasts/ruko
schedule function asa_animator:ruko/manager/destroy_parts/revoke 5t