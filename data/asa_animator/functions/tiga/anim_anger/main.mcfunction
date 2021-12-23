
# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:tiga/anim_anger/bite/main
# 2連噛みつき
execute if entity @s[tag=AnmBite2] run function asa_animator:tiga/anim_anger/bite_2/main

# 腕薙ぎ払い・左
execute if entity @s[tag=AnmHandL] run function asa_animator:tiga/anim_anger/hand_l/main
# 腕薙ぎ払い・右
execute if entity @s[tag=AnmHandR] run function asa_animator:tiga/anim_anger/hand_r/main

# 岩飛ばし
execute if entity @s[tag=AnmShotL] run function asa_animator:tiga/anim_anger/shot_l/main

# 回転
execute if entity @s[tag=AnmSpin] run function asa_animator:tiga/anim_anger/spin/main

# 飛びつき
execute if entity @s[tag=AnmJump] run function asa_animator:tiga/anim_anger/jump/main

# 突進開始
execute if entity @s[tag=AnmDashStart] run function asa_animator:tiga/anim_anger/dash_start/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:tiga/anim_anger/dash/main
# 突進キャンセル飛びつき
execute if entity @s[tag=AnmDashJump] run function asa_animator:tiga/anim_anger/dash_jump/main
# 突進振りむき
execute if entity @s[tag=AnmDashTurnLN] run function asa_animator:tiga/anim_anger/dash_turn_l_n/main
execute if entity @s[tag=AnmDashTurnRN] run function asa_animator:tiga/anim_anger/dash_turn_r_n/main
execute if entity @s[tag=AnmDashTurnLS] run function asa_animator:tiga/anim_anger/dash_turn_l_s/main
execute if entity @s[tag=AnmDashTurnRS] run function asa_animator:tiga/anim_anger/dash_turn_r_s/main
# 突進キャンセル（フィニッシュ）
execute if entity @s[tag=AnmDashStop] run function asa_animator:tiga/anim_anger/dash_stop/main
# 突進キャンセル岩飛ばし
execute if entity @s[tag=AnmShotCL] run function asa_animator:tiga/anim_anger/shot_combo_l/main
# 突進噛みつき（フィニッシュ）
execute if entity @s[tag=AnmDashBite] run function asa_animator:tiga/anim_anger/dash_bite/main
# 突進回転（フィニッシュ）
execute if entity @s[tag=AnmDashSpin] run function asa_animator:tiga/anim_anger/dash_spin/main

# バックステップ
execute if entity @s[tag=AnmBStep] run function asa_animator:tiga/anim/backstep/main

# 咆哮・前方
execute if entity @s[tag=AnmVoice] run function asa_animator:tiga/anim/voice/main
# 咆哮・上方
execute if entity @s[tag=AnmVoice2] run function asa_animator:tiga/anim/voice_2/main

# バックステップ（怒り）
execute if entity @s[tag=AnmBStepA] run function asa_animator:tiga/anim/backstep_anger/main
# 咆哮・上方（怒り）
execute if entity @s[tag=AnmAnger] run function asa_animator:tiga/anim/anger/main

# 頭部位破壊
execute if entity @s[tag=AnmDHead] run function asa_animator:tiga/anim/destroy_head/main
# 左腕部位破壊
execute if entity @s[tag=AnmDArmL] run function asa_animator:tiga/anim/destroy_arm_l/main
# 右腕部位破壊
execute if entity @s[tag=AnmDArmR] run function asa_animator:tiga/anim/destroy_arm_r/main
# 尻尾部位破壊
execute if entity @s[tag=AnmDTail] run function asa_animator:tiga/anim/destroy_tail/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:tiga/anim/summon/main
# 討伐
execute if entity @s[tag=AnmDeath] run function asa_animator:tiga/anim/death/main