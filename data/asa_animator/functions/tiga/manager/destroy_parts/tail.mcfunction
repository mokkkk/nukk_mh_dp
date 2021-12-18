execute if entity @s[tag=IsHeatTail] run function asa_animator:dyno/manager/model/change_to_soot_tail
execute if entity @s[tag=IsSootTail] run function asa_animator:dyno/manager/model/change_to_normal_tail
data modify entity @e[type=armor_stand,tag=DynoParts,tag=Tail3,limit=1] ArmorItems[3].tag.CustomModelData set value 10194
tag @s add DestroyTail
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=DynoParts,tag=Tail3,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
execute as @e[type=armor_stand,tag=DynoParts,tag=Tail3,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/dyno_parts
scoreboard players set @s AsaMatrix 0

function asa_animator:dyno/manager/remove_animation_tag
tag @s add AnmDTail

advancement grant @a[distance=0..64] only mh_dp:toasts/dyno
schedule function asa_animator:dyno/manager/destroy_parts/revoke 5t