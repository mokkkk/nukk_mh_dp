data modify entity @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] ArmorItems[3].tag.CustomModelData set value 10123
data modify entity @e[type=armor_stand,tag=ReusParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10084
tag @s add DestroyTail
playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
playsound item.shield.break master @a ~ ~ ~ 2 0.7
execute as @e[type=armor_stand,tag=ReusParts,tag=Tail1,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
scoreboard players set @s AsaMatrix 0

# 尻尾当たり判定消去
    execute as @e[type=slime,tag=ReusParts,tag=Tail3] run data modify entity @s Size set value 0
    execute as @e[type=slime,tag=ReusParts,tag=Tail3] run tp @s ~ 0 ~
    execute as @e[type=slime,tag=ReusParts,tag=Tail3] run tag @s add Death
    kill @e[type=slime,tag=ReusParts,tag=Tail3]

# 尻尾設置
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","MonsterTail","ReusTail"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10013,Rotate:[0f,0f,0f]}}],Pose:{Head:[15f,0f,0f]}}
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ReusTail,limit=1] at @e[type=armor_stand,tag=ReusParts,tag=Tail3,limit=1] run tp @s ~ ~3 ~ ~ ~
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ReusTail,limit=1] at @s run function asa_animator:zinogre/manager/check_ground
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ReusTail,limit=1] at @s run tp @s ~ ~-1.1 ~
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ReusTail,limit=1] run data modify entity @s Pose.Head[0] set value 0.0f

function asa_animator:reus/manager/remove_animation_tag
execute unless entity @s[tag=IsFlying] run tag @s add AnmDTail
execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage

advancement grant @a[distance=0..64] only mh_dp:toasts/reus
schedule function asa_animator:reus/manager/destroy_parts/revoke 5t