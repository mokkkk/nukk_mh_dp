
# ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #brachyr_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @s[tag=BodyParts] run scoreboard players operation #brachyr_damage AsaMatrix *= #asam_const_95 AsaMatrix
execute if entity @s[tag=ArmLParts] run scoreboard players operation #brachyr_damage AsaMatrix *= #asam_const_100 AsaMatrix
execute if entity @s[tag=ArmRParts] run scoreboard players operation #brachyr_damage AsaMatrix *= #asam_const_100 AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #brachyr_damage AsaMatrix *= #asam_const_95 AsaMatrix
scoreboard players operation #brachyr_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_brachyr_health AsaMatrix += #brachyr_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:brachyr_health value run scoreboard players get #mhdp_brachyr_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 誘爆
execute if entity @s[tag=HeadParts] if entity @e[type=armor_stand,tag=BrachyRRoot,tag=ActiveHead,tag=!AnmChargeBomb] as @e[type=armor_stand,tag=BrachyRRoot] run function asa_animator:brachyr/manager/reactive/reactive_head
execute if entity @s[tag=ArmLParts] if entity @e[type=armor_stand,tag=BrachyRRoot,tag=ActiveArmL,tag=!AnmChargeBomb] as @e[type=armor_stand,tag=BrachyRRoot] run function asa_animator:brachyr/manager/reactive/reactive_arml
execute if entity @s[tag=ArmRParts] if entity @e[type=armor_stand,tag=BrachyRRoot,tag=ActiveArmR,tag=!AnmChargeBomb] as @e[type=armor_stand,tag=BrachyRRoot] run function asa_animator:brachyr/manager/reactive/reactive_armr
execute if entity @s[tag=TailParts] if entity @e[type=armor_stand,tag=BrachyRRoot,tag=ActiveTail,tag=!AnmChargeBomb] as @e[type=armor_stand,tag=BrachyRRoot] run function asa_animator:brachyr/manager/reactive/reactive_tail

# 激昂遷移
execute if score #mhdp_brachyr_health AsaMatrix matches ..40000 if entity @e[type=armor_stand,tag=BrachyRRoot,tag=!AnmRage,tag=!Phase2] as @e[type=armor_stand,tag=BrachyRRoot] run function asa_animator:brachyr/manager/start_rage_animation

# 部位ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_brachyr_head_damage AsaMatrix += #brachyr_damage AsaMatrix
execute if entity @s[tag=ArmLParts] run scoreboard players operation #mhdp_brachyr_arml_damage AsaMatrix += #brachyr_damage AsaMatrix
execute if entity @s[tag=ArmRParts] run scoreboard players operation #mhdp_brachyr_armr_damage AsaMatrix += #brachyr_damage AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_brachyr_tail_damage AsaMatrix += #brachyr_damage AsaMatrix
execute if score #mhdp_brachyr_head_damage AsaMatrix matches ..0 as @e[distance=0..15,type=armor_stand,tag=BrachyRRoot] unless entity @s[tag=DestroyHead] run function asa_animator:brachyr/manager/destroy_parts/head
execute if score #mhdp_brachyr_arml_damage AsaMatrix matches ..0 as @e[distance=0..15,type=armor_stand,tag=BrachyRRoot] unless entity @s[tag=DestroyArmL] run function asa_animator:brachyr/manager/destroy_parts/arm_l
execute if score #mhdp_brachyr_armr_damage AsaMatrix matches ..0 as @e[distance=0..15,type=armor_stand,tag=BrachyRRoot] unless entity @s[tag=DestroyArmR] run function asa_animator:brachyr/manager/destroy_parts/arm_r
execute if score #mhdp_brachyr_tail_damage AsaMatrix matches ..0 as @e[distance=0..15,type=armor_stand,tag=BrachyRRoot] unless entity @s[tag=DestroyTail] run function asa_animator:brachyr/manager/destroy_parts/tail

# 死亡時，アニメーション設定
execute if score #mhdp_brachyr_health AsaMatrix matches ..0 if entity @s[tag=!Death] as @e[type=armor_stand,tag=BrachyRRoot] unless entity @s[tag=AnmDeath] run function asa_animator:brachyr/manager/start_death_animation
