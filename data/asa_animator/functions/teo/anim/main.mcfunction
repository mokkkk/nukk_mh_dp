
## 共通
    # バックステップ
    execute if entity @s[tag=AnmStepB] run function asa_animator:teo/anim/step_b/main
    # 移動
    execute if entity @s[tag=AnmMoveStart] run function asa_animator:teo/anim/move_start/main
    execute if entity @s[tag=AnmMove] run function asa_animator:teo/anim/move/main

    # 正面噛みつき
    execute if entity @s[tag=AnmBite] run function asa_animator:teo/anim/bite/main
    # 移動噛みつき
    execute if entity @s[tag=AnmBiteL] run function asa_animator:teo/anim/bite_turn_l/main
    execute if entity @s[tag=AnmBiteR] run function asa_animator:teo/anim/bite_turn_r/main

    # 飛び掛かり
    execute if entity @s[tag=AnmJump] run function asa_animator:teo/anim/jump/main
    execute if entity @s[tag=AnmJumpT] run function asa_animator:teo/anim/turn_jump/main

    # 尻尾振り
    execute if entity @s[tag=AnmTail] run function asa_animator:teo/anim/tail/main

    # 正面ひっかき
    execute if entity @s[tag=AnmClawFL] run function asa_animator:teo/anim/claw_f_l/main
    execute if entity @s[tag=AnmClawFR] run function asa_animator:teo/anim/claw_f_r/main
    # 振り向きひっかき
    execute if entity @s[tag=AnmClawL] run function asa_animator:teo/anim/claw_l/main
    execute if entity @s[tag=AnmClawR] run function asa_animator:teo/anim/claw_r/main

    # 突進
    execute if entity @s[tag=AnmDashStart] run function asa_animator:teo/anim/dash_start/main
    execute if entity @s[tag=AnmDash] run function asa_animator:teo/anim/dash/main
    execute if entity @s[tag=AnmDashStop] run function asa_animator:teo/anim/dash_stop/main
    execute if entity @s[tag=AnmDashFly] run function asa_animator:teo/anim/dash_stop_fly/main

    # 滑空突進
    execute if entity @s[tag=AnmFlyTackle] run function asa_animator:teo/anim/flying_tackle/main
    # 滑空突進（コンボ用）
    execute if entity @s[tag=AnmFlyTackleC] run function asa_animator:teo/anim/flying_tackle_combo/main
    execute if entity @s[tag=AnmFlyTackleC2] run function asa_animator:teo/anim/flying_tackle_combo_2/main
    # 滑空突進威嚇
    execute if entity @s[tag=AnmFlyTackleEnd] run function asa_animator:teo/anim/flying_tackle_end/main

    # 粉塵爆発（近）
    execute if entity @s[tag=AnmBombN] run function asa_animator:teo/anim/bomb_n/main
    # 粉塵爆発（遠）
    execute if predicate asa_animator:teo/combo if entity @s[tag=AnmBombF] run function asa_animator:teo/anim/bomb_f/main
    execute unless predicate asa_animator:teo/combo if entity @s[tag=AnmBombF] run function asa_animator:teo/anim/bomb_f_combo/main

    # スーパーノヴァ
    execute if entity @s[tag=AnmSupernova] run function asa_animator:teo/anim/supernova/main
    execute if entity @s[tag=AnmSupernovaEnd] run function asa_animator:teo/anim/supernova_end_fly/main


## 龍炎纏い
    # 炎薙ぎ
    execute if entity @s[tag=AnmBiteCL,tag=IsFire] run function asa_animator:teo/anim/bite_charge_l/main
    execute if entity @s[tag=AnmBiteCR,tag=IsFire] run function asa_animator:teo/anim/bite_charge_r/main

    # 薙ぎ払い火炎放射
    execute if entity @s[tag=AnmFlameLarge,tag=IsFire] run function asa_animator:teo/anim/flame_large/main
    # 地面火炎放射
    execute if entity @s[tag=AnmFlameGround] run function asa_animator:teo/anim/flame_ground/main
    # 溜め火炎放射
    execute if entity @s[tag=AnmFlameNova] run function asa_animator:teo/anim/flame_nova/main

    # 離陸
    execute if entity @s[tag=AnmStartFly] run function asa_animator:teo/anim/start_fly/main
    # 滞空火炎放射
    execute if entity @s[tag=AnmFlyBreath] run function asa_animator:teo/anim/flying_breath/main
    # 着地
    execute if entity @s[tag=AnmEndFly] run function asa_animator:teo/anim/end_fly/main

    # 火の粉飛ばし
    execute if entity @s[tag=AnmFlameLine] run function asa_animator:teo/anim/flame_line/main


