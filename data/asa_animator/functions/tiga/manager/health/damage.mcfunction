
# 怒り時ダメージ増加
execute if entity @e[type=armor_stand,tag=TigaRoot,tag=IsAnger] run scoreboard players operation #tiga_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @e[type=armor_stand,tag=TigaRoot,tag=IsAnger] run scoreboard players operation #tiga_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_tiga_health AsaMatrix += #tiga_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:tiga_health value run scoreboard players get #mhdp_tiga_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 部位ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_tiga_head_damage AsaMatrix += #tiga_damage AsaMatrix
execute if entity @s[tag=ArmLParts] run scoreboard players operation #mhdp_tiga_arml_damage AsaMatrix += #tiga_damage AsaMatrix
execute if entity @s[tag=ArmRParts] run scoreboard players operation #mhdp_tiga_armr_damage AsaMatrix += #tiga_damage AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_tiga_tail_damage AsaMatrix += #tiga_damage AsaMatrix
execute if score #mhdp_tiga_head_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=TigaRoot,distance=0..15] unless entity @s[tag=DestroyHead] run function asa_animator:tiga/manager/destroy_parts/head
execute if score #mhdp_tiga_arml_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=TigaRoot,distance=0..15] unless entity @s[tag=DestroyArmL] run function asa_animator:tiga/manager/destroy_parts/arm_l
execute if score #mhdp_tiga_armr_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=TigaRoot,distance=0..15] unless entity @s[tag=DestroyArmR] run function asa_animator:tiga/manager/destroy_parts/arm_r
execute if score #mhdp_tiga_tail_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=TigaRoot,distance=0..15] unless entity @s[tag=DestroyTail] run function asa_animator:tiga/manager/destroy_parts/tail

# 怒り遷移
scoreboard players operation #mhdp_tiga_anger_damage AsaMatrix += #tiga_damage AsaMatrix
execute if score #mhdp_tiga_anger_damage AsaMatrix matches ..0 unless entity @e[type=armor_stand,tag=TigaRoot,tag=IsAnger] as @e[type=armor_stand,tag=TigaRoot] run function asa_animator:tiga/manager/start_anger

# 死亡時，アニメーション設定
execute if score #mhdp_tiga_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=TigaRoot] run function asa_animator:tiga/manager/start_death_animation