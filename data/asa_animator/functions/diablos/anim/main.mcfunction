
# 頭振り回し
execute if entity @s[tag=AnmAttack] run function asa_animator:diablos/anim/attack/main

# 頭突き刺し
execute if entity @s[tag=AnmHead] run function asa_animator:diablos/anim/horn/main

# タックル
execute if entity @s[tag=AnmTackleL] run function asa_animator:diablos/anim/tackle_l/main
execute if entity @s[tag=AnmTackleR] run function asa_animator:diablos/anim/tackle_r/main

# 尻尾回転
# execute if entity @s[tag=AnmTailSpin] run function asa_animator:diablos/anim/normal/tail_spin/main

# 尻尾ぶんぶん
execute if entity @s[tag=AnmTailWhip] run function asa_animator:diablos/anim/tail_whip/main

# 尻尾叩きつけ（岩飛ばし）
execute if entity @s[tag=AnmTailShot] run function asa_animator:diablos/anim/tail_shot/main

# 短距離突進
execute if entity @s[tag=AnmShortDash] run function asa_animator:diablos/anim/short_dash/main

# 歩き→短距離突進
execute if entity @s[tag=AnmWalkL] run function asa_animator:diablos/anim/walk_l/main
# execute if entity @s[tag=AnmWalkR] run function asa_animator:diablos/anim/walk_r/main
execute if entity @s[tag=AnmShortDashC] run function asa_animator:diablos/anim/short_dash_combo/main

# 移動→噛みつき
# execute if entity @s[tag=AnmMove] run function asa_animator:diablos/anim/normal/move/main
# execute if entity @s[tag=AnmBite] run function asa_animator:diablos/anim/normal/bite/main

# 突進開始（構え）
# execute if entity @s[tag=AnmStartD1] run function asa_animator:diablos/anim/normal/startdash1/main
# 突進開始（足踏み）
# execute if entity @s[tag=AnmStartD2] run function asa_animator:diablos/anim/normal/startdash2/main
# 突進
# execute if entity @s[tag=AnmDash] run function asa_animator:diablos/anim/normal/dash/main
# 突進後角振り上げ
# execute if entity @s[tag=AnmDashAttack] run function asa_animator:diablos/anim/normal/dash_attack/main
# 突進後停止
# execute if entity @s[tag=AnmDashStop] run function asa_animator:diablos/anim/normal/dash_stop/main
# 突進軸合わせ
# execute if entity @s[tag=AnmDashTurn] run function asa_animator:diablos/anim/normal/dash_turn/main

# 潜航開始
# execute if entity @s[tag=AnmDive] run function asa_animator:diablos/anim/normal/dive/main
# 飛び出し
# execute if entity @s[tag=AnmDiveJump] run function asa_animator:diablos/anim/normal/dive_jump/main