
# タイマー増加
scoreboard players add #mhdp_reus_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:reus/manager/change

# 待機
execute if predicate asa_animator:reus/stay unless entity @s[tag=IsFlying] run function asa_animator:reus/normal/stay/main
execute if predicate asa_animator:reus/stay if entity @s[tag=IsFlying] run function asa_animator:reus/normal/flying_stay/main

# 行動
execute unless entity @s[tag=IsAnger] run function asa_animator:reus/normal/main
execute if entity @s[tag=IsAnger] run function asa_animator:reus/anger/main

# 登場
execute if entity @s[tag=AnmSummon] run function asa_animator:reus/normal/flying_summon/main
# 威嚇
execute if entity @s[tag=AnmVoice] run function asa_animator:reus/normal/voice/main
# 死亡
execute if entity @s[tag=AnmDeath] run function asa_animator:reus/normal/death/main

# 怒り遷移
execute if entity @s[tag=AnmAnger] run function asa_animator:reus/normal/anger/main

# 当たり判定位置
execute as @e[type=slime,tag=ReusParts] run function asa_animator:reus/health/pos

# デスポーン
execute unless entity @s[tag=AnmSummon] unless entity @a[distance=0..64] run function asa_animator:reus/manager/despawn