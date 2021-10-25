
# ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #reia_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @s[tag=BodyParts] run scoreboard players operation #reia_damage AsaMatrix *= #asam_const_95 AsaMatrix
execute if entity @s[tag=LegParts] run scoreboard players operation #reia_damage AsaMatrix *= #asam_const_100 AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #reia_damage AsaMatrix *= #asam_const_95 AsaMatrix
scoreboard players operation #reia_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_reia_health AsaMatrix += #reia_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:reia_health value run scoreboard players get #mhdp_reia_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 死亡時，アニメーション設定
execute if score #mhdp_reia_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=ReiaRoot] run function asa_animator:reia/manager/start_death_animation