#declare storage mhdp:

# ダメージ倍率適用
execute store result score #mhdp_attack_damage AsaMatrix run data get storage score_damage: Damage 100
scoreboard players operation #mhdp_attack_damage AsaMatrix *= #mhdp_attack_multiply AsaMatrix
scoreboard players operation #mhdp_attack_damage AsaMatrix /= #asam_const_100 AsaMatrix
execute store result storage score_damage: Damage float 0.01 run scoreboard players get #mhdp_attack_damage AsaMatrix

# epf取得(プレイヤー)
execute if entity @s[type=player] if data storage mhdp: {Epf:0} run scoreboard players set $mhdp_epf AsaMatrix 0
execute if entity @s[type=player] if data storage mhdp: {Epf:1} run function mh_dp:damage/get_epf_protection
execute if entity @s[type=player] if data storage mhdp: {Epf:2} run function mh_dp:damage/get_epf_fire
execute if entity @s[type=player] if data storage mhdp: {Epf:3} run function mh_dp:damage/get_epf_blast
execute if entity @s[type=player] store result storage score_damage: EPF int 1 run scoreboard players get $mhdp_epf AsaMatrix

# HurtTimeチェック
data modify storage mhdp: Temp.HT set from entity @s HurtTime
execute store result score #mhdp_hurt_time AsaMatrix run data get storage mhdp: Temp.HT
# 攻撃
execute if entity @s[gamemode=!creative,gamemode=!spectator,tag=!TickDamaged] unless entity @s[scores={MhdpTAvoid=1..}] if score #mhdp_hurt_time AsaMatrix matches ..0 run function score_damage:api/attack

# 回避成功
execute if entity @s[scores={MhdpTAvoid=1..}] run playsound entity.player.attack.sweep master @s ~ ~ ~ 1 2
# 重複ダメージ対策
tag @s add TickDamaged