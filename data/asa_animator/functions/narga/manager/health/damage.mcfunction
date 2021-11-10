
# ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #narga_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @s[tag=BodyParts] run scoreboard players operation #narga_damage AsaMatrix *= #asam_const_100 AsaMatrix
execute if entity @s[tag=ArmParts] run scoreboard players operation #narga_damage AsaMatrix *= #asam_const_95 AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #narga_damage AsaMatrix *= #asam_const_120 AsaMatrix
scoreboard players operation #narga_damage AsaMatrix /= #asam_const_100 AsaMatrix
# 怒り時ダメージ増加
execute if entity @e[type=armor_stand,tag=NargaRoot,tag=IsAnger] run scoreboard players operation #narga_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @e[type=armor_stand,tag=NargaRoot,tag=IsAnger] run scoreboard players operation #narga_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_narga_health AsaMatrix += #narga_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:narga_health value run scoreboard players get #mhdp_narga_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 怒り遷移
scoreboard players operation #mhdp_narga_anger_damage AsaMatrix += #narga_damage AsaMatrix
execute if score #mhdp_narga_anger_damage AsaMatrix matches ..-15000 unless entity @e[type=armor_stand,tag=NargaRoot,tag=IsAnger] as @e[type=armor_stand,tag=NargaRoot] run function asa_animator:narga/manager/start_anger

# 死亡時，アニメーション設定
execute if score #mhdp_narga_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=NargaRoot] run function asa_animator:narga/manager/start_death_animation