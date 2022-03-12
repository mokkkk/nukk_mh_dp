
# 怒り時ダメージ増加
execute if entity @e[type=armor_stand,tag=DynoRoot,tag=IsAnger] run scoreboard players operation #dyno_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @e[type=armor_stand,tag=DynoRoot,tag=IsAnger] run scoreboard players operation #dyno_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 赤熱時ダメージ増加
execute if entity @s[tag=TailParts] if entity @e[type=armor_stand,tag=DynoRoot,tag=IsHeatTail] run scoreboard players operation #dyno_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @s[tag=TailParts] if entity @e[type=armor_stand,tag=DynoRoot,tag=IsHeatTail] run scoreboard players operation #dyno_damage AsaMatrix /= #asam_const_100 AsaMatrix
execute if entity @s[tag=HeadParts] if entity @e[type=armor_stand,tag=DynoRoot,tag=IsHeatHead] run scoreboard players operation #dyno_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @s[tag=HeadParts] if entity @e[type=armor_stand,tag=DynoRoot,tag=IsHeatHead] run scoreboard players operation #dyno_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_dyno_health AsaMatrix += #dyno_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:dyno_health value run scoreboard players get #mhdp_dyno_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 部位ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_dyno_head_damage AsaMatrix += #dyno_damage AsaMatrix
execute if entity @s[tag=LegLParts] run scoreboard players operation #mhdp_dyno_legl_damage AsaMatrix += #dyno_damage AsaMatrix
execute if entity @s[tag=LegRParts] run scoreboard players operation #mhdp_dyno_legr_damage AsaMatrix += #dyno_damage AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_dyno_tail_damage AsaMatrix += #dyno_damage AsaMatrix
execute if score #mhdp_dyno_head_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=DynoRoot,distance=0..15] unless entity @s[tag=DestroyHead] run function asa_animator:dyno/manager/destroy_parts/head
execute if score #mhdp_dyno_legl_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=DynoRoot,distance=0..15] unless entity @s[tag=DestroyLegL] run function asa_animator:dyno/manager/destroy_parts/leg_l
execute if score #mhdp_dyno_legr_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=DynoRoot,distance=0..15] unless entity @s[tag=DestroyLegR] run function asa_animator:dyno/manager/destroy_parts/leg_r
execute if score #mhdp_dyno_tail_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=DynoRoot,distance=0..15] unless entity @s[tag=DestroyTail] run function asa_animator:dyno/manager/destroy_parts/tail

# 怒り遷移
scoreboard players operation #mhdp_dyno_anger_damage AsaMatrix += #dyno_damage AsaMatrix
execute if score #mhdp_dyno_anger_damage AsaMatrix matches ..0 unless entity @e[type=armor_stand,tag=DynoRoot,tag=IsAnger] as @e[type=armor_stand,tag=DynoRoot] run function asa_animator:dyno/manager/start_anger

# 頭赤熱化解除
execute if entity @s[tag=HeadParts] if entity @e[type=armor_stand,tag=DynoRoot,tag=IsHeatHead] run scoreboard players operation #mhdp_dyno_head_heat_damage AsaMatrix += #dyno_damage AsaMatrix
execute if score #mhdp_dyno_head_heat_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=DynoRoot,distance=0..15] run function asa_animator:dyno/manager/destroy_parts/head_heat

# 死亡時，アニメーション設定
execute if score #mhdp_dyno_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=DynoRoot] run function asa_animator:dyno/manager/start_death_animation