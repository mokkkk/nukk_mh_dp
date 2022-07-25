scoreboard players set @s AsaMatrix 0
tag @s remove AnmSClaw
kill @e[type=marker,tag=ZinogreMoveRotate]
execute if predicate asa_animator:zinogre/starttags run tag @s add StartAnmSClaw

# ランダム
loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/sclaw
## 怒り
    # 尻尾ビターン
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmSClaw2TailF
    # 雷爪
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run function asa_animator:zinogre/manager/change_normal/_/lclaw
    # チャージお手
    execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run function asa_animator:zinogre/manager/change_normal/_/chand

execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s
