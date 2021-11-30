
# 叩きつけパンチ・左手
execute if entity @s[tag=AnmPunchL] run function asa_animator:brachy/anim/punch_l/main

# 振り返り叩きつけパンチ・左手
execute if entity @s[tag=AnmPunchTurnL] run function asa_animator:brachy/anim/punch_turn_l/main

# フック・左手
execute if entity @s[tag=AnmHookL] run function asa_animator:brachy/anim/hook_l/main

# 回り込み・左
execute if entity @s[tag=AnmTurnL] run function asa_animator:brachy/anim/turn_l/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:brachy/anim/move/main
# アッパー・左手
execute if entity @s[tag=AnmMovePunchL] run function asa_animator:brachy/anim/move_punch_l/main

# ジャンプ
execute if entity @s[tag=AnmJump] run function asa_animator:brachy/anim/jump/main

# 田植え
execute if entity @s[tag=AnmPlanting] run function asa_animator:brachy/anim/planting/main

# 頭突き前進
execute if entity @s[tag=AnmHead] run function asa_animator:brachy/anim/head/main

# 尻尾振り回し
execute if entity @s[tag=AnmTail] run function asa_animator:brachy/anim/tail/main