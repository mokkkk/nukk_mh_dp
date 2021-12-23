#declare storage mhdp:

# ダメージ倍率適用
execute store result score #mhdp_attack_damage AsaMatrix run data get storage score_damage: Damage 100
scoreboard players operation #mhdp_attack_damage AsaMatrix *= #mhdp_attack_multiply AsaMatrix
scoreboard players operation #mhdp_attack_damage AsaMatrix /= #asam_const_100 AsaMatrix
execute store result storage score_damage: Damage float 0.01 run scoreboard players get #mhdp_attack_damage AsaMatrix

# プレイヤー
execute if entity @s[type=player] run function mh_dp:damage/player
# 非プレイヤー
execute if entity @s[type=!player] run function mh_dp:damage/not_player
# 攻撃
# execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[scores={MhdpTAvoid=1..}] if score #mhdp_hurt_time AsaMatrix matches ..0 run function score_damage:api/attack

# 回避成功
# execute if entity @s[scores={MhdpTAvoid=1..}] run playsound entity.player.attack.sweep master @s ~ ~ ~ 1 2

scoreboard players reset #mhdp_attack_damage
scoreboard players reset $mhdp_epf
scoreboard players reset #mhdp_hurt_time