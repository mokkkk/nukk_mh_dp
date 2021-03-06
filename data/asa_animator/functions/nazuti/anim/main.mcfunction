
## 共通
    # 移動
    execute if entity @s[tag=AnmMoveStart] run function asa_animator:nazuti/anim/move_start/main
    execute if entity @s[tag=AnmMove] run function asa_animator:nazuti/anim/move/main
    # 車庫入れ
    execute if entity @s[tag=AnmMoveB] run function asa_animator:nazuti/anim/move_back/main

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
    execute if entity @s[tag=AnmTongueC] run function asa_animator:nazuti/anim/tongue_c/main
    execute if entity @s[tag=AnmTongueL] run function asa_animator:nazuti/anim/tongue_l/main
    execute if entity @s[tag=AnmTongueR] run function asa_animator:nazuti/anim/tongue_r/main
    # 舌薙ぎ払い
    execute if entity @s[tag=AnmTongueLC] run function asa_animator:nazuti/anim/tongue_large_c/main
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
    execute if entity @s[tag=AnmCounterBreath] if score #mhdp_nazuti_lv AsaMatrix matches ..1 run function asa_animator:nazuti/anim/counter_breath/main
    execute if entity @s[tag=AnmCounterBreath] if score #mhdp_nazuti_lv AsaMatrix matches 2.. run function asa_animator:nazuti/anim/counter_breath_v/main

## 霧纏い lv2
    # 毒弾ブレス乱射
    execute if entity @s[tag=AnmBreathU] run function asa_animator:nazuti/anim/breath_up/main
    # 縦薙ぎ霧ブレス
    execute if entity @s[tag=AnmBreathFV] run function asa_animator:nazuti/anim/breath_fog_v/main

    # 2連ボディプレス
    execute if entity @s[tag=AnmPressC0] run function asa_animator:nazuti/anim/press_c_0/main
    execute if entity @s[tag=AnmPressC1] run function asa_animator:nazuti/anim/press_c_1/main

    # 2連頭突き
    execute if entity @s[tag=AnmHead2L] run function asa_animator:nazuti/anim/head_2_l/main
    execute if entity @s[tag=AnmHead2R] run function asa_animator:nazuti/anim/head_2_r/main

    # 霞隠し
    execute if entity @s[tag=AnmSp0] run function asa_animator:nazuti/anim/sp_attack_0/main
    execute if entity @s[tag=AnmSp1] run function asa_animator:nazuti/anim/sp_attack_1/main
    execute if entity @s[tag=AnmSp2] run function asa_animator:nazuti/anim/sp_attack_2/main
    execute if entity @s[tag=AnmSp3] run function asa_animator:nazuti/anim/sp_attack_3/main

## その他
    # 登場歩き
    execute if entity @s[tag=AnmSummon] run function asa_animator:nazuti/anim/summon/main
    # 邂逅
    execute if entity @s[tag=AnmVoice] run function asa_animator:nazuti/anim/voice/main
    # 霞纏い
    execute if entity @s[tag=AnmCharge] run function asa_animator:nazuti/anim/charge/main
    # 討伐
    execute if entity @s[tag=AnmDeath] run function asa_animator:nazuti/anim/death/main
    # 飛行中討伐
    execute if entity @s[tag=AnmFlyDeath] run function asa_animator:nazuti/anim/flying_death/main
    # 大怯み（霞纏い解除）
    execute if entity @s[tag=AnmSpDamage] run function asa_animator:nazuti/anim/sp_damage/main
    # 頭部位破壊
    execute if entity @s[tag=AnmDHead] run function asa_animator:nazuti/anim/destroy_head/main
    # 胴部位破壊
    execute if entity @s[tag=AnmDBody] run function asa_animator:nazuti/anim/destroy_body/main
    # 尻尾部位破壊
    execute if entity @s[tag=AnmDTail] run function asa_animator:nazuti/anim/destroy_tail/main
    # 飛行中怯み
    execute if entity @s[tag=AnmFlyDamage] run function asa_animator:nazuti/anim/flying_damage/main
    # 怒り
    execute if entity @s[tag=AnmAnger] run function asa_animator:nazuti/anim/anger/main