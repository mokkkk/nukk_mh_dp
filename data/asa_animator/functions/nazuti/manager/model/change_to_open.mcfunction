execute if entity @s[tag=!IsInvisible] unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10484
execute if entity @s[tag=!IsInvisible] unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10484
execute if entity @s[tag=!IsInvisible] unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10485
execute if entity @s[tag=!IsInvisible] unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10485
execute if entity @s[tag=DestroyBody,tag=!IsInvisible] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10513
execute if entity @s[tag=DestroyBody,tag=!IsInvisible] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10513
execute if entity @s[tag=DestroyBody,tag=!IsInvisible] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10514
execute if entity @s[tag=DestroyBody,tag=!IsInvisible] run data modify entity @e[type=armor_stand,tag=NazutiParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10514
playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7