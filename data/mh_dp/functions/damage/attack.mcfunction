#declare storage mhdp:

# epf取得(プレイヤー)
execute if data storage mhdp: {Epf:0} run scoreboard players set $mhdp_epf AsaMatrix 0
execute if data storage mhdp: {Epf:1} run function mh_dp:damage/get_epf_protection
execute if data storage mhdp: {Epf:2} run function mh_dp:damage/get_epf_fire
execute if data storage mhdp: {Epf:3} run function mh_dp:damage/get_epf_blast
execute store result storage score_damage: EPF int 1 run scoreboard players get $mhdp_epf AsaMatrix

# HurtTimeチェック
execute store result score #hurt_time AsaMatrix run data get entity @s HurtTime
# 攻撃
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] if score #hurt_time AsaMatrix matches ..0 run function score_damage:api/attack