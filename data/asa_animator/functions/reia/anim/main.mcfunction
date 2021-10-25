
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

# チャージブレス
execute if entity @s[tag=AnmCharge] run function asa_animator:reia/anim/charge/main

# 突進開始
execute if entity @s[tag=AnmDashStart] run function asa_animator:reia/anim/start_dash/main
# 突進
execute if entity @s[tag=AnmDash] run function asa_animator:reia/anim/dash/main
# 突進振り向き
execute if entity @s[tag=AnmDashTurn] run function asa_animator:reia/anim/dash_turn/main
# 突進噛みつき
execute if entity @s[tag=AnmDashBite] run function asa_animator:reia/anim/dash_bite/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:reia/anim/move/main
# 移動噛みつき
execute if entity @s[tag=AnmMoveBite] run function asa_animator:reia/anim/move_bite/main

# サマソ
execute if entity @s[tag=AnmSault] run function asa_animator:reia/anim/sault/main
# 対空軸合わせ
execute if entity @s[tag=AnmFlyStay] run function asa_animator:reia/anim/flying_stay/main
# 飛行突進
execute if entity @s[tag=AnmFlyTackle] run function asa_animator:reia/anim/flying_tackle/main
# 飛行チャージブレス
execute if entity @s[tag=AnmFlyCharge] run function asa_animator:reia/anim/flying_charge/main