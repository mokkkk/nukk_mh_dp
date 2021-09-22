
# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:reus/manager/change

# 地上
# 待機
execute if predicate asa_animator:reus/stay unless entity @s[tag=IsFlying] run function asa_animator:reus/stay/main
# 尻尾回転
execute if entity @s[tag=AnmTail] run function asa_animator:reus/tail/main
# 噛みつき
execute if entity @s[tag=AnmBite] run function asa_animator:reus/bite/main
# ジャンプ攻撃
execute if entity @s[tag=AnmJump] run function asa_animator:reus/jump/main
execute if entity @s[tag=AnmJumpN] run function asa_animator:reus/jump_near/main
# bjb
execute if entity @s[tag=AnmBjb] run function asa_animator:reus/bjb/main
# 移動
execute if entity @s[tag=AnmDash] run function asa_animator:reus/dash/main
# ブレス
execute if entity @s[tag=AnmBreath] run function asa_animator:reus/breath/main
# 飛行開始
execute if entity @s[tag=AnmFly] run function asa_animator:reus/startfly/main
# チャージブレス
execute if entity @s[tag=AnmCharge] run function asa_animator:reus/charge/main

# 飛行
# 待機
execute if predicate asa_animator:reus/stay if entity @s[tag=IsFlying] run function asa_animator:reus/flying/main
# 回り込み
execute if entity @s[tag=AnmMoveF] run function asa_animator:reus/flyingmove/main
# 飛行中ブレス
execute if entity @s[tag=AnmBreathF] run function asa_animator:reus/flyingbreath/main
# 爪攻撃
execute if entity @s[tag=AnmAttackF] run function asa_animator:reus/flyingattack/main
# 着地
execute if entity @s[tag=AnmEndFly] run function asa_animator:reus/endfly/main
# 飛行チャージブレス
execute if entity @s[tag=AnmChargeF] run function asa_animator:reus/flyingcharge/main


# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:reus/flying_summon/main
# 威嚇
execute if entity @s[tag=AnmVoice] run function asa_animator:reus/voice/main
# 死亡
execute if entity @s[tag=AnmDeath] run function asa_animator:reus/death/main


# 当たり判定位置
execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/health/pos

# デスポーン
execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:reus/manager/despawn