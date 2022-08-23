
# 演出
    playsound entity.item.pickup master @a ~ ~ ~ 1 1
    particle poof ~ ~1.4 ~ 1 1 1 0.1 10

# 素材を落とす
    execute if entity @s[tag=ReusTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/reus_parts
    execute if entity @s[tag=ReiaTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/reia_parts
    execute if entity @s[tag=DiablosTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/diablos_parts
    execute if entity @s[tag=NargaTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/narga_parts
    execute if entity @s[tag=TigaTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/tiga_parts
    execute if entity @s[tag=DynoTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/dyno_parts
    execute if entity @s[tag=BrachyTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/brachy_parts
    execute if entity @s[tag=BrachyRTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/brachyr_parts
    execute if entity @s[tag=ZinogreTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/zinogre_parts

    execute if entity @s[tag=KushalaTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/kushala_parts
    execute if entity @s[tag=TeoTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/teo_parts
    execute if entity @s[tag=NazutiTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/nazuti_parts
    execute if entity @s[tag=RukoTail] run loot spawn ~ ~1.4 ~ loot mh_dp:bonus/ruko_parts

# 終了
    kill @s