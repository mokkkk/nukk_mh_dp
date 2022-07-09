
# 召喚位置決定
    summon marker ~ ~ ~ {Tags:["MhdpSummonPos"]}
    spreadplayers ~ ~ 5 25 false @e[type=marker,tag=MhdpSummonPos]

# パーツ召喚
    execute at @e[type=marker,tag=MhdpSummonPos] positioned ~ ~20 ~ run function asa_animator:zinogre/summon

# 当たり判定召喚
    execute at @e[type=marker,tag=MhdpSummonPos] positioned ~ ~-20 ~ run function asa_animator:zinogre/manager/health/summon

# HPセット
    function asa_animator:zinogre/manager/summon_hp

# 終了
    kill @e[type=marker,tag=MhdpSummonPos]