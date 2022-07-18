scoreboard players set @s AsaMatrix 0
tag @s remove AnmJump
execute if predicate asa_animator:zinogre/starttags run tag @s add StartAnmJump
# tag @s add AnmJump2Jump

# バックステップ始動：怒り時，チャージお手
execute if entity @s[tag=IsAnger,tag=StartAnmBStep] run function asa_animator:zinogre/manager/change_normal/_/chand
# 尻尾薙ぎ払い始動：2連飛び掛かり
execute if entity @s[tag=StartAnmTailW] run tag @s add AnmJump2Jump

# # ランダム
# execute if predicate asa_animator:zinogre/stay run loot spawn ~ 0 ~ loot asa_animator:zinogre/attack/jump
# ## 超帯電
#     # 雷光弾
#     execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AnmShot
#     # 突進
#     execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AnmDashStart
#     # 連続飛び掛かり
#     execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AnmJump2Jump
# # 怒り
# 
# execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s