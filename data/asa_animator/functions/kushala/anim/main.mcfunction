
## 地上

# サイドステップ
execute if entity @s[tag=AnmStepL] run function asa_animator:kushala/anim/step_l/main
execute if entity @s[tag=AnmStepR] run function asa_animator:kushala/anim/step_r/main
# サイドステップ（回り込み）
execute if entity @s[tag=AnmStepTL] run function asa_animator:kushala/anim/step_turn_l/main
execute if entity @s[tag=AnmStepTR] run function asa_animator:kushala/anim/step_turn_r/main

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

# とびかかり
execute if entity @s[tag=AnmJump] run function asa_animator:kushala/anim/jump/main

# 突進
execute if entity @s[tag=AnmDashStart] run function asa_animator:kushala/anim/dash_start/main
execute if entity @s[tag=AnmDash] run function asa_animator:kushala/anim/dash/main
execute if entity @s[tag=AnmDashStop] run function asa_animator:kushala/anim/dash_stop/main

# 風弾ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:kushala/anim/breath/main
# 落下ブレス
execute if entity @s[tag=AnmBreathU] run function asa_animator:kushala/anim/breath_up/main
# 風薙ぎブレス
execute if entity @s[tag=AnmBreathV] run function asa_animator:kushala/anim/breath_v/main


## その他
# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:kushala/anim/voice/main
