
# HPセット
scoreboard players set #mhdp_diablos_health AsaMatrix 52000
# HP倍率適用
scoreboard players operation #mhdp_diablos_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_diablos_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
bossbar add asa_animator:diablos_health {"text": "角竜"}
execute store result bossbar asa_animator:diablos_health max run scoreboard players get #mhdp_diablos_health AsaMatrix
bossbar set asa_animator:diablos_health players @a
bossbar set asa_animator:diablos_health visible true
execute store result bossbar asa_animator:diablos_health value run scoreboard players get #mhdp_diablos_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_diablos_kill_timer AsaMatrix 0
scoreboard players set #mhdp_diablos_head_damage AsaMatrix 18000
scoreboard players set #mhdp_diablos_body_damage AsaMatrix 14000
scoreboard players set #mhdp_diablos_tail_damage AsaMatrix 12000