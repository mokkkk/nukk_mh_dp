
# バックステップ
    execute if entity @s[tag=AnmBStep] run function asa_animator:magara/anim/

# 地上時討伐
    execute if entity @s[tag=AnmDeath] run function asa_animator:magara/anim/death/main
# 飛行時討伐
    execute if entity @s[tag=AnmFlyDeath] run function asa_animator:magara/anim/flying_death/main

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
# 超帯電解除ひるみ
    execute if entity @s[tag=AnmDamageL] run function asa_animator:magara/anim/end_thunder_l/main
    execute if entity @s[tag=AnmDamageR] run function asa_animator:magara/anim/end_thunder_r/main
# 飛行時ひるみ
    execute if entity @s[tag=AnmFlyDamage] run function asa_animator:magara/anim/flying_damage/main
