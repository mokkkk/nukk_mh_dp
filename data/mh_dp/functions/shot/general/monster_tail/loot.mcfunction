
# 演出
    playsound entity.item.pickup master @a ~ ~ ~ 1 1
    particle poof ~ ~1.4 ~ 1 1 1 0.1 10

# 素材を落とす
    execute if entity @s[tag=ZinogreTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/zinogre_parts

# 終了
    kill @s