
# ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #brachy_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @s[tag=BodyParts] run scoreboard players operation #brachy_damage AsaMatrix *= #asam_const_95 AsaMatrix
execute if entity @s[tag=ArmLParts] run scoreboard players operation #brachy_damage AsaMatrix *= #asam_const_100 AsaMatrix
execute if entity @s[tag=ArmRParts] run scoreboard players operation #brachy_damage AsaMatrix *= #asam_const_100 AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #brachy_damage AsaMatrix *= #asam_const_95 AsaMatrix
scoreboard players operation #brachy_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り時ダメージ増加
execute if entity @e[type=armor_stand,tag=BrachyRoot,tag=IsAnger] run scoreboard players operation #brachy_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @e[type=armor_stand,tag=BrachyRoot,tag=IsAnger] run scoreboard players operation #brachy_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_brachy_health AsaMatrix += #brachy_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:brachy_health value run scoreboard players get #mhdp_brachy_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 怒り遷移
scoreboard players operation #mhdp_brachy_anger_damage AsaMatrix += #brachy_damage AsaMatrix
execute if score #mhdp_brachy_anger_damage AsaMatrix matches ..-15000 unless entity @e[type=armor_stand,tag=BrachyRoot,tag=IsAnger] as @e[type=armor_stand,tag=BrachyRoot] run function asa_animator:brachy/manager/start_anger

# 部位ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_brachy_head_damage AsaMatrix += #brachy_damage AsaMatrix
execute if entity @s[tag=ArmLParts] run scoreboard players operation #mhdp_brachy_arml_damage AsaMatrix += #brachy_damage AsaMatrix
execute if entity @s[tag=ArmRParts] run scoreboard players operation #mhdp_brachy_armr_damage AsaMatrix += #brachy_damage AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_brachy_tail_damage AsaMatrix += #brachy_damage AsaMatrix
execute if score #mhdp_brachy_head_damage AsaMatrix matches ..0 as @e[distance=0..15,type=armor_stand,tag=BrachyRoot] unless entity @s[tag=DestroyHead] run function asa_animator:brachy/manager/destroy_parts/head
execute if score #mhdp_brachy_arml_damage AsaMatrix matches ..0 as @e[distance=0..15,type=armor_stand,tag=BrachyRoot] unless entity @s[tag=DestroyArmL] run function asa_animator:brachy/manager/destroy_parts/arm_l
execute if score #mhdp_brachy_armr_damage AsaMatrix matches ..0 as @e[distance=0..15,type=armor_stand,tag=BrachyRoot] unless entity @s[tag=DestroyArmR] run function asa_animator:brachy/manager/destroy_parts/arm_r
execute if score #mhdp_brachy_tail_damage AsaMatrix matches ..0 as @e[distance=0..15,type=armor_stand,tag=BrachyRoot] unless entity @s[tag=DestroyTail] run function asa_animator:brachy/manager/destroy_parts/tail

# 死亡時，アニメーション設定
execute if score #mhdp_brachy_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=BrachyRoot] run function asa_animator:brachy/manager/start_death_animation