
# HPセット
scoreboard players set #mhdp_reia_health AsaMatrix 48000
# HP倍率適用
scoreboard players operation #mhdp_reia_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_reia_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
bossbar add asa_animator:reia_health {"text": "雌火竜"}
execute store result bossbar asa_animator:reia_health max run scoreboard players get #mhdp_reia_health AsaMatrix
bossbar set asa_animator:reia_health players @a
bossbar set asa_animator:reia_health visible true
execute store result bossbar asa_animator:reia_health value run scoreboard players get #mhdp_reia_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_reia_kill_timer AsaMatrix 0
scoreboard players set #mhdp_reia_flying_damage AsaMatrix 0
scoreboard players set #mhdp_reia_head_damage AsaMatrix 12000
scoreboard players set #mhdp_reia_body_damage AsaMatrix 14000
scoreboard players set #mhdp_reia_tail_damage AsaMatrix 10000