# アニメーション倍率： 基本 *0.85

# 叩きつけパンチ・左手
execute if entity @s[tag=AnmPunchL] run function asa_animator:brachyr/anim/punch_l/main
# 叩きつけパンチ・右手
execute if entity @s[tag=AnmPunchR] run function asa_animator:brachyr/anim/punch_r/main

# 振り返り叩きつけパンチ・左手
execute if entity @s[tag=AnmPunchTurnL] run function asa_animator:brachyr/anim/punch_turn_l/main
# 振り返り叩きつけパンチ・右手
execute if entity @s[tag=AnmPunchTurnR] run function asa_animator:brachyr/anim/punch_turn_r/main

# 叩きつけなぎ払いパンチ・右手

# フック・左手
execute if entity @s[tag=AnmHookL] run function asa_animator:brachyr/anim/hook_l/main
# フック・右手
execute if entity @s[tag=AnmHookR] run function asa_animator:brachyr/anim/hook_r/main

# 回り込み・左
execute if entity @s[tag=AnmTurnL] run function asa_animator:brachyr/anim/turn_l/main
# 回り込み・右
execute if entity @s[tag=AnmTurnR] run function asa_animator:brachyr/anim/turn_r/main

# アッパー・左手
execute if entity @s[tag=AnmMovePunchL] run function asa_animator:brachyr/anim/move_punch_l/main
# アッパー・右手
execute if entity @s[tag=AnmMovePunchR] run function asa_animator:brachyr/anim/move_punch_r/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:brachyr/anim/move/main

# ジャンプ
execute if entity @s[tag=AnmJump] run function asa_animator:brachyr/anim/jump/main

# 田植え
execute if entity @s[tag=AnmPlanting] run function asa_animator:brachyr/anim/planting/main

# 頭突き前進
execute if entity @s[tag=AnmHead] run function asa_animator:brachyr/anim/head/main

# 叩きつけ頭突き
execute if entity @s[tag=AnmHeadBomb] run function asa_animator:brachyr/anim/head_bomb/main

# 尻尾叩きつけ
execute if entity @s[tag=AnmTail] run function asa_animator:brachyr/anim/tail/main

# 2連アッパー
execute if entity @s[tag=AnmUpper] run function asa_animator:brachyr/anim/upper_2/main

# ドーザー

# 粘菌活性広範囲爆破


# 臨界粘菌設置咆哮

# 臨界粘菌起爆咆哮


# 怒り遷移
execute if entity @s[tag=AnmAnger] run function asa_animator:brachyr/anim/anger/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:brachyr/anim/summon/main
# 討伐
execute if entity @s[tag=AnmDeath] run function asa_animator:brachyr/anim/death/main
# 頭部部位破壊
execute if entity @s[tag=AnmDHead] run function asa_animator:brachyr/anim/destroy_head/main
# 左腕部位破壊
execute if entity @s[tag=AnmDArmL] run function asa_animator:brachyr/anim/destroy_arm_l/main
# 右腕部位破壊
execute if entity @s[tag=AnmDArmR] run function asa_animator:brachyr/anim/destroy_arm_r/main
# 尻尾部位破壊
execute if entity @s[tag=AnmDTail] run function asa_animator:brachyr/anim/destroy_tail/main