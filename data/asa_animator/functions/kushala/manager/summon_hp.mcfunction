
# HPセット
scoreboard players set #mhdp_kushala_health AsaMatrix 52000
# HP倍率適用
scoreboard players operation #mhdp_kushala_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_kushala_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
bossbar add asa_animator:kushala_health {"text": "鋼竜"}
execute store result bossbar asa_animator:kushala_health max run scoreboard players get #mhdp_kushala_health AsaMatrix
bossbar set asa_animator:kushala_health players @a
bossbar set asa_animator:kushala_health visible true
execute store result bossbar asa_animator:kushala_health value run scoreboard players get #mhdp_kushala_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_kushala_kill_timer AsaMatrix 0
scoreboard players set #mhdp_kushala_actcount AsaMatrix 6
scoreboard players set #mhdp_kushala_head_damage AsaMatrix 18000
scoreboard players set #mhdp_kushala_body_damage AsaMatrix 12000
scoreboard players set #mhdp_kushala_tail_damage AsaMatrix 14000