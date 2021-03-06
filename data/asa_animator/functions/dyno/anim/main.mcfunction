
# 噛みつき・通常
execute if entity @s[tag=AnmBite] run function asa_animator:dyno/anim/bite/main
# 噛みつき・2連
execute if entity @s[tag=AnmBite2] run function asa_animator:dyno/anim/bite_2/main
# 噛みつき・軸合わせ・左
execute if entity @s[tag=AnmBiteTurnL] run function asa_animator:dyno/anim/bite_turn_l/main
# 噛みつき・軸合わせ・右
execute if entity @s[tag=AnmBiteTurnR] run function asa_animator:dyno/anim/bite_turn_r/main

# 移動
execute if entity @s[tag=AnmMove] run function asa_animator:dyno/anim/move/main
# バックステップ
execute if entity @s[tag=AnmBStep] run function asa_animator:dyno/anim/step_back/main
# サイドステップ・左
execute if entity @s[tag=AnmLStep] run function asa_animator:dyno/anim/step_l/main
# サイドステップ・右
execute if entity @s[tag=AnmRStep] run function asa_animator:dyno/anim/step_r/main


# 尻尾・遠距離攻撃・左
execute if entity @s[tag=AnmTailShotL] run function asa_animator:dyno/anim/slash_shot_l/main
# 尻尾・遠距離攻撃・右
execute if entity @s[tag=AnmTailShotR] run function asa_animator:dyno/anim/slash_shot_r/main

# 尻尾・突き・左
execute if entity @s[tag=AnmTailThrustL] run function asa_animator:dyno/anim/slash_thrust_l/main
# 尻尾・突き・右
execute if entity @s[tag=AnmTailThrustR] run function asa_animator:dyno/anim/slash_thrust_r/main

# 尻尾・叩きつけ・左
execute if entity @s[tag=AnmTailSwingL] run function asa_animator:dyno/anim/slash_swing_l/main
# 尻尾・叩きつけ・右
execute if entity @s[tag=AnmTailSwingR] run function asa_animator:dyno/anim/slash_swing_r/main

# 尻尾・飛び込み叩きつけ・左
execute if entity @s[tag=AnmTailSwingJumpL] run function asa_animator:dyno/anim/slash_swing_jump_l/main
# 尻尾・飛び込み叩きつけ・右
execute if entity @s[tag=AnmTailSwingJumpR] run function asa_animator:dyno/anim/slash_swing_jump_r/main

# 尻尾・叩きつけ・2連
execute if entity @s[tag=AnmTailSwing2] run function asa_animator:dyno/anim/slash_swing_2/main
# 尻尾・飛び込み叩きつけ・2連
execute if entity @s[tag=AnmTailSwingJump2] run function asa_animator:dyno/anim/slash_swing_jump_2/main

# 尻尾・斬り払い・左
execute if entity @s[tag=AnmTailLargeL] run function asa_animator:dyno/anim/slash_large_l/main
# 尻尾・斬り払い・右
execute if entity @s[tag=AnmTailLargeR] run function asa_animator:dyno/anim/slash_large_r/main

# 尻尾・ラウンドフォース
execute if entity @s[tag=AnmTailRound] run function asa_animator:dyno/anim/slash_round/main


# ブレス・通常
execute if entity @s[tag=AnmBreath] run function asa_animator:dyno/anim/breath/main
# ブレス・バックステップ
execute if entity @s[tag=AnmBreathBStep] run function asa_animator:dyno/anim/breath_step_b/main
# ブレス・サイドステップ・左
execute if entity @s[tag=AnmBreathLStep] run function asa_animator:dyno/anim/breath_step_l/main
# ブレス・サイドステップ・右
execute if entity @s[tag=AnmBreathRStep] run function asa_animator:dyno/anim/breath_step_r/main


# 尻尾砥ぎ + 喉赤熱化
execute if entity @s[tag=AnmCharge] run function asa_animator:dyno/anim/charge/main
# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:dyno/anim/summon/main
# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:dyno/anim/voice/main
# 討伐
execute if entity @s[tag=AnmDeath] run function asa_animator:dyno/anim/death/main
# 怒り遷移
execute if entity @s[tag=AnmAnger] run function asa_animator:dyno/anim/anger/main

# 頭部位破壊
execute if entity @s[tag=AnmDHead] run function asa_animator:dyno/anim/destroy_head/main
# 尻尾部位破壊
execute if entity @s[tag=AnmDTail] run function asa_animator:dyno/anim/destroy_tail/main
# 左足部位破壊
execute if entity @s[tag=AnmDLegL] run function asa_animator:dyno/anim/destroy_leg_l/main
# 右足部位破壊
execute if entity @s[tag=AnmDLegR] run function asa_animator:dyno/anim/destroy_leg_r/main
# 頭赤熱化解除
execute if entity @s[tag=AnmDHeadH] run function asa_animator:dyno/anim/destroy_head_heat/main