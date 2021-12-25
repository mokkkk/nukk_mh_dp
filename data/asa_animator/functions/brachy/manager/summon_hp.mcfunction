
# HPセット
scoreboard players set #mhdp_brachy_health AsaMatrix 45000
# HP倍率適用
scoreboard players operation #mhdp_brachy_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_brachy_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
bossbar add asa_animator:brachy_health {"text": "砕竜"}
execute store result bossbar asa_animator:brachy_health max run scoreboard players get #mhdp_brachy_health AsaMatrix
bossbar set asa_animator:brachy_health players @a
bossbar set asa_animator:brachy_health visible true
execute store result bossbar asa_animator:brachy_health value run scoreboard players get #mhdp_brachy_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_brachy_kill_timer AsaMatrix 0
scoreboard players set #mhdp_brachy_anger_damage AsaMatrix 0
scoreboard players set #mhdp_brachy_bomb_count AsaMatrix 0
scoreboard players set #mhdp_brachy_head_damage AsaMatrix 11000
scoreboard players set #mhdp_brachy_arml_damage AsaMatrix 10000
scoreboard players set #mhdp_brachy_armr_damage AsaMatrix 10000
scoreboard players set #mhdp_brachy_tail_damage AsaMatrix 10000