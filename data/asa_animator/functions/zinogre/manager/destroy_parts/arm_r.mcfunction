
# モデル変更
    execute unless entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10584
    execute unless entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10586
    execute if entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10609
    execute if entity @s[tag=IsThunder] run data modify entity @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] ArmorItems[3].tag.CustomModelData set value 10611

# 演出
    playsound entity.player.attack.knockback master @a ~ ~ ~ 2 1
    playsound entity.player.attack.crit master @a ~ ~ ~ 2 0.8
    playsound item.shield.break master @a ~ ~ ~ 2 0.7
    execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] at @s run particle block bone_block ~ ~1.4 ~ 0.2 0.2 0.2 0 10
    execute as @e[type=armor_stand,tag=ZinogreParts,tag=ArmR2,limit=1] at @s run loot spawn ~ ~ ~ loot mh_dp:bonus/zinogre_parts

# 状態更新
    tag @s add DestroyArmR

# アニメーション再生
    function asa_animator:zinogre/manager/remove_animation_tag
    execute unless entity @s[tag=IsFlying] run tag @s add AnmDArmR
    execute if entity @s[tag=IsFlying] run tag @s add AnmFlyDamage
    scoreboard players set @s AsaMatrix 0

# 実績達成→5tick後に解除
    advancement grant @a[distance=0..64] only mh_dp:toasts/zinogre
    schedule function asa_animator:zinogre/manager/destroy_parts/revoke 5t