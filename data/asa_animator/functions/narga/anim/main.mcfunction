
# 尻尾回転
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmTailSpin] run function asa_animator:narga/anim/tail_spin/main

# 尻尾ビターン
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmTailBitan] run function asa_animator:narga/anim/tail_bitan/main

# 尻尾振り
execute if entity @s[tag=AnmTailWhip] run function asa_animator:narga/anim/tail_whip/main

# 尾棘発射
execute if entity @s[tag=AnmTailShot] run function asa_animator:narga/anim/tail_shot/main

# 移動近づき
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmMoveS] run function asa_animator:narga/anim/move_s/main
# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:narga/anim/bite/main

# バックステップ
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmBStep] run function asa_animator:narga/anim/backstep/main

# 左回り込みブレード
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmJumpL] run function asa_animator:narga/anim/jump_move_l/main
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmBladeR] run function asa_animator:narga/anim/blade_r/main
# 右回り込みブレード
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmJumpR] run function asa_animator:narga/anim/jump_move_r/main
execute unless entity @s[tag=IsAnger] if entity @s[tag=AnmBladeL] run function asa_animator:narga/anim/blade_l/main

# 移動回り込み開始
execute if entity @s[tag=AnmMoveStart] run function asa_animator:narga/anim/move_start/main
# 移動回り込み
execute if entity @s[tag=AnmMove] run function asa_animator:narga/anim/move/main
# 2連噛みつき
execute if entity @s[tag=AnmBite2] run function asa_animator:narga/anim/bite_2/main
# 飛び込み
execute if entity @s[tag=AnmTackle] run function asa_animator:narga/anim/tackle/main


# 怒り時バックステップ(行動遷移無し)
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmBStep] run function asa_animator:narga/anim/backstep_anger/main

# 怒り時移動近づき(行動遷移無し)
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmMoveS] run function asa_animator:narga/anim/move_s_anger/main

# 怒り時左回り込みブレード
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmJumpL] run function asa_animator:narga/anim/jump_move_l_anger/main
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmBladeR] run function asa_animator:narga/anim/blade_r_anger/main
# 怒り時右回り込みブレード
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmJumpR] run function asa_animator:narga/anim/jump_move_r_anger/main
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmBladeL] run function asa_animator:narga/anim/blade_l_anger/main

# 右ブレード→尻尾ビターン
execute if entity @s[tag=AnmBladeC] run function asa_animator:narga/anim/blade_r_combo/main
execute if entity @s[tag=AnmTailBitanC] run function asa_animator:narga/anim/tail_bitan_combo/main

# 2連尻尾回転
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmTailSpin] run function asa_animator:narga/anim/tail_spin_anger/main

# フェイント尻尾ビターン
execute if entity @s[tag=IsAnger] if entity @s[tag=AnmTailBitan] run function asa_animator:narga/anim/tail_bitan_anger/main

# 怒り遷移
execute if entity @s[tag=AnmAngerMove] run function asa_animator:narga/anim/jump_move_anger/main
execute if entity @s[tag=AnmAngerVoice] run function asa_animator:narga/anim/voice_anger/main

# 疲れ
execute if entity @s[tag=AnmTired] run function asa_animator:narga/anim/tired/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:narga/anim/summon/main
# 咆哮
execute if entity @s[tag=AnmVoice] run function asa_animator:narga/anim/voice/main
# 討伐
execute if entity @s[tag=AnmDeath] run function asa_animator:narga/anim/death/main

# 部位破壊・頭部
execute if entity @s[tag=AnmDHead] run function asa_animator:narga/anim/destroy_head/main
# 部位破壊・左腕
execute if entity @s[tag=AnmDArmL] run function asa_animator:narga/anim/destroy_arm_l/main
# 部位破壊・右腕
execute if entity @s[tag=AnmDArmR] run function asa_animator:narga/anim/destroy_arm_r/main
# 部位破壊・尻尾
execute if entity @s[tag=AnmDTail] run function asa_animator:narga/anim/destroy_tail/main