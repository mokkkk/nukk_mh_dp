
# モデル変更
    execute unless entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10587
    execute if entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail2,limit=1] ArmorItems[3].tag.CustomModelData set value 10612
    execute if entity @s[tag=IsThunder] as @e[type=armor_stand,tag=ZinogreParts,tag=Tail3] run data modify entity @s ArmorItems[3].id set value "minecraft:barrier"
    data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=Tail3,limit=1] ArmorItems[3].tag.CustomModelData set value 10084

# 演出
    playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
    playsound item.shield.break master @a ~ ~ ~ 2 0.7
    execute as @e[type=armor_stand,tag=ZinogreParts,tag=Tail3,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10

# 尻尾当たり判定消去
    execute as @e[type=slime,tag=ZinogreParts,tag=Tail3] run data modify entity @s Size set value 0
    execute as @e[type=slime,tag=ZinogreParts,tag=Tail3] run tp @s ~ 0 ~
    execute as @e[type=slime,tag=ZinogreParts,tag=Tail3] run tag @s add Death
    kill @e[type=slime,tag=ZinogreParts,tag=Tail3]

# 尻尾設置
    summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,Tags:["MonsterShot","MonsterTail","ZinogreTail"],ArmorItems:[{},{},{},{id:"minecraft:barrier",Count:1b,tag:{CustomModelData:10574,Rotate:[0f,0f,0f]}}],Pose:{Head:[15f,0f,0f]}}
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ZinogreTail,limit=1] at @e[type=armor_stand,tag=ZinogreParts,tag=Tail3,limit=1] run tp @s ~ ~3 ~ ~ ~
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ZinogreTail,limit=1] at @s run function asa_animator:zinogre/manager/check_ground
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ZinogreTail,limit=1] at @s run tp @s ~ ~-1.1 ~
    execute as @e[type=armor_stand,tag=MonsterTail,tag=ZinogreTail,limit=1] run data modify entity @s Pose.Head[0] set value 0.0f

# 状態更新
    tag @s add DestroyTail

# アニメーション再生
    function asa_animator:zinogre/manager/remove_animation_tag
    execute unless entity @s[tag=IsFlying] run tag @s add AnmDTail
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
    scoreboard players set @s AsaMatrix 0

# 実績達成→5tick後に解除
    advancement grant @a[distance=0..64] only mh_dp:toasts/zinogre
    schedule function asa_animator:zinogre/manager/destroy_parts/revoke 5t
