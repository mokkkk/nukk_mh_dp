

# 待機
execute if predicate asa_animator:narga/stay run function asa_animator:narga/anim/stay/main

# 尻尾回転
execute if entity @s[tag=AnmTailSpin] run function asa_animator:narga/anim/tail_spin/main

# 尻尾ビターン
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmTailBitan] run function asa_animator:narga/anim/tail_bitan/main

# 尻尾振り
execute if entity @s[tag=AnmTailWhip] run function asa_animator:narga/anim/tail_whip/main

# 尾棘発射
execute if entity @s[tag=AnmTailShot] run function asa_animator:narga/anim/tail_shot/main

# 移動近づき
execute if entity @s[tag=AnmMoveS] run function asa_animator:narga/anim/move_s/main
# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:narga/anim/bite/main

# バックステップ
execute if entity @s[tag=AnmBStep] run function asa_animator:narga/anim/backstep/main

# 左回り込みブレード
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmJumpL] run function asa_animator:narga/anim/jump_move_l/main
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmBladeR] run function asa_animator:narga/anim/blade_r/main
# 右回り込みブレード
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmJumpR] run function asa_animator:narga/anim/jump_move_r/main
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmBladeL] run function asa_animator:narga/anim/blade_l/main

# 移動回り込み開始
execute if entity @s[tag=AnmMoveStart] run function asa_animator:narga/anim/move_start/main
# 移動回り込み
execute if entity @s[tag=AnmMove] run function asa_animator:narga/anim/move/main
# 2連噛みつき
execute if entity @s[tag=AnmBite2] run function asa_animator:narga/anim/bite_2/main
# 飛び込み
execute if entity @s[tag=AnmTackle] run function asa_animator:narga/anim/tackle/main


# 怒り時左回り込みブレード
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmJumpL] run function asa_animator:narga/anim/jump_move_l_anger/main
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmBladeR] run function asa_animator:narga/anim/blade_r_anger/main
# 怒り時右回り込みブレード
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmJumpR] run function asa_animator:narga/anim/jump_move_r_anger/main
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmBladeL] run function asa_animator:narga/anim/blade_l_anger/main

# 右ブレード→尻尾ビターン
execute if entity @s[tag=AnmBladeC] run function asa_animator:narga/anim/blade_r_combo/main
execute if entity @s[tag=AnmTailBitanC] run function asa_animator:narga/anim/tail_bitan_combo/main

# フェイント尻尾ビターン
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmTailBitan] run function asa_animator:narga/anim/tail_bitan_anger/main

# 怒り遷移
execute if entity @s[tag=AnmAngerMove] run function asa_animator:narga/anim/jump_move_anger/main
execute if entity @s[tag=AnmAngerVoice] run function asa_animator:narga/anim/voice_anger/main

# 疲れ
execute if entity @s[tag=AnmTired] run function asa_animator:narga/anim/tired/main