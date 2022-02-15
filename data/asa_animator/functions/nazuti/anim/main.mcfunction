
## 共通
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

## 霞纏い lv1

## その他
    # 登場
    # execute if entity @s[tag=AnmSummon] run function asa_animator:nazuti/anim/summon/main
    # 着地
    # execute if entity @s[tag=AnmSummonEndFly] run function asa_animator:nazuti/anim/summon_end_fly/main
    # 咆哮
    # execute if entity @s[tag=AnmVoice] run function asa_animator:nazuti/anim/voice/main
    # 状態変化
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