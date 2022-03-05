
# 召喚位置決定
    summon marker ~ ~ ~ {Tags:["MhdpSummonPos"]}
    spreadplayers ~ ~ 5 25 false @e[type=marker,tag=MhdpSummonPos]

# パーツ召喚
    execute at @e[type=marker,tag=MhdpSummonPos] positioned ~ ~-10 ~ run function asa_animator:brachyr/summon

# 当たり判定召喚
    execute at @e[type=marker,tag=MhdpSummonPos] positioned ~ ~-10 ~ run function asa_animator:brachyr/manager/health/summon

# HPセット
    function asa_animator:brachyr/manager/summon_hp

# 終了
    kill @e[type=marker,tag=MhdpSummonPos]