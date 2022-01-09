
# パーティクル
execute as @e[type=armor_stand,tag=DiablosParts,tag=HeadU] at @s positioned ^ ^0.8 ^1 run particle smoke ~ ~ ~ 0.3 0.1 0.3 0.01 1

# 待機
execute if predicate asa_animator:diablos/stay run function asa_animator:diablos/anim/anger/stay/main

# 頭振り回し
execute if entity @s[tag=AnmAttack] run function asa_animator:diablos/anim/anger/head/main

# 頭突き刺し
execute if entity @s[tag=AnmHead] run function asa_animator:diablos/anim/anger/head_horne/main

# タックル
execute if entity @s[tag=AnmTackle] run function asa_animator:diablos/anim/anger/tackle/main

# 尻尾回転
execute if entity @s[tag=AnmTailSpin] run function asa_animator:diablos/anim/anger/tail_spin/main

# 尻尾叩きつけ
execute if entity @s[tag=AnmTailWhip] run function asa_animator:diablos/anim/anger/tail_whip/main

# 短距離突進
execute if entity @s[tag=AnmShortDash] run function asa_animator:diablos/anim/anger/short_dash/main

# 歩き→短距離突進
execute if entity @s[tag=AnmWalk] run function asa_animator:diablos/anim/anger/walk/main
execute if entity @s[tag=AnmShortDashC] run function asa_animator:diablos/anim/anger/short_dash_combo/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:diablos/anim/anger/move/main

# 突進開始（構え）
execute if entity @s[tag=AnmStartD1] run function asa_animator:diablos/anim/anger/startdash1/main
# 突進開始（足踏み）
execute if entity @s[tag=AnmStartD2] run function asa_animator:diablos/anim/anger/startdash2/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:diablos/anim/anger/dash/main
# 突進後停止
execute if entity @s[tag=AnmDashStop] run function asa_animator:diablos/anim/anger/dash_stop/main
# 突進軸合わせ
execute if entity @s[tag=AnmDashTurn] run function asa_animator:diablos/anim/anger/dash_turn/main

# 潜航開始
execute if entity @s[tag=AnmDive] run function asa_animator:diablos/anim/anger/dive/main
# 飛び出し
execute if entity @s[tag=AnmDiveJump] run function asa_animator:diablos/anim/anger/dive_jump/main