execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=TeoParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10448
execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=TeoParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10448
execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=TeoParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10449
execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=TeoParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10449
# execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=TeoParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10421
# execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=TeoParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10421
# execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=TeoParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10422
# execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=TeoParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10422
playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7