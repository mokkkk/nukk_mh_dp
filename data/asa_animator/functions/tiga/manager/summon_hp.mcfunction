
# HPセット
scoreboard players set #mhdp_tiga_health AsaMatrix 52000
# HP倍率適用
scoreboard players operation #mhdp_tiga_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_tiga_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
bossbar add asa_animator:tiga_health {"text": "轟竜"}
execute store result bossbar asa_animator:tiga_health max run scoreboard players get #mhdp_tiga_health AsaMatrix
bossbar set asa_animator:tiga_health players @a
bossbar set asa_animator:tiga_health visible true
execute store result bossbar asa_animator:tiga_health value run scoreboard players get #mhdp_tiga_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_tiga_kill_timer AsaMatrix 0
scoreboard players set #mhdp_tiga_actcount AsaMatrix 8
scoreboard players set #mhdp_tiga_anger_count AsaMatrix 0
scoreboard players set #mhdp_tiga_anger_damage AsaMatrix 0
scoreboard players set #mhdp_tiga_head_damage AsaMatrix 10000
scoreboard players set #mhdp_tiga_arml_damage AsaMatrix 12000
scoreboard players set #mhdp_tiga_armr_damage AsaMatrix 12000
scoreboard players set #mhdp_tiga_tail_damage AsaMatrix 14000