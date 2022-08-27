
# 演出
    particle minecraft:squid_ink ~ ~1 ~ 0.5 0.5 0.5 0.4 20
    playsound entity.ghast.shoot master @a ~ ~ ~ 3 0.7

# 攻撃用マーカー召喚
    summon marker ~ ~ ~ {Tags:["MonsterShot","MagaraBreathF","Start","L"]}
    execute as @e[type=marker,tag=MagaraBreathF,tag=Start] run tp @s ~ ~ ~ ~ ~
    
# 終了
    tag @e[type=marker,tag=MagaraBreathF] remove Start
