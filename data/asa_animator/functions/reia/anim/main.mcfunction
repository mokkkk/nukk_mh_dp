
# 尻尾回転
execute if entity @s[tag=AnmTail] run function asa_animator:reia/anim/tail_spin/main

# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:reia/anim/bite/main

# 噛みつき+尻尾回転
execute if entity @s[tag=AnmBiteTail] run function asa_animator:reia/anim/bite_tail/main

# 3Wayブレス
execute if entity @s[tag=AnmBreath3] run function asa_animator:reia/anim/breath_3/main

# 着地Bjb
execute if entity @s[tag=AnmBjbLand] run function asa_animator:reia/anim/bjb_land/main

# 突進開始
execute if entity @s[tag=AnmDashStart] run function asa_animator:reia/anim/start_dash/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:reia/anim/dash/main
# 突進振り向き
execute if entity @s[tag=AnmDashTurn] run function asa_animator:reia/anim/dash_turn/main
# 突進噛みつき
execute if entity @s[tag=AnmDashBite] run function asa_animator:reia/anim/dash_bite/main