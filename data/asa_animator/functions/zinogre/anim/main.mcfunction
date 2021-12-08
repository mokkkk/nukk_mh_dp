
# タックル
execute if entity @s[tag=AnmTackle] run function asa_animator:zinogre/anim/tackle/main

# バックステップ
execute if entity @s[tag=AnmBstep] run function asa_animator:zinogre/anim/backstep/main
# フォワードステップ
execute if entity @s[tag=AnmFstep] run function asa_animator:zinogre/anim/forwardstep/main
# お手
execute if entity @s[tag=AnmHand2] run function asa_animator:zinogre/anim/hand_2/main
execute if entity @s[tag=AnmHand3] run function asa_animator:zinogre/anim/hand_3/main
# チャージお手
execute if entity @s[tag=AnmHandC] run function asa_animator:zinogre/anim/hand_charge/main

# ヘッドバット
execute if entity @s[tag=AnmHead] run function asa_animator:zinogre/anim/head/main
# バックジャンプ
execute if entity @s[tag=AnmBjump] run function asa_animator:zinogre/anim/backjump/main
# 充電
execute if entity @s[tag=AnmCharge] run function asa_animator:zinogre/anim/charge/main
# 超帯電開始
execute if entity @s[tag=AnmChargeE] run function asa_animator:zinogre/anim/charge_end/main

# 雷光弾
execute if entity @s[tag=AnmShot] run function asa_animator:zinogre/anim/shot/main

# サマーソルト
execute if entity @s[tag=AnmTailSpin] run function asa_animator:zinogre/anim/tail_spin/main
# サマーソルト（コンボフィニッシュ）
execute if entity @s[tag=AnmTailSpinC] run function asa_animator:zinogre/anim/tail_spin_combo/main

# 尻尾ビターン
execute if entity @s[tag=AnmTailWhip] run function asa_animator:zinogre/anim/tail_whip/main
# ボディプレス
execute if entity @s[tag=AnmPress] run function asa_animator:zinogre/anim/press/main
# 突進
execute if entity @s[tag=AnmJumpAttack] run function asa_animator:zinogre/anim/jump_attack/main

# バックステップ（コンボ）
execute if entity @s[tag=AnmBstepC] run function asa_animator:zinogre/anim/backstep_combo/main

# 突進（コンボ始動）
execute if entity @s[tag=AnmJumpAttackS] run function asa_animator:zinogre/anim/jump_attack_short/main
# 突進（コンボフィニッシュ）
execute if entity @s[tag=AnmJumpAttackC] run function asa_animator:zinogre/anim/jump_attack_combo/main

# 召喚時
execute if entity @s[tag=AnmSummon] run function asa_animator:zinogre/anim/summon/main
# ひるみ
execute if entity @s[tag=AnmDamage] run function asa_animator:zinogre/anim/damage/main
# 討伐
execute if entity @s[tag=AnmDeath] run function asa_animator:zinogre/anim/death/main
# 頭部位破壊
execute if entity @s[tag=AnmDHead] run function asa_animator:zinogre/anim/destroy_head/main
# 腕部位破壊
execute if entity @s[tag=AnmDArm] run function asa_animator:zinogre/anim/destroy_arm/main
# 尻尾部位破壊
execute if entity @s[tag=AnmDTail] run function asa_animator:zinogre/anim/destroy_tail/main