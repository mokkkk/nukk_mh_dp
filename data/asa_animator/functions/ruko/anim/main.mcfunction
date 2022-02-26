
## 共通
    # サイドステップ
    execute if entity @s[tag=AnmStepL] run function asa_animator:ruko/anim/step_l/main
    execute if entity @s[tag=AnmStepR] run function asa_animator:ruko/anim/step_r/main

    # 噛みつき
    execute if entity @s[tag=AnmBite] run function asa_animator:ruko/anim/bite/main
    # 2連噛みつき
    execute if entity @s[tag=AnmBite2L] run function asa_animator:ruko/anim/bite_2_l/main
    execute if entity @s[tag=AnmBite2R] run function asa_animator:ruko/anim/bite_2_r/main
    # 龍薙ぎ
    execute if entity @s[tag=AnmBiteCL] run function asa_animator:ruko/anim/bite_charge_l/main
    execute if entity @s[tag=AnmBiteCR] run function asa_animator:ruko/anim/bite_charge_r/main
    
    # ひっかき
    execute if entity @s[tag=AnmClawL] run function asa_animator:ruko/anim/claw_l/main
    execute if entity @s[tag=AnmClawR] run function asa_animator:ruko/anim/claw_r/main
    # 連続ひっかき
    execute if entity @s[tag=AnmClawCL] run function asa_animator:ruko/anim/claw_c_l/main
    execute if entity @s[tag=AnmClawCR] run function asa_animator:ruko/anim/claw_c_r/main
    # 龍ひっかき
    execute if entity @s[tag=AnmClawDL] run function asa_animator:ruko/anim/claw_dragon_l/main
    execute if entity @s[tag=AnmClawDR] run function asa_animator:ruko/anim/claw_dragon_r/main

    # 突進
    execute if entity @s[tag=AnmDashStart] run function asa_animator:ruko/anim/dash_start/main
    execute if entity @s[tag=AnmDash] run function asa_animator:ruko/anim/dash/main
    execute if entity @s[tag=AnmDashStop] run function asa_animator:ruko/anim/dash_stop/main

    # 飛び掛かり
    execute if entity @s[tag=AnmJump] run function asa_animator:ruko/anim/jump/main

    # ボディプレス
    execute if entity @s[tag=AnmPress] run function asa_animator:ruko/anim/press/main

## 磁力纏い lv1
    # 

## 磁力纏い lv2
    # 

## その他
    # 登場歩き
    # execute if entity @s[tag=AnmSummon] run function asa_animator:ruko/anim/summon/main
    # 咆哮
    execute if entity @s[tag=AnmVoice] run function asa_animator:ruko/anim/voice/main
    # 霞纏い
    # execute if entity @s[tag=AnmCharge] run function asa_animator:ruko/anim/charge/main
    # 討伐
    # execute if entity @s[tag=AnmDeath] run function asa_animator:ruko/anim/death/main
    # 飛行中討伐
    # execute if entity @s[tag=AnmFlyDeath] run function asa_animator:ruko/anim/flying_death/main
    # 大怯み（磁力纏い解除）
    # execute if entity @s[tag=AnmSpDamage] run function asa_animator:ruko/anim/sp_damage/main
    # 頭部位破壊
    # execute if entity @s[tag=AnmDHead] run function asa_animator:ruko/anim/destroy_head/main
    # 胴部位破壊
    # execute if entity @s[tag=AnmDBody] run function asa_animator:ruko/anim/destroy_body/main
    # 尻尾部位破壊
    # execute if entity @s[tag=AnmDTail] run function asa_animator:ruko/anim/destroy_tail/main
    # 飛行中怯み
    # execute if entity @s[tag=AnmFlyDamage] run function asa_animator:ruko/anim/flying_damage/main
    # 怒り
    # execute if entity @s[tag=AnmAnger] run function asa_animator:ruko/anim/anger/main