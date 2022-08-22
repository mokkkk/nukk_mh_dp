
# 怒り時ダメージ増加
execute if entity @e[type=armor_stand,tag=ZinogreRoot,tag=IsAnger] run scoreboard players operation #zinogre_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @e[type=armor_stand,tag=ZinogreRoot,tag=IsAnger] run scoreboard players operation #zinogre_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_zinogre_health AsaMatrix += #zinogre_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:zinogre_health value run scoreboard players get #mhdp_zinogre_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 怒り遷移
execute if entity @e[type=armor_stand,tag=ZinogreRoot,tag=IsThunder] run scoreboard players operation #mhdp_zinogre_anger_damage AsaMatrix += #zinogre_damage AsaMatrix
execute if entity @e[type=armor_stand,tag=ZinogreRoot,tag=IsThunder] if score #mhdp_zinogre_anger_damage AsaMatrix matches ..0 unless entity @e[type=armor_stand,tag=ZinogreRoot,tag=IsAnger] as @e[type=armor_stand,tag=ZinogreRoot] run function asa_animator:zinogre/manager/start_anger

# 部位ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_zinogre_head_damage AsaMatrix += #zinogre_damage AsaMatrix
execute if entity @s[tag=ArmLParts] run scoreboard players operation #mhdp_zinogre_arml_damage AsaMatrix += #zinogre_damage AsaMatrix
execute if entity @s[tag=ArmRParts] run scoreboard players operation #mhdp_zinogre_armr_damage AsaMatrix += #zinogre_damage dwAsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_zinogre_tail_damage AsaMatrix += #zinogre_damage AsaMatrix
execute if score #mhdp_zinogre_head_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15] unless entity @s[tag=DestroyHead] run function asa_animator:zinogre/manager/destroy_parts/head
execute if score #mhdp_zinogre_arml_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15] unless entity @s[tag=DestroyArmL] run function asa_animator:zinogre/manager/destroy_parts/arm_l
execute if score #mhdp_zinogre_armr_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15] unless entity @s[tag=DestroyArmR] run function asa_animator:zinogre/manager/destroy_parts/arm_r
execute if score #mhdp_zinogre_tail_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=ZinogreRoot,distance=0..15] unless entity @s[tag=DestroyTail] run function asa_animator:zinogre/manager/destroy_parts/tail

# 超帯電解除
execute if entity @e[type=armor_stand,tag=ZinogreRoot,tag=IsThunder] run scoreboard players operation #mhdp_zinogre_charge_damage AsaMatrix += #zinogre_damage AsaMatrix
execute if entity @e[type=armor_stand,tag=ZinogreRoot,tag=IsThunder] if score #mhdp_zinogre_charge_damage AsaMatrix matches ..0 unless entity @e[type=armor_stand,tag=ZinogreRoot,tag=IsAnger] as @e[type=armor_stand,tag=ZinogreRoot] run function asa_animator:zinogre/manager/start_damage_animation

# 死亡時，アニメーション設定
execute if score #mhdp_zinogre_health AsaMatrix matches ..0 if entity @s[tag=!Death] as @e[type=armor_stand,tag=ZinogreRoot] unless entity @s[tag=AnmDeath] run function asa_animator:zinogre/manager/start_death_animation
