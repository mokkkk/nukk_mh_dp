
# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:tiga/anim/bite/main
# 2連噛みつき
execute if entity @s[tag=AnmBite2] run function asa_animator:tiga/anim/bite_2/main

# 腕薙ぎ払い・左
execute if entity @s[tag=AnmHandL] run function asa_animator:tiga/anim/hand_l/main
# 腕薙ぎ払い・右
execute if entity @s[tag=AnmHandR] run function asa_animator:tiga/anim/hand_r/main

# 岩飛ばし
execute if entity @s[tag=AnmShotL] run function asa_animator:tiga/anim/shot_l/main

# 回転
execute if entity @s[tag=AnmSpin] run function asa_animator:tiga/anim/spin/main

# 飛びつき
execute if entity @s[tag=AnmJump] run function asa_animator:tiga/anim/jump/main

# 突進開始
execute if entity @s[tag=AnmDashStart] run function asa_animator:tiga/anim/dash_start/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:tiga/anim/dash/main
# 突進キャンセル飛びつき
execute if entity @s[tag=AnmDashJump] run function asa_animator:tiga/anim/dash_jump/main
# 突進振りむき
execute if entity @s[tag=AnmDashTurnLN] run function asa_animator:tiga/anim/dash_turn_l_n/main
execute if entity @s[tag=AnmDashTurnRN] run function asa_animator:tiga/anim/dash_turn_r_n/main
execute if entity @s[tag=AnmDashTurnLS] run function asa_animator:tiga/anim/dash_turn_l_s/main
execute if entity @s[tag=AnmDashTurnRS] run function asa_animator:tiga/anim/dash_turn_r_s/main
# 突進キャンセル（フィニッシュ）
execute if entity @s[tag=AnmDashStop] run function asa_animator:tiga/anim/dash_stop/main
# 突進キャンセル岩飛ばし
execute if entity @s[tag=AnmShotCL] run function asa_animator:tiga/anim/shot_combo_l/main
# 突進噛みつき（フィニッシュ）
execute if entity @s[tag=AnmDashBite] run function asa_animator:tiga/anim/dash_bite/main
# 突進回転（フィニッシュ）
execute if entity @s[tag=AnmDashSpin] run function asa_animator:tiga/anim/dash_spin/main

# 咆哮・前方
execute if entity @s[tag=AnmVoice] run function asa_animator:tiga/anim/voice/main