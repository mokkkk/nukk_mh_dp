
# ダメージ減算
    scoreboard players set #mhdp_temp_resist ScoreDamageCore 7
    scoreboard players operation $Damage ScoreDamageCore *= #mhdp_temp_resist ScoreDamageCore
    scoreboard players operation $Damage ScoreDamageCore /= $10 ScoreDamageCore
# 通知
    tellraw @s {"text":"【金剛石の加護が発動した】"}
    execute at @s run particle electric_spark ~ ~1 ~ 0.5 1 0.5 1 30
    execute at @s run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 2
# 終了
    scoreboard players reset #mhdp_temp_resist