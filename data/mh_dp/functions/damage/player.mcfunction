execute if data storage mhdp: {Epf:0} run scoreboard players set $mhdp_epf AsaMatrix 0
execute if data storage mhdp: {Epf:1} run function mh_dp:damage/get_epf_protection
execute if data storage mhdp: {Epf:2} run function mh_dp:damage/get_epf_fire
execute if data storage mhdp: {Epf:3} run function mh_dp:damage/get_epf_blast
execute store result storage score_damage: Argument.EPF int 1 run scoreboard players get $mhdp_epf AsaMatrix

# 攻撃
execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run function score_damage:api/attack

# 回避成功
execute if entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run function mh_dp:damage/player_avoid