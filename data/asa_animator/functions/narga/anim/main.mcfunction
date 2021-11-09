

# 待機
execute if predicate asa_animator:narga/stay run function asa_animator:narga/anim/stay/main

# 尻尾回転
execute if entity @s[tag=AnmTailSpin] run function asa_animator:narga/anim/tail_spin/main

# 尻尾ビターン
execute if entity @s[tag=AnmTailBitan] run function asa_animator:narga/anim/tail_bitan/main

# 尻尾振り
execute if entity @s[tag=AnmTailWhip] run function asa_animator:narga/anim/tail_whip/main

# 尾棘発射

# 移動
# 噛みつき

# バックステップ

# 左回り込み
execute if entity @s[tag=AnmJumpL] run function asa_animator:narga/anim/jump_move_l/main
# 右ブレード
execute if entity @s[tag=AnmBladeR] run function asa_animator:narga/anim/blade_r/main
# 右回り込み
execute if entity @s[tag=AnmJumpR] run function asa_animator:narga/anim/jump_move_r/main
# 左ブレード
execute if entity @s[tag=AnmBladeL] run function asa_animator:narga/anim/blade_l/main

# 移動開始
execute if entity @s[tag=AnmMoveStart] run function asa_animator:narga/anim/move_start/main
# 移動回り込み
execute if entity @s[tag=AnmMove] run function asa_animator:narga/anim/move/main
# 2連噛みつき
execute if entity @s[tag=AnmBite2] run function asa_animator:narga/anim/bite_2/main
# 飛び込み
execute if entity @s[tag=AnmTackle] run function asa_animator:narga/anim/tackle/main