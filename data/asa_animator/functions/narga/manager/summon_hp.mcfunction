
# HPセット
scoreboard players set #mhdp_narga_health AsaMatrix 45000
# HP倍率適用
scoreboard players operation #mhdp_narga_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_narga_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
bossbar add asa_animator:narga_health {"text": "迅竜"}
execute store result bossbar asa_animator:narga_health max run scoreboard players get #mhdp_narga_health AsaMatrix
bossbar set asa_animator:narga_health players @a
bossbar set asa_animator:narga_health visible true
execute store result bossbar asa_animator:narga_health value run scoreboard players get #mhdp_narga_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_narga_kill_timer AsaMatrix 0
scoreboard players set #mhdp_narga_anger_damage AsaMatrix 0
scoreboard players set #mhdp_narga_head_damage AsaMatrix 12000
scoreboard players set #mhdp_narga_arml_damage AsaMatrix 15000
scoreboard players set #mhdp_narga_armr_damage AsaMatrix 15000
scoreboard players set #mhdp_narga_tail_damage AsaMatrix 12000