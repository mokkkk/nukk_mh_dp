
## 通常時行動
# 移動
    # バックステップ
        # execute if entity @s[tag=AnmBStep] run function asa_animator:magara/anim/
    # ダッシュ移動
        execute if entity @s[tag=AnmMoveDash] run function asa_animator:magara/anim/move_dash/main

# 噛みつき
    execute if entity @s[tag=AnmBite] run function asa_animator:magara/anim/bite/main
# 2連嚙みつき
    execute if entity @s[tag=AnmBite2] run function asa_animator:magara/anim/bite_2/main
    
# 回転嚙みつき → 尻尾薙ぎ払い
    execute if entity @s[tag=AnmBiteTurnL] run function asa_animator:magara/anim/bite_turn_l/main
    execute if entity @s[tag=AnmBiteTurnR] run function asa_animator:magara/anim/bite_turn_r/main

# 突進
    execute if entity @s[tag=AnmDashStart] run function asa_animator:magara/anim/dash_start/main
    execute if entity @s[tag=AnmDash] run function asa_animator:magara/anim/dash/main
    execute if entity @s[tag=AnmDashStop] run function asa_animator:magara/anim/dash_stop/main

# ブレス
    execute if entity @s[tag=AnmBreath] run function asa_animator:magara/anim/breath/main
    # 軸合わせブレス
        execute if entity @s[tag=AnmBreathT] run function asa_animator:magara/anim/breath_turn/main
# 3連ブレス
    execute if entity @s[tag=AnmBreath3] run function asa_animator:magara/anim/breath_3/main

# 爆発薙ぎ払い
    execute if entity @s[tag=AnmBombL] run function asa_animator:magara/anim/breath_bomb_l/main
    execute if entity @s[tag=AnmBombR] run function asa_animator:magara/anim/breath_bomb_r/main

# 飛行開始
    execute if entity @s[tag=AnmFly] run function asa_animator:magara/anim/start_fly/main
# 飛行ブレス
    execute if entity @s[tag=AnmFlyBreath] run function asa_animator:magara/anim/flying_breath/main

## 狂竜時行動

# 地上時討伐
    execute if entity @s[tag=AnmDeath] run function asa_animator:magara/anim/death/main
# 飛行時討伐
    execute if entity @s[tag=AnmFlyDeath] run function asa_animator:magara/anim/flying_death/main

# 呻き
    execute if entity @s[tag=AnmStay] run function asa_animator:magara/anim/stay/main

# 登場
    execute if entity @s[tag=AnmSummon] run function asa_animator:magara/anim/summon/main
# 咆哮
    execute if entity @s[tag=AnmVoice] run function asa_animator:magara/anim/voice/main

# 頭部破壊ひるみ
    execute if entity @s[tag=AnmDHead] run function asa_animator:magara/anim/destroy_head/main
# 腕破壊ひるみ
    execute if entity @s[tag=AnmDArmL] run function asa_animator:magara/anim/destroy_arm_l/main
    execute if entity @s[tag=AnmDArmR] run function asa_animator:magara/anim/destroy_arm_r/main
# 尻尾破壊ひるみ
    execute if entity @s[tag=AnmDTail] run function asa_animator:magara/anim/destroy_tail/main
# 飛行時ひるみ
    execute if entity @s[tag=AnmFlyDamage] run function asa_animator:magara/anim/flying_damage/main
