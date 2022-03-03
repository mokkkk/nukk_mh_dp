
# 演出
    playsound entity.evoker.cast_spell master @a ~ ~ ~ 2 1
    particle dust 0 0 1 2 ~ ~2 ~ 2 2 2 0.5 30
# 矢反射
    execute if entity @e[type=arrow,tag=!MhdpReflected,distance=0..18] as @e[type=arrow,tag=!MhdpReflected,distance=0..18] at @s facing entity @e[type=armor_stand,tag=RukoRoot,limit=1] eyes run function asa_animator:ruko/manager/particle/reflect_