## エンチャント
    # 0：軽減不可
    # 1：ダメージ軽減（無属性，雷属性）
    # 2：火炎耐性（火属性）
    # 3：爆発耐性
    # 4：ダメージ軽減（龍属性）
    execute if data storage mhdp: DamageType{Epf:0} run scoreboard players set $mhdp_epf AsaMatrix 0
    execute if data storage mhdp: DamageType{Epf:1} run function mh_dp:damage/get_epf_protection
    execute if data storage mhdp: DamageType{Epf:2} run function mh_dp:damage/get_epf_fire
    execute if data storage mhdp: DamageType{Epf:3} run function mh_dp:damage/get_epf_blast
    execute if data storage mhdp: DamageType{Epf:4} run function mh_dp:damage/get_epf_protection

# 龍属性やられ
    scoreboard players set #mhdp_const_temp AsaMatrix 2
    execute if entity @s[tag=BlightDragon] run scoreboard players operation $mhdp_epf AsaMatrix /= #mhdp_const_temp AsaMatrix
    scoreboard players reset #mhdp_const_temp
# EPF適用
    execute store result storage score_damage: Argument.EPF int 1 run scoreboard players get $mhdp_epf AsaMatrix

# 攻撃
    execute unless entity @s[gamemode=creative] unless entity @s[gamemode=spectator] unless entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run function score_damage_mhdp:api/attack

# 回避成功
    execute if entity @s[scores={MhdpTAvoid=1..}] unless entity @s[scores={MhdpTDamage=1..}] run function mh_dp:damage/player_avoid