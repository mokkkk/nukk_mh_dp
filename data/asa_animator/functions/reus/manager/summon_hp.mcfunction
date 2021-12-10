
# HPセット
scoreboard players set #mhdp_reus_health AsaMatrix 52000
# HP倍率適用
scoreboard players operation #mhdp_reus_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_reus_health AsaMatrix /= #asam_const_100 AsaMatrix
execute store result storage score_damage: Damage float 0.01 run scoreboard players get #mhdp_reus_health AsaMatrix

# ボスバー設定
execute if data storage mhdp: {ExistMonster:0b} run bossbar add asa_animator:reus_health {"text": "火竜"}
execute store result bossbar asa_animator:reus_health max run scoreboard players get #mhdp_reus_health AsaMatrix
bossbar set asa_animator:reus_health players @a
bossbar set asa_animator:reus_health visible true
execute store result bossbar asa_animator:reus_health value run scoreboard players get #mhdp_reus_health AsaMatrix

# スコア初期化
scoreboard players set #mhdp_reus_flying_damage AsaMatrix 0
scoreboard players set #mhdp_reus_head_damage AsaMatrix 12000
scoreboard players set #mhdp_reus_body_damage AsaMatrix 14000
scoreboard players set #mhdp_reus_tail_damage AsaMatrix 10000

# タイマーセット
scoreboard players set #mhdp_reus_kill_timer AsaMatrix 0