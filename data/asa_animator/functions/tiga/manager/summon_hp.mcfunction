
# HPセット
scoreboard players set #mhdp_dyno_health AsaMatrix 55000
# HP倍率適用
scoreboard players operation #mhdp_dyno_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_dyno_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
bossbar add asa_animator:dyno_health {"text": "斬竜"}
execute store result bossbar asa_animator:dyno_health max run scoreboard players get #mhdp_dyno_health AsaMatrix
bossbar set asa_animator:dyno_health players @a
bossbar set asa_animator:dyno_health visible true
execute store result bossbar asa_animator:dyno_health value run scoreboard players get #mhdp_dyno_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_dyno_kill_timer AsaMatrix 0
scoreboard players set #mhdp_dyno_actcount_head AsaMatrix 0
scoreboard players set #mhdp_dyno_actcount_tail AsaMatrix 0
scoreboard players set #mhdp_dyno_actcount_generic AsaMatrix 0
scoreboard players set #mhdp_dyno_head_damage AsaMatrix 10000
scoreboard players set #mhdp_dyno_legl_damage AsaMatrix 12000
scoreboard players set #mhdp_dyno_legr_damage AsaMatrix 12000
scoreboard players set #mhdp_dyno_tail_damage AsaMatrix 16000
scoreboard players set #mhdp_dyno_head_heat_damage AsaMatrix 0