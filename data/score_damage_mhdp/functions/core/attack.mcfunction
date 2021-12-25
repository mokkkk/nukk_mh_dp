#> score_damage_mhdp:core/attack
#
# ダメージ与えるよ
#
# @within function score_damage_mhdp:api/*

#> 変数定義
# @internal
    #declare score_holder $Damage
    #declare score_holder $EPF
    #declare score_holder $Health
    #declare score_holder $DefensePoints
    #declare score_holder $Toughness
    #declare score_holder $Resistance

# 引数データをコピー
    execute store result score $Damage ScoreDamageCore run data get storage score_damage: Argument.Damage 100
# 計算に必要な値を取得
    function score_damage_mhdp:core/get_status
# 与えるダメージの計算
    function score_damage_mhdp:core/calc
# Mobに適用
    function score_damage_mhdp:core/health_subtract
# リセット
    scoreboard players reset $Damage ScoreDamageCore
    scoreboard players reset $Health ScoreDamageCore
    scoreboard players reset $Resistance ScoreDamageCore