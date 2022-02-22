
# 戦闘開始
execute if entity @e[type=armor_stand,tag=NazutiRoot,tag=IsStand] as @e[type=armor_stand,tag=NazutiRoot] run function asa_animator:nazuti/manager/start_battle
# ダメージ適用
# 怒り時ダメージ増加
execute if entity @e[type=armor_stand,tag=NazutiRoot,tag=IsAnger] run scoreboard players operation #nazuti_damage AsaMatrix *= #asam_const_120 AsaMatrix
execute if entity @e[type=armor_stand,tag=NazutiRoot,tag=IsAnger] run scoreboard players operation #nazuti_damage AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_nazuti_health AsaMatrix += #nazuti_damage AsaMatrix
# ボスバー設定
execute store result bossbar asa_animator:nazuti_health value run scoreboard players get #mhdp_nazuti_health AsaMatrix
# 効果音など
playsound minecraft:entity.player.hurt master @a ~ ~ ~ 2 1

# 部位ダメージ適用
execute if entity @s[tag=HeadParts] run scoreboard players operation #mhdp_nazuti_head_damage AsaMatrix += #nazuti_damage AsaMatrix
execute if entity @s[tag=BodyParts] run scoreboard players operation #mhdp_nazuti_body_damage AsaMatrix += #nazuti_damage AsaMatrix
execute if entity @s[tag=TailParts] run scoreboard players operation #mhdp_nazuti_tail_damage AsaMatrix += #nazuti_damage AsaMatrix
execute if score #mhdp_nazuti_head_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=NazutiRoot,distance=0..15] unless entity @s[tag=DestroyHead] run function asa_animator:nazuti/manager/destroy_parts/head
execute if score #mhdp_nazuti_body_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=NazutiRoot,distance=0..15] unless entity @s[tag=DestroyBody] run function asa_animator:nazuti/manager/destroy_parts/body
execute if score #mhdp_nazuti_tail_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=NazutiRoot,distance=0..15] unless entity @s[tag=DestroyTail] run function asa_animator:nazuti/manager/destroy_parts/tail

# 怒り遷移
# scoreboard players operation #mhdp_nazuti_anger_damage AsaMatrix += #nazuti_damage AsaMatrix
# execute if score #mhdp_nazuti_anger_damage AsaMatrix matches ..0 unless entity @e[type=armor_stand,tag=NazutiRoot,tag=IsAnger] as @e[type=armor_stand,tag=NazutiRoot] run function asa_animator:nazuti/manager/start_anger

# 霞纏い時特殊怯み
scoreboard players set #mhdp_const_temp AsaMatrix 2
execute if score #mhdp_nazuti_lv AsaMatrix matches 1 run scoreboard players operation #nazuti_damage AsaMatrix /= #mhdp_const_temp AsaMatrix
execute if score #mhdp_nazuti_lv AsaMatrix matches 1.. run scoreboard players operation #mhdp_nazuti_sp_damage AsaMatrix += #nazuti_damage AsaMatrix
execute if score #mhdp_nazuti_sp_damage AsaMatrix matches ..0 as @e[type=armor_stand,tag=NazutiRoot,distance=0..15] run function asa_animator:nazuti/manager/start_damage_animation
scoreboard players reset #mhdp_const_temp

# 死亡時，アニメーション設定
execute if score #mhdp_nazuti_health AsaMatrix matches ..0 as @e[type=armor_stand,tag=NazutiRoot] run function asa_animator:nazuti/manager/start_death_animation