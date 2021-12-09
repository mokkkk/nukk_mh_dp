
# HPセット
scoreboard players set #mhdp_brachyr_health AsaMatrix 80000
# HP倍率適用
scoreboard players operation #mhdp_brachyr_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
execute store result score #mhdp_brachyr_phase2_health AsaMatrix run scoreboard players operation #mhdp_brachyr_health AsaMatrix /= #asam_const_100 AsaMatrix
scoreboard players operation #mhdp_brachyr_phase2_health AsaMatrix /= #asam_const_2 AsaMatrix

# ボスバー設定
bossbar add asa_animator:brachyr_health {"text": "砕竜"}
execute store result bossbar asa_animator:brachyr_health max run scoreboard players get #mhdp_brachyr_health AsaMatrix
bossbar set asa_animator:brachyr_health players @a
bossbar set asa_animator:brachyr_health visible true
execute store result bossbar asa_animator:brachyr_health value run scoreboard players get #mhdp_brachyr_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_brachyr_kill_timer AsaMatrix 0
scoreboard players set #mhdp_brachyr_head_active AsaMatrix 0
scoreboard players set #mhdp_brachyr_arml_active AsaMatrix 0
scoreboard players set #mhdp_brachyr_armr_active AsaMatrix 0
scoreboard players set #mhdp_brachyr_tail_active AsaMatrix 0
scoreboard players set #mhdp_brachyr_act_count AsaMatrix 0
scoreboard players set #mhdp_brachyr_head_damage AsaMatrix 18000
scoreboard players set #mhdp_brachyr_arml_damage AsaMatrix 16000
scoreboard players set #mhdp_brachyr_armr_damage AsaMatrix 16000
scoreboard players set #mhdp_brachyr_tail_damage AsaMatrix 18000