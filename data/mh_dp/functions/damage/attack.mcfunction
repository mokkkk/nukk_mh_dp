#declare storage mhdp:

# ダメージ倍率適用
execute store result score #mhdp_attack_damage AsaMatrix run data get storage score_damage: Argument.Damage 100
scoreboard players operation #mhdp_attack_damage AsaMatrix *= #mhdp_attack_multiply AsaMatrix
scoreboard players operation #mhdp_attack_damage AsaMatrix /= #asam_const_100 AsaMatrix
execute if score #mhdp_attack_damage AsaMatrix matches 214747.. run scoreboard players set #mhdp_attack_damage AsaMatrix 214746
execute store result storage score_damage: Argument.Damage float 0.01 run scoreboard players get #mhdp_attack_damage AsaMatrix

# プレイヤー
execute if entity @s[type=player] run function mh_dp:damage/player
# 非プレイヤー
execute if entity @s[type=!player] run function mh_dp:damage/not_player

scoreboard players reset #mhdp_attack_damage
scoreboard players reset $mhdp_epf