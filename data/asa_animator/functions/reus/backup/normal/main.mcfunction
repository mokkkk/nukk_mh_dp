# 地上
# 尻尾回転
execute if entity @s[tag=AnmTail] run function asa_animator:reus/normal/tail/main
# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:reus/normal/bite/main
# ジャンプ攻撃
execute if entity @s[tag=AnmJump] run function asa_animator:reus/normal/jump/main
execute if entity @s[tag=AnmJumpN] run function asa_animator:reus/normal/jump_near/main
# bjb
execute if entity @s[tag=AnmBjb] run function asa_animator:reus/normal/bjb/main
# 移動
execute if entity @s[tag=AnmDash] run function asa_animator:reus/normal/dash/main
# ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:reus/normal/breath/main
# 飛行開始
execute if entity @s[tag=AnmFly] run function asa_animator:reus/normal/start_fly/main
# チャージブレス
execute if entity @s[tag=AnmCharge] run function asa_animator:reus/normal/charge/main

# 飛行
# 回り込み
execute if entity @s[tag=AnmMoveF] run function asa_animator:reus/normal/flying_move/main
# 飛行中ブレス
execute if entity @s[tag=AnmBreathF] run function asa_animator:reus/normal/flying_breath/main
# 爪攻撃
execute if entity @s[tag=AnmAttackF] run function asa_animator:reus/normal/flying_attack/main
# 着地
execute if entity @s[tag=AnmEndFly] run function asa_animator:reus/normal/end_fly/main
# 飛行チャージブレス
execute if entity @s[tag=AnmChargeF] run function asa_animator:reus/normal/flying_charge/main