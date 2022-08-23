
# 演出
    particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.4 20
    playsound entity.ghast.shoot master @a ~ ~ ~ 3 0.7

# 攻撃用マーカー召喚
    summon marker ~ ~ ~ {Tags:["MonsterShot","MagaraBreath","Start"]}

# 高度調整
    execute as @e[type=marker,tag=MagaraBreath,tag=Start] positioned ~ ~5 ~ run tp @s ~ ~ ~ ~ ~
    execute as @e[type=marker,tag=MagaraBreath,tag=Start] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
    
# 終了
    tag @e[type=marker,tag=MagaraBreath] remove Start
