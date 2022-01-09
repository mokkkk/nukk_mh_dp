
# 怒り時ダメージ増加
execute if entity @e[type=armor_stand,tag=DiablosRoot,tag=IsAnger] run scoreboard players operation #diablos_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @e[type=armor_stand,tag=DiablosRoot,tag=IsAnger] run scoreboard players operation #diablos_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_diablos_health AsaMatrix += #diablos_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:diablos_health value run scoreboard players get #mhdp_diablos_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 部位ダメージ適用
# execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_diablos_head_damage AsaMatrix += #diablos_damage AsaMatrix
# execute if entity @s[tag=BodyParts] run scoreboard players operation #mhdp_diablos_body_damage AsaMatrix += #diablos_damage AsaMatrix
# execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_diablos_tail_damage AsaMatrix += #diablos_damage AsaMatrix
# execute if score #mhdp_diablos_head_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=DiablosRoot,distance=0..15] unless entity @s[tag=DestroyHead] run function asa_animator:diablos/manager/destroy_parts/head
# execute if score #mhdp_diablos_body_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=DiablosRoot,distance=0..15] unless entity @s[tag=DestroyBody] run function asa_animator:diablos/manager/destroy_parts/body
# execute if score #mhdp_diablos_tail_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=DiablosRoot,distance=0..15] unless entity @s[tag=DestroyTail] run function asa_animator:diablos/manager/destroy_parts/tail

# 怒り変化
execute as @e[type=armor_stand,tag=DiablosRoot,distance=0..20] run function asa_animator:diablos/manager/anger/main

# 死亡時，アニメーション設定
execute if score #mhdp_diablos_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=DiablosRoot] run function asa_animator:diablos/manager/start_death_animation