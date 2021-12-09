
# HPセット
scoreboard players set #mhdp_zinogre_health AsaMatrix 45000
# HP倍率適用
scoreboard players operation #mhdp_zinogre_health AsaMatrix *= #mhdp_hp_multiply AsaMatrix
scoreboard players operation #mhdp_zinogre_health AsaMatrix /= #asam_const_100 AsaMatrix

# ボスバー設定
bossbar add asa_animator:zinogre_health {"text": "雷狼竜"}
execute store result bossbar asa_animator:zinogre_health max run scoreboard players get #mhdp_zinogre_health AsaMatrix
bossbar set asa_animator:zinogre_health players @a
bossbar set asa_animator:zinogre_health visible true
execute store result bossbar asa_animator:zinogre_health value run scoreboard players get #mhdp_zinogre_health AsaMatrix

# タイマーセット
scoreboard players set #mhdp_zinogre_kill_timer AsaMatrix 0
scoreboard players set #asa_zinogre_charge AsaMatrix 0
scoreboard players set #asa_zinogre_charge_damage AsaMatrix 0
scoreboard players set #mhdp_zinogre_head_damage AsaMatrix 10000
scoreboard players set #mhdp_zinogre_arml_damage AsaMatrix 9000
scoreboard players set #mhdp_zinogre_armr_damage AsaMatrix 9000
scoreboard players set #mhdp_zinogre_tail_damage AsaMatrix 10000