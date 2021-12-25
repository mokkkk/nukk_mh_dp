
# タイマー増加
scoreboard players add #mhdp_zinogre_kill_timer AsaMatrix 1

# アニメーション遷移
execute if entity @s[tag=ChangeAnm] run function asa_animator:zinogre/manager/change

# 待機
execute if predicate asa_animator:zinogre/stay run function asa_animator:zinogre/anim/stay/main

# 行動
execute unless predicate asa_animator:zinogre/stay run function asa_animator:zinogre/anim/main

# 帯電時パーティクル
execute if entity @s[tag=IsThunder] run particle minecraft:sneeze ~ ~2 ~ 1 0.5 1 0.05 5

# HP
execute as @e[type=slime,tag=ZinogreHealth] run function asa_animator:zinogre/manager/health/pos

# デスポーン
execute unless entity @s[tag=AnmSummon] if data storage mh_dp:settings {Custom:{DisableDespawn:false}} unless entity @a[distance=0..64] run function asa_animator:zinogre/manager/despawn