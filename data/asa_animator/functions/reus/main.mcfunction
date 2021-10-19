
# タイマー増加
scoreboard players add #mhdp_reus_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:reus/manager/change

# 待機
execute if predicate asa_animator:reus/stay unless entity @s[tag=IsFlying] run function asa_animator:reus/anim/stay/main

# 尻尾回転
execute if entity @s[tag=AnmTail] run function asa_animator:reus/anim/tail_spin/main

# 地上床ドン
execute if entity @s[tag=AnmJump] run function asa_animator:reus/anim/jump/main

# ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:reus/anim/breath/main

# BJB
execute if entity @s[tag=AnmBjb] run function asa_animator:reus/anim/bjb/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:reus/anim/move/main

# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:reus/anim/bite/main
# 2連噛みつき
execute if entity @s[tag=AnmBite2] run function asa_animator:reus/anim/bite_double/main

# チャージ噛みつき
execute if entity @s[tag=AnmBiteC] run function asa_animator:reus/anim/bite_charge/main

# 飛行開始
execute if entity @s[tag=AnmFly] run function asa_animator:reus/anim/start_fly/main



# 飛行待機
execute if predicate asa_animator:reus/stay if entity @s[tag=IsFlying] run function asa_animator:reus/anim/flying_stay/main

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

# 登場
# execute if entity @s[tag=AnmSummon] run function asa_animator:reus/normal/flying_summon/main
# 威嚇
# execute if entity @s[tag=AnmVoice] run function asa_animator:reus/normal/voice/main
# 死亡
# execute if entity @s[tag=AnmDeath] run function asa_animator:reus/normal/death/main

# 怒り遷移
# execute if entity @s[tag=AnmAnger] run function asa_animator:reus/normal/anger/main

# 当たり判定位置
# execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/health/pos

# デスポーン
# execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:reus/manager/despawn