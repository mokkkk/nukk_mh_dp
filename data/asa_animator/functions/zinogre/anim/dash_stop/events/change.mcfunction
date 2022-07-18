scoreboard players set @s AsaMatrix 0
tag @s remove AnmDashStop
kill @e[type=marker,tag=zinogreDashTarget]
execute if predicate asa_animator:zinogre/starttags run tag @s add StartAnmDash

# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/dash
## 超帯電
    # 雷光弾（始動：突進）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShot
# 怒り
    # 背面飛び（始動：全て）
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmBackPress

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s