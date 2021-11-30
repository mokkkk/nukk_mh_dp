
# 叩きつけパンチ・左手
execute if entity @s[tag=AnmPunchL] run function asa_animator:brachy/anim/punch_l/main
# 叩きつけパンチ・右手
execute if entity @s[tag=AnmPunchR] run function asa_animator:brachy/anim/punch_r/main

# 振り返り叩きつけパンチ・左手
execute if entity @s[tag=AnmPunchTurnL] run function asa_animator:brachy/anim/punch_turn_l/main
# 振り返り叩きつけパンチ・右手
execute if entity @s[tag=AnmPunchTurnR] run function asa_animator:brachy/anim/punch_turn_r/main

# フック・左手
execute if entity @s[tag=AnmHookL] run function asa_animator:brachy/anim/hook_l/main
# フック・右手
execute if entity @s[tag=AnmHookR] run function asa_animator:brachy/anim/hook_r/main

# 回り込み・左
execute if entity @s[tag=AnmTurnL] run function asa_animator:brachy/anim/turn_l/main
# 回り込み・右
execute if entity @s[tag=AnmTurnR] run function asa_animator:brachy/anim/turn_r/main

# アッパー・左手
execute if entity @s[tag=AnmMovePunchL] run function asa_animator:brachy/anim/move_punch_l/main
# アッパー・右手
execute if entity @s[tag=AnmMovePunchR] run function asa_animator:brachy/anim/move_punch_r/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:brachy/anim/move/main

# ジャンプ
execute if entity @s[tag=AnmJump] run function asa_animator:brachy/anim/jump/main

# 田植え
execute if entity @s[tag=AnmPlanting] run function asa_animator:brachy/anim/planting/main

# 頭突き前進
execute if entity @s[tag=AnmHead] run function asa_animator:brachy/anim/head/main

# 叩きつけ頭突き
execute if entity @s[tag=AnmHeadBomb] run function asa_animator:brachy/anim/head_bomb/main

# 線状爆破
execute if entity @s[tag=AnmHeadShot] run function asa_animator:brachy/anim/head_bomb_shot/main

# 広範囲爆破
execute if entity @s[tag=AnmHeadTrap] run function asa_animator:brachy/anim/head_trap/main


# 尻尾振り回し
execute if entity @s[tag=AnmTail] run function asa_animator:brachy/anim/tail/main


# 怒り遷移
execute if entity @s[tag=AnmAnger] run function asa_animator:brachy/anim/anger/main