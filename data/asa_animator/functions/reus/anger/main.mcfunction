# 地上
# 尻尾回転
execute if entity @s[tag=AnmTail] run function asa_animator:reus/anger/tail/main
# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:reus/anger/bite/main
# ジャンプ攻撃
execute if entity @s[tag=AnmJump] run function asa_animator:reus/anger/jump/main
execute if entity @s[tag=AnmJumpN] run function asa_animator:reus/anger/jump_near/main
# bjb
execute if entity @s[tag=AnmBjb] run function asa_animator:reus/anger/bjb/main
# 移動
execute if entity @s[tag=AnmDash] run function asa_animator:reus/anger/dash/main
# ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:reus/anger/breath/main
# 飛行開始
execute if entity @s[tag=AnmFly] run function asa_animator:reus/anger/start_fly/main
# チャージブレス
execute if entity @s[tag=AnmCharge] run function asa_animator:reus/anger/charge/main

# 飛行
# 回り込み
execute if entity @s[tag=AnmMoveF] run function asa_animator:reus/anger/flying_move/main
# 飛行中ブレス
execute if entity @s[tag=AnmBreathF] run function asa_animator:reus/anger/flying_breath/main
# 爪攻撃
execute if entity @s[tag=AnmAttackF] run function asa_animator:reus/anger/flying_attack/main
# 着地
execute if entity @s[tag=AnmEndFly] run function asa_animator:reus/anger/end_fly/main
# 飛行チャージブレス
execute if entity @s[tag=AnmChargeF] run function asa_animator:reus/anger/flying_charge/main