## 粉塵纏い
    # 爆発薙ぎ
    execute if entity @s[tag=AnmBiteCL,tag=IsBomb] run function asa_animator:teo/anim/bite_charge_b_l/main
    execute if entity @s[tag=AnmBiteCR,tag=IsBomb] run function asa_animator:teo/anim/bite_charge_b_r/main
    
    # 薙ぎ払い粉塵爆発
    execute if entity @s[tag=AnmFlameLarge,tag=IsBomb] if score #mhdp_teo_lv AsaMatrix matches ..1 run function asa_animator:teo/anim/bomb_large/main
    execute if entity @s[tag=AnmFlameLarge,tag=IsBomb] if score #mhdp_teo_lv AsaMatrix matches 2.. run function asa_animator:teo/anim/bomb_large_2/main

    # 線形粉塵爆発
    execute if entity @s[tag=AnmBombLine] if score #mhdp_teo_lv AsaMatrix matches ..1 run function asa_animator:teo/anim/bomb_line/main
    execute if entity @s[tag=AnmBombLine] if score #mhdp_teo_lv AsaMatrix matches 2.. run function asa_animator:teo/anim/bomb_line_2/main

    # 粉塵爆発（バックステップ）
    execute if entity @s[tag=AnmBombStep] if score #mhdp_teo_lv AsaMatrix matches 2.. run function asa_animator:teo/anim/bomb_step/main

    # 粉塵まき散らし
    execute if entity @s[tag=AnmBombDashStart] run function asa_animator:teo/anim/bomb_dash_start/main
    execute if entity @s[tag=AnmBombDash] run function asa_animator:teo/anim/bomb_dash/main

    # ノヴァ
    execute if entity @s[tag=AnmNova] run function asa_animator:teo/anim/nova/main

    # 点火
    execute if entity @s[tag=AnmIgnite] run function asa_animator:teo/anim/ignite/main

## その他
    # 登場
    execute if entity @s[tag=AnmSummon] run function asa_animator:teo/anim/summon/main
    # 着地
    execute if entity @s[tag=AnmSummonEndFly] run function asa_animator:teo/anim/summon_end_fly/main
    # 咆哮
    execute if entity @s[tag=AnmVoice] run function asa_animator:teo/anim/voice/main
    # 状態変化
    execute if entity @s[tag=AnmCharge] run function asa_animator:teo/anim/charge/main
    # 討伐
    execute if entity @s[tag=AnmDeath] run function asa_animator:teo/anim/death/main
    # 飛行中討伐
    execute if entity @s[tag=AnmFlyDeath] run function asa_animator:teo/anim/flying_death/main
    # 大怯み（纏い解除）
    execute if entity @s[tag=AnmSpDamage] run function asa_animator:teo/anim/damage_head/main
    # 頭部位破壊
    execute if entity @s[tag=AnmDHead] run function asa_animator:teo/anim/destroy_head/main
    # 胴部位破壊
    execute if entity @s[tag=AnmDBody] run function asa_animator:teo/anim/destroy_body/main
    # 尻尾部位破壊
    execute if entity @s[tag=AnmDTail] run function asa_animator:teo/anim/destroy_tail/main
    # 飛行中怯み
    execute if entity @s[tag=AnmFlyDamage] run function asa_animator:teo/anim/flying_damage/main
    # 怒り
    # execute if entity @s[tag=AnmAnger] run function asa_animator:teo/anim/anger/main
    # 飛行中怒り
    # execute if entity @s[tag=AnmFlyAnger] run function asa_animator:teo/anim/flying_anger/main