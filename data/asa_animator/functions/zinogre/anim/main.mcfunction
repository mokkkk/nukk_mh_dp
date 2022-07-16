
# バックステップ
    execute if entity @s[tag=AnmBStep] run function asa_animator:zinogre/anim/bstep/main

# お手開始（後退）
    execute if entity @s[tag=AnmHandLS] run function asa_animator:zinogre/anim/hand_l_start/main
    execute if entity @s[tag=AnmHandRS] run function asa_animator:zinogre/anim/hand_r_start/main
# お手開始（前進）
    execute if entity @s[tag=AnmHandLSS] run function asa_animator:zinogre/anim/hand_l_start_step/main
    execute if entity @s[tag=AnmHandRSS] run function asa_animator:zinogre/anim/hand_r_start_step/main
    # お手2段目以降
        execute if entity @s[tag=AnmHandL2R] run function asa_animator:zinogre/anim/hand_l_to_r/main
        execute if entity @s[tag=AnmHandR2L] run function asa_animator:zinogre/anim/hand_r_to_l/main
    # お手終了
        execute if entity @s[tag=AnmHandLE] run function asa_animator:zinogre/anim/hand_l_end/main
        execute if entity @s[tag=AnmHandRE] run function asa_animator:zinogre/anim/hand_r_end/main
    # お手キャンセルチャージお手
        execute if entity @s[tag=AnmHandL2CHandR] run function asa_animator:zinogre/anim/hand_l_to_chargehand_r/main
        execute if entity @s[tag=AnmHandR2CHandL] run function asa_animator:zinogre/anim/hand_r_to_chargehand_l/main

# チャージお手
    execute if entity @s[tag=AnmCHandL] run function asa_animator:zinogre/anim/chargehand_l/main
    execute if entity @s[tag=AnmCHandR] run function asa_animator:zinogre/anim/chargehand_r/main

# ヘッドバット
    execute if entity @s[tag=AnmHeadL] run function asa_animator:zinogre/anim/head_l/main
    execute if entity @s[tag=AnmHeadR] run function asa_animator:zinogre/anim/head_r/main
    # ヘッドバット→お手開始
        execute if entity @s[tag=AnmHeadL2HandRS] run function asa_animator:zinogre/anim/head_l_to_hand_r_start/main
        execute if entity @s[tag=AnmHeadR2HandLS] run function asa_animator:zinogre/anim/head_r_to_hand_l_start/main
    # ヘッドバット→バックステップ
        execute if entity @s[tag=AnmHeadL2BStep] run function asa_animator:zinogre/anim/head_l_to_bstep/main
        execute if entity @s[tag=AnmHeadR2BStep] run function asa_animator:zinogre/anim/head_r_to_bstep/main

# ダッシュ
    execute if entity @s[tag=AnmDashStart] run function asa_animator:zinogre/anim/dash_start/main
    execute if entity @s[tag=AnmDash] run function asa_animator:zinogre/anim/dash/main
    execute if entity @s[tag=AnmDashStop] run function asa_animator:zinogre/anim/dash_stop/main

# 飛び掛かり
    execute if entity @s[tag=AnmJump] run function asa_animator:zinogre/anim/jump/main

# サイドタックル
    execute if entity @s[tag=AnmTackleL] run function asa_animator:zinogre/anim/tackle_l/main
    execute if entity @s[tag=AnmTackleR] run function asa_animator:zinogre/anim/tackle_r/main
    # サイドタックル→チャージお手
        execute if entity @s[tag=AnmTL2CHandL] run function asa_animator:zinogre/anim/tackle_l_to_chargehand_l/main
        execute if entity @s[tag=AnmTR2CHandR] run function asa_animator:zinogre/anim/tackle_r_to_chargehand_r/main

# ボディプレス
    execute if entity @s[tag=AnmPress] run function asa_animator:zinogre/anim/press/main

# サマーソルト
    execute if entity @s[tag=AnmSaultL] run function asa_animator:zinogre/anim/sault_l/main
    execute if entity @s[tag=AnmSaultR] run function asa_animator:zinogre/anim/sault_r/main

# 尻尾叩きつけ（前方）
    execute if entity @s[tag=AnmTailF] run function asa_animator:zinogre/anim/tail_forward/main

# 尻尾叩きつけ（後方）
    execute if entity @s[tag=AnmTailB] run function asa_animator:zinogre/anim/tail_back/main

# 尻尾なぎはらい
    execute if entity @s[tag=AnmTailWL] run function asa_animator:zinogre/anim/tail_whip_l/main
    execute if entity @s[tag=AnmTailWR] run function asa_animator:zinogre/anim/tail_whip_r/main

# 雷光虫弾
    execute if entity @s[tag=AnmShot] run function asa_animator:zinogre/anim/shot/main

# 背面プレス
    execute if entity @s[tag=AnmBackPress] run function asa_animator:zinogre/anim/back_press/main

# 回転爪
    execute if entity @s[tag=AnmSClaw] run function asa_animator:zinogre/anim/spin_claw/main
    # 回転爪→尻尾叩きつけ（前方）
        execute if entity @s[tag=AnmSClaw2TailF] run function asa_animator:zinogre/anim/spin_claw_to_tail_forward/main

# 雷爪
    execute if entity @s[tag=AnmLClawL] run function asa_animator:zinogre/anim/lightning_claw_l/main
    execute if entity @s[tag=AnmLClawR] run function asa_animator:zinogre/anim/lightning_claw_r/main

# 飛燕雷掌
    execute if entity @s[tag=AnmLHand0] run function asa_animator:zinogre/anim/lightning_hand_0/main
    execute if entity @s[tag=AnmLHand1] run function asa_animator:zinogre/anim/lightning_hand_1/main


# 帯電
    execute if entity @s[tag=AnmCharge] run function asa_animator:zinogre/anim/charge/main
# 超帯電
    execute if entity @s[tag=AnmChargeB] run function asa_animator:zinogre/anim/charge_burst/main



# 地上時討伐
execute if entity @s[tag=AnmDeath] run function asa_animator:zinogre/anim/death/main

# 飛行時討伐
execute if entity @s[tag=AnmFlyDeath] run function asa_animator:zinogre/anim/flying_death/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:zinogre/anim/summon/main
# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:zinogre/anim/voice/main
# 怒り
execute if entity @s[tag=AnmAnger] run function asa_animator:zinogre/anim/anger/main
# 飛行時怒り
execute if entity @s[tag=AnmFlyAnger] run function asa_animator:zinogre/anim/flying_voice/main

# 頭部破壊ひるみ
execute if entity @s[tag=AnmDHead] run function asa_animator:zinogre/anim/destroy_head/main
# 腕破壊ひるみ
execute if entity @s[tag=AnmDBody] run function asa_animator:zinogre/anim/destroy_body/main
# 尻尾破壊ひるみ
execute if entity @s[tag=AnmDTail] run function asa_animator:zinogre/anim/destroy_tail/main