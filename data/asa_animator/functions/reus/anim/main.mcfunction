
# 尻尾回転・左
execute if entity @s[tag=AnmTailL] run function asa_animator:reus/anim/tail_spin_l/main
# 尻尾回転・右
execute if entity @s[tag=AnmTailR] run function asa_animator:reus/anim/tail_spin_r/main
# 尻尾回転・2連
execute if entity @s[tag=AnmTail2] run function asa_animator:reus/anim/tail_spin_2/main

# 地上床ドン
execute if entity @s[tag=AnmJump] run function asa_animator:reus/anim/jump/main

# ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:reus/anim/breath/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:reus/anim/move/main

# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:reus/anim/bite/main
# 噛みつき・2連
execute if entity @s[tag=AnmBite2] run function asa_animator:reus/anim/bite_2/main

# チャージ噛みつき
execute if entity @s[tag=AnmBiteC] run function asa_animator:reus/anim/bite_charge/main

# 飛行開始
execute if entity @s[tag=AnmFly] run function asa_animator:reus/anim/start_fly/main

# BJB（飛行開始）
execute if entity @s[tag=AnmBjb] run function asa_animator:reus/anim/bjb/main

# 着地
execute if entity @s[tag=AnmEndFly] run function asa_animator:reus/anim/end_fly/main

# 飛行移動(前進)
execute if entity @s[tag=AnmFlyMoveF] run function asa_animator:reus/anim/flying_move_forward/main
# 飛行移動(後退)
execute if entity @s[tag=AnmFlyMoveB] run function asa_animator:reus/anim/flying_move_back/main
# 飛行移動(回り込み左)
execute if entity @s[tag=AnmFlyMoveL] run function asa_animator:reus/anim/flying_move_left/main
# 飛行移動(回り込み右)
execute if entity @s[tag=AnmFlyMoveR] run function asa_animator:reus/anim/flying_move_right/main

# 爪
execute if entity @s[tag=AnmFlyAttack] run function asa_animator:reus/anim/flying_attack/main
# なぎ払い爪
execute if entity @s[tag=AnmFlyAttackL] run function asa_animator:reus/anim/flying_attack_large/main

# 飛行床ドン
execute if entity @s[tag=AnmFlyJump] run function asa_animator:reus/anim/flying_jump/main

# ブレス
execute if entity @s[tag=AnmFlyBreath] run function asa_animator:reus/anim/flying_breath/main
# なぎ払いブレス
execute if entity @s[tag=AnmFlyBreathL] run function asa_animator:reus/anim/flying_breath_large/main
# 地走り火炎
execute if entity @s[tag=AnmFlyBreathC] run function asa_animator:reus/anim/flying_breath_charge/main

# 飛行時ひるみ
execute if entity @s[tag=AnmFlyDamage] run function asa_animator:reus/anim/flying_damage/main

# 地上時討伐
execute if entity @s[tag=AnmDeath] run function asa_animator:reus/anim/death/main

# 飛行時討伐
execute if entity @s[tag=AnmFlyDeath] run function asa_animator:reus/anim/flying_death/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:reus/anim/summon/main
# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:reus/anim/voice/main
# 怒り
execute if entity @s[tag=AnmAnger] run function asa_animator:reus/anim/anger/main
# 飛行時怒り
execute if entity @s[tag=AnmFlyAnger] run function asa_animator:reus/anim/flying_voice/main

# 頭部破壊ひるみ
execute if entity @s[tag=AnmDHead] run function asa_animator:reus/anim/destroy_head/main
# 胴体破壊ひるみ
execute if entity @s[tag=AnmDBody] run function asa_animator:reus/anim/destroy_body/main
# 尻尾破壊ひるみ
execute if entity @s[tag=AnmDTail] run function asa_animator:reus/anim/destroy_tail/main