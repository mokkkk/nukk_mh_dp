
scoreboard players set @s AsaMatrix 0
execute as @e[type=armor_stand,tag=ZinogreParts] run function #asa_matrix:animate_reset
tag @s remove AnmTackleL
execute if predicate asa_animator:zinogre/starttags run tag @s add StartAnmTackle

# 始動：飛び掛かり
    execute if entity @s[tag=StartAnmJump] run tag @s add AnmTL2CHandL

# ランダム
    execute if predicate asa_animator:zinogre/stay run loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/tackle
    ## 超帯電
        # チャージお手
            execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmTL2CHandL
        # サマーソルト
            execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmSaultL

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s

