execute unless entity @s[tag=DestroyHead] as @e[distance=0..20,type=armor_stand,tag=NargaParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10150
execute if entity @s[tag=DestroyHead] as @e[distance=0..20,type=armor_stand,tag=NargaParts,tag=HeadU] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10153
execute as @e[distance=0..20,type=armor_stand,tag=NargaParts,tag=Tail1] run data modify entity @s ArmorItems[3].tag.CustomModelData set value 10148

# ランダム
loot spawn ~ 0 ~ loot asa_animator:narga/anger_type
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:1}}}] run tag @s add AngerTypeA
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:2}}}] run tag @s add AngerTypeB
execute if entity @e[type=item,y=0] if entity @e[type=item,nbt={Item:{tag:{Act:3}}}] run tag @s add AngerTypeC
execute if entity @e[type=item,y=0] as @e[type=item,y=0] if data entity @s Item.tag{ActPaper:1} run kill @s