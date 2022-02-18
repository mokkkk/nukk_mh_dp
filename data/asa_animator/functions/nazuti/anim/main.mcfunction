
## 共通
    # 移動
    execute if entity @s[tag=AnmMoveStart] run function asa_animator:nazuti/anim/move_start/main
    execute if entity @s[tag=AnmMove] run function asa_animator:nazuti/anim/move/main

    # ひっかき
    execute if entity @s[tag=AnmClawL] run function asa_animator:nazuti/anim/claw_l/main
    execute if entity @s[tag=AnmClawR] run function asa_animator:nazuti/anim/claw_r/main

    # 尻尾叩きつけ
    execute if entity @s[tag=AnmTail] run function asa_animator:nazuti/anim/tail/main

    # 飛び掛かり
    execute if entity @s[tag=AnmJump] run function asa_animator:nazuti/anim/jump/main

    # 突進
    execute if entity @s[tag=AnmDashStart] run function asa_animator:nazuti/anim/dash_start/main
    execute if entity @s[tag=AnmDash] run function asa_animator:nazuti/anim/dash/main

    # ボディプレス
    execute if entity @s[tag=AnmPress] run function asa_animator:nazuti/anim/press/main

    # 舌伸ばし
    execute if entity @s[tag=AnmTongueL] run function asa_animator:nazuti/anim/tongue_l/main
    execute if entity @s[tag=AnmTongueR] run function asa_animator:nazuti/anim/tongue_r/main
    # 舌薙ぎ払い
    execute if entity @s[tag=AnmTongueLL] run function asa_animator:nazuti/anim/tongue_large_l/main
    execute if entity @s[tag=AnmTongueLR] run function asa_animator:nazuti/anim/tongue_large_r/main

    # 頭突き薙ぎ払い
    execute if entity @s[tag=AnmHeadL] run function asa_animator:nazuti/anim/head_l/main
    execute if entity @s[tag=AnmHeadR] run function asa_animator:nazuti/anim/head_r/main

    # 毒弾ブレス
    execute if entity @s[tag=AnmBreathB] run function asa_animator:nazuti/anim/breath_ball/main

    # 霧ブレス
    execute if entity @s[tag=AnmBreathF] run function asa_animator:nazuti/anim/breath_fog/main

    # 霧展開
    execute if entity @s[tag=AnmFogF] run function asa_animator:nazuti/anim/fog_forward/main
    execute if entity @s[tag=AnmFogB] run function asa_animator:nazuti/anim/fog_back/main


## 霞纏い lv1
    # 2連毒弾ブレス
    execute if entity @s[tag=AnmBreathB2] run function asa_animator:nazuti/anim/breath_ball_2/main

    # 疲労霧ブレス
    execute if entity @s[tag=AnmBreathFH] run function asa_animator:nazuti/anim/breath_fog_h/main
    # 盲目霧ブレス
    execute if entity @s[tag=AnmBreathFB] run function asa_animator:nazuti/anim/breath_fog_b/main

    # ジャンプブレス
    execute if entity @s[tag=AnmBreathJ] run function asa_animator:nazuti/anim/breath_jump/main

    # 霧移動
    execute if entity @s[tag=AnmWindG] run function asa_animator:nazuti/anim/wind_gather/main
    execute if entity @s[tag=AnmWindS] run function asa_animator:nazuti/anim/wind_spread/main
    execute if entity @s[tag=AnmWindT] run function asa_animator:nazuti/anim/wind_target/main

    # ステルス
    execute if entity @s[tag=AnmStealth] run function asa_animator:nazuti/anim/stealth_start/main
    # 移動
    execute if entity @s[tag=AnmStealthMoveL] run function asa_animator:nazuti/anim/stealth_move_l/main
    execute if entity @s[tag=AnmStealthMoveR] run function asa_animator:nazuti/anim/stealth_move_r/main
    execute if entity @s[tag=AnmStealthMoveB] run function asa_animator:nazuti/anim/stealth_move_back/main

    # カウンター
    execute if entity @s[tag=AnmCounterMove] run function asa_animator:nazuti/anim/counter_move/main
    execute if entity @s[tag=AnmCounterBreath] run function asa_animator:nazuti/anim/counter_breath/main

## その他
    # 登場
    # execute if entity @s[tag=AnmSummon] run function asa_animator:nazuti/anim/summon/main
    # 着地
    # execute if entity @s[tag=AnmSummonEndFly] run function asa_animator:nazuti/anim/summon_end_fly/main
    # 咆哮
    # execute if entity @s[tag=AnmVoice] run function asa_animator:nazuti/anim/voice/main
    # 霞纏い
    execute if entity @s[tag=AnmCharge] run function asa_animator:nazuti/anim/charge/main
    # 討伐
    # execute if entity @s[tag=AnmDeath] run function asa_animator:nazuti/anim/death/main
    # 飛行中討伐
    # execute if entity @s[tag=AnmFlyDeath] run function asa_animator:nazuti/anim/flying_death/main
    # 大怯み（風纏い解除）
    # execute if entity @s[tag=AnmSpDamage] run function asa_animator:nazuti/anim/damage_head/main
    # 頭部位破壊
    # execute if entity @s[tag=AnmDHead] run function asa_animator:nazuti/anim/destroy_head/main
    # 胴部位破壊
    # execute if entity @s[tag=AnmDBody] run function asa_animator:nazuti/anim/destroy_body/main
    # 尻尾部位破壊
    # execute if entity @s[tag=AnmDTail] run function asa_animator:nazuti/anim/destroy_tail/main
    # 飛行中怯み
    # execute if entity @s[tag=AnmFlyDamage] run function asa_animator:nazuti/anim/flying_damage/main
    # 怒り
    # execute if entity @s[tag=AnmAnger] run function asa_animator:nazuti/anim/anger/main
    # 飛行中怒り
    # execute if entity @s[tag=AnmFlyAnger] run function asa_animator:nazuti/anim/flying_anger/main