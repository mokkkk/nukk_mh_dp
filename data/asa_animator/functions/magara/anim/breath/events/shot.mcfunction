
# 確率
    execute if predicate asa_animator:random/050 run tag @s add NoRotate
# 左右確認
    execute if entity @s[tag=!NoRotate] facing entity @e[tag=MagaraAttackTarget,limit=1] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

# 演出
    particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.4 20
    playsound entity.ghast.shoot master @a ~ ~ ~ 3 0.7

# 攻撃用マーカー召喚
    execute if entity @s[tag=NoRotate] run summon marker ~ ~ ~ {Tags:["MonsterShot","MagaraBreath","Start"]}
    execute if entity @s[tag=!NoRotate,tag=Right] run summon marker ~ ~ ~ {Tags:["MonsterShot","MagaraBreath","Start","L"]}
    execute if entity @s[tag=!NoRotate,tag=!Right] run summon marker ~ ~ ~ {Tags:["MonsterShot","MagaraBreath","Start","R"]}

# 高度調整
    execute as @e[type=marker,tag=MagaraBreath,tag=Start] positioned ~ ~5 ~ run tp @s ~ ~ ~ ~ ~
    execute as @e[type=marker,tag=MagaraBreath,tag=Start] at @s positioned ~ ~5 ~ run function asa_animator:zinogre/manager/check_ground
    
# 終了
    tag @e[type=marker,tag=MagaraBreath] remove Start
    tag @s remove Right
    tag @s remove NoRotate