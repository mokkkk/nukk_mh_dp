
## 地上
# 前方移動
execute if entity @s[tag=AnmMoveStart] run function asa_animator:kushala/anim/move_start/main
execute if entity @s[tag=AnmMove] run function asa_animator:kushala/anim/move/main
# サイドステップ
execute if entity @s[tag=AnmStepL] run function asa_animator:kushala/anim/step_l/main
execute if entity @s[tag=AnmStepR] run function asa_animator:kushala/anim/step_r/main
# サイドステップ（回り込み）
execute if entity @s[tag=AnmStepTL] run function asa_animator:kushala/anim/step_turn_l/main
execute if entity @s[tag=AnmStepTR] run function asa_animator:kushala/anim/step_turn_r/main
# 飛行開始
execute if entity @s[tag=AnmStartFly] run function asa_animator:kushala/anim/start_fly/main
# 回り込み飛行開始
execute if entity @s[tag=AnmStartFlyL] run function asa_animator:kushala/anim/start_fly_turn_l/main
execute if entity @s[tag=AnmStartFlyR] run function asa_animator:kushala/anim/start_fly_turn_r/main

# 2連噛みつき
execute if entity @s[tag=AnmBiteL] run function asa_animator:kushala/anim/bite_l/main
execute if entity @s[tag=AnmBiteR] run function asa_animator:kushala/anim/bite_r/main
# 風薙ぎ噛みつき
execute if entity @s[tag=AnmBiteCL] run function asa_animator:kushala/anim/bite_charge_l/main
execute if entity @s[tag=AnmBiteCR] run function asa_animator:kushala/anim/bite_charge_r/main

# ひっかき
execute if entity @s[tag=AnmClawL] run function asa_animator:kushala/anim/claw_l/main
execute if entity @s[tag=AnmClawR] run function asa_animator:kushala/anim/claw_r/main
# 龍属性ひっかき
execute if entity @s[tag=AnmClawD] run function asa_animator:kushala/anim/claw_dragon/main
# 龍属性ひっかき（2回目）
execute if entity @s[tag=AnmClawD2] run function asa_animator:kushala/anim/claw_dragon_2/main

# とびかかり
execute if entity @s[tag=AnmJump] run function asa_animator:kushala/anim/jump/main

# 突進
execute if entity @s[tag=AnmDashStart] run function asa_animator:kushala/anim/dash_start/main
execute if entity @s[tag=AnmDash] run function asa_animator:kushala/anim/dash/main
execute if entity @s[tag=AnmDashStop] run function asa_animator:kushala/anim/dash_stop/main

# 風弾ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:kushala/anim/breath/main
# 溜め風弾ブレス
execute if entity @s[tag=AnmBreathC] run function asa_animator:kushala/anim/breath_charge/main
# 落下ブレス
execute if entity @s[tag=AnmBreathU] run function asa_animator:kushala/anim/breath_up/main
# 2連続落下ブレス
execute if entity @s[tag=AnmBreathU2] run function asa_animator:kushala/anim/breath_up_2/main
# 風薙ぎブレス
execute if entity @s[tag=AnmBreathV] run function asa_animator:kushala/anim/breath_v/main
# 竜巻ブレス（着地）
execute if entity @s[tag=AnmBjbL] run function asa_animator:kushala/anim/bjb_land/main
# 竜巻ブレス（滞空）
execute if entity @s[tag=AnmBjb] run function asa_animator:kushala/anim/bjb/main

# 闊歩
execute if entity @s[tag=AnmStride] run function asa_animator:kushala/anim/stride/main
# エンシェントストーム
execute if entity @s[tag=AnmSp] run function asa_animator:kushala/anim/sp_attack/main

## 空中
# 着地
execute if entity @s[tag=AnmEndFly] run function asa_animator:kushala/anim/end_fly/main
# 後ろ移動
execute if entity @s[tag=AnmFlyMoveB] run function asa_animator:kushala/anim/flying_move_b/main
# 回り込み
execute if entity @s[tag=AnmFlyMoveL] run function asa_animator:kushala/anim/flying_move_l/main
execute if entity @s[tag=AnmFlyMoveR] run function asa_animator:kushala/anim/flying_move_r/main
# 回り込み着地
execute if entity @s[tag=AnmFlyMoveLL] run function asa_animator:kushala/anim/flying_move_land_l/main
execute if entity @s[tag=AnmFlyMoveLR] run function asa_animator:kushala/anim/flying_move_land_r/main

# 突進
execute if entity @s[tag=AnmFlyTackle] run function asa_animator:kushala/anim/flying_tackle/main
# 竜巻起こし
execute if entity @s[tag=AnmFlyTornado] run function asa_animator:kushala/anim/flying_tornado/main

# 風弾ブレス
execute if entity @s[tag=AnmFlyBreath] run function asa_animator:kushala/anim/flying_breath/main
# 竜巻ブレス
execute if entity @s[tag=AnmFlyBreathT] run function asa_animator:kushala/anim/flying_breath_t/main
# 3連竜巻ブレス
execute if entity @s[tag=AnmFlyBreathT3] run function asa_animator:kushala/anim/flying_breath_t_3/main

# 龍属性ひっかき（着地）
execute if entity @s[tag=AnmFlyClawD] run function asa_animator:kushala/anim/flying_claw_dragon/main


## その他
# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:kushala/anim/summon/main
# 着地
execute if entity @s[tag=AnmSummonEndFly] run function asa_animator:kushala/anim/summon_end_fly/main
# 立ち待機歩き
# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:kushala/anim/voice/main
# 風纏い
execute if entity @s[tag=AnmCharge] run function asa_animator:kushala/anim/charge/main
# 討伐
execute if entity @s[tag=AnmDeath] run function asa_animator:kushala/anim/death/main