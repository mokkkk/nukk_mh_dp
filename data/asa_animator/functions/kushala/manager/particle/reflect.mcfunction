
# 演出
    playsound item.firecharge.use master @a ~ ~ ~ 2 0.5
    particle large_smoke ~ ~2 ~ 1 1 1 0.5 50
# 矢反射
    execute if entity @e[type=arrow,tag=!MhdpReflected,distance=0..18] as @e[type=arrow,tag=!MhdpReflected,distance=0..18] at @s facing entity @e[type=armor_stand,tag=KushalaRoot,limit=1] eyes run function asa_animator:kushala/manager/particle/reflect_
# ノックバック
    execute if entity @a[distance=..8] as @a[distance=..8] run function mh_dp:player/knockback/start_dwind