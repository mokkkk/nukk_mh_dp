
# 尻尾回転
execute if entity @s[tag=AnmTail] run function asa_animator:reia/anim/tail_spin/main

# 3Wayブレス
execute if entity @s[tag=AnmBreath3] run function asa_animator:reia/anim/breath_3/main

# 突進開始
execute if entity @s[tag=AnmDashStart] run function asa_animator:reia/anim/start_dash/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:reia/anim/dash/main
# 突進振り向き
execute if entity @s[tag=AnmDashTurn] run function asa_animator:reia/anim/dash_turn/main
# 突進噛みつき
execute if entity @s[tag=AnmDashBite] run function asa_animator:reia/anim/dash_bite/main