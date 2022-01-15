
## 地上

# 風弾ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:kushala/anim/breath/main

# 2連噛みつき
execute if entity @s[tag=AnmBiteL] run function asa_animator:kushala/anim/bite_l/main
execute if entity @s[tag=AnmBiteR] run function asa_animator:kushala/anim/bite_r/main
# チャージ噛みつき
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

## その他

# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:kushala/anim/voice/main