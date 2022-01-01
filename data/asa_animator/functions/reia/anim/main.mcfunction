
# 尻尾回転
execute if entity @s[tag=AnmTailL] run function asa_animator:reia/anim/tail_spin_l/main
execute if entity @s[tag=AnmTailR] run function asa_animator:reia/anim/tail_spin_r/main
execute if entity @s[tag=AnmTail2] run function asa_animator:reia/anim/tail_spin_2/main

# 火炎噛みつき
execute if entity @s[tag=AnmBiteL] run function asa_animator:reia/anim/bite_l/main
execute if entity @s[tag=AnmBiteR] run function asa_animator:reia/anim/bite_r/main

# 噛みつき+尻尾回転
execute if entity @s[tag=AnmBiteTailL] run function asa_animator:reia/anim/bite_tail_l/main
execute if entity @s[tag=AnmBiteTailR] run function asa_animator:reia/anim/bite_tail_r/main

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
execute if entity @s[tag=AnmDashTurnL] run function asa_animator:reia/anim/dash_turn_l/main
execute if entity @s[tag=AnmDashTurnR] run function asa_animator:reia/anim/dash_turn_r/main
# 突進噛みつき
# execute if entity @s[tag=AnmDashBite] run function asa_animator:reia/anim/dash_bite/main

# 移動
# execute if entity @s[tag=AnmMove] run function asa_animator:reia/anim/move/main
# 移動噛みつき
# execute if entity @s[tag=AnmMoveBite] run function asa_animator:reia/anim/move_bite/main

# サマソ
execute if entity @s[tag=AnmSault] run function asa_animator:reia/anim/sault/main
# 対空軸合わせ
execute if entity @s[tag=AnmFlyStay] run function asa_animator:reia/anim/flying_stay/main
# 飛行突進
execute if entity @s[tag=AnmFlyTackle] run function asa_animator:reia/anim/flying_tackle/main
# 飛行チャージブレス
execute if entity @s[tag=AnmFlyCharge] run function asa_animator:reia/anim/flying_charge/main

# 召喚
execute if entity @s[tag=AnmSummon] run function asa_animator:reia/anim/summon/main
# 着地
execute if entity @s[tag=AnmEndFly] run function asa_animator:reia/anim/end_fly/main
# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:reia/anim/voice/main

# 討伐
# execute if entity @s[tag=AnmDeath] run function asa_animator:reia/anim/death/main
# 飛行時討伐
# execute if entity @s[tag=AnmFlyDeath] run function asa_animator:reia/anim/flying_death/main

# 頭部部位破壊
# execute if entity @s[tag=AnmDHead] run function asa_animator:reia/anim/destroy_head/main
# 胴体部位破壊
# execute if entity @s[tag=AnmDBody] run function asa_animator:reia/anim/destroy_body/main
# 尻尾部位破壊
# execute if entity @s[tag=AnmDTail] run function asa_animator:reia/anim/destroy_tail/main
# 飛行時部位破壊
# execute if entity @s[tag=AnmFlyDamage] run function asa_animator:reia/anim/flying_damage/main