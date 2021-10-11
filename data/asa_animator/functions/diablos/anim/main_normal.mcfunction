
# 待機
execute if predicate asa_animator:diablos/stay run function asa_animator:diablos/anim/normal/stay/main

# 頭振り回し
execute if entity @s[tag=AnmAttack] run function asa_animator:diablos/anim/normal/head/main

# 頭突き刺し
execute if entity @s[tag=AnmHead] run function asa_animator:diablos/anim/normal/head_horne/main

# タックル
execute if entity @s[tag=AnmTackle] run function asa_animator:diablos/anim/normal/tackle/main

# 尻尾回転
execute if entity @s[tag=AnmTailSpin] run function asa_animator:diablos/anim/normal/tail_spin/main

# 尻尾叩きつけ
execute if entity @s[tag=AnmTailWhip] run function asa_animator:diablos/anim/normal/tail_whip/main

# 短距離突進
execute if entity @s[tag=AnmShortDash] run function asa_animator:diablos/anim/normal/short_dash/main

# 歩き→短距離突進
execute if entity @s[tag=AnmWalk] run function asa_animator:diablos/anim/normal/walk/main
execute if entity @s[tag=AnmShortDashC] run function asa_animator:diablos/anim/normal/short_dash_combo/main

# 移動→噛みつき
execute if entity @s[tag=AnmMove] run function asa_animator:diablos/anim/normal/move/main
execute if entity @s[tag=AnmBite] run function asa_animator:diablos/anim/normal/bite/main

# 突進開始（構え）
execute if entity @s[tag=AnmStartD1] run function asa_animator:diablos/anim/normal/startdash1/main
# 突進開始（足踏み）
execute if entity @s[tag=AnmStartD2] run function asa_animator:diablos/anim/normal/startdash2/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:diablos/anim/normal/dash/main
# 突進後角振り上げ
execute if entity @s[tag=AnmDashAttack] run function asa_animator:diablos/anim/normal/dash_attack/main
# 突進後停止
execute if entity @s[tag=AnmDashStop] run function asa_animator:diablos/anim/normal/dash_stop/main

# 潜航開始
execute if entity @s[tag=AnmDive] run function asa_animator:diablos/anim/normal/dive/main
# 飛び出し
execute if entity @s[tag=AnmDiveJump] run function asa_animator:diablos/anim/normal/dive_jump/main