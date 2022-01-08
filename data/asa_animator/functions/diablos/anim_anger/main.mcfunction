
# 頭振り回し
execute if entity @s[tag=AnmAttack] run function asa_animator:diablos/anim_anger/attack/main

# 頭突き刺し
execute if entity @s[tag=AnmHead] run function asa_animator:diablos/anim_anger/horn/main

# タックル
execute if entity @s[tag=AnmTackleL] run function asa_animator:diablos/anim/tackle_l/main
execute if entity @s[tag=AnmTackleR] run function asa_animator:diablos/anim/tackle_r/main

# 尻尾回転
execute if entity @s[tag=AnmTailSpinL] run function asa_animator:diablos/anim/tail_spin_l/main
execute if entity @s[tag=AnmTailSpinR] run function asa_animator:diablos/anim/tail_spin_r/main

# 尻尾ぶんぶん
execute if entity @s[tag=AnmTailWhip] run function asa_animator:diablos/anim_anger/tail_whip/main

# 尻尾叩きつけ（岩飛ばし）
execute if entity @s[tag=AnmTailShot] run function asa_animator:diablos/anim_anger/tail_shot/main

# 短距離突進
execute if entity @s[tag=AnmShortDash] run function asa_animator:diablos/anim_anger/short_dash/main

# 歩き→短距離突進
execute if entity @s[tag=AnmWalkL] run function asa_animator:diablos/anim/walk_l/main
execute if entity @s[tag=AnmWalkR] run function asa_animator:diablos/anim/walk_r/main
execute if entity @s[tag=AnmShortDashC] run function asa_animator:diablos/anim_anger/short_dash_combo/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:diablos/anim/move/main

# 突進開始
execute if entity @s[tag=AnmDashStart] run function asa_animator:diablos/anim_anger/start_dash/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:diablos/anim_anger/dash/main
# 突進後角振り上げ
execute if entity @s[tag=AnmDashAttack] run function asa_animator:diablos/anim/dash_horn/main
# 突進軸合わせ
execute if entity @s[tag=AnmDashTurnL] run function asa_animator:diablos/anim/dash_turn_l/main
execute if entity @s[tag=AnmDashTurnR] run function asa_animator:diablos/anim/dash_turn_r/main

# 潜航開始
execute if entity @s[tag=AnmDive] run function asa_animator:diablos/anim_anger/dive/main
# 飛び出し
execute if entity @s[tag=AnmDiveJump] run function asa_animator:diablos/anim_anger/dive_jump/main

# 怒り開始
execute if entity @s[tag=AnmAnger] run function asa_animator:diablos/anim/anger/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:diablos/anim/summon/main
# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:diablos/anim/voice/main