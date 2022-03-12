execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10416
execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10416
execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10417
execute unless entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10417
execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=WingL0,limit=1] ArmorItems[3].tag.CustomModelData set value 10423
execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=WingR0,limit=1] ArmorItems[3].tag.CustomModelData set value 10423
execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=WingL1,limit=1] ArmorItems[3].tag.CustomModelData set value 10424
execute if entity @s[tag=DestroyBody] run data modify entity @e[type=armor_stand,tag=KushalaParts,tag=WingR1,limit=1] ArmorItems[3].tag.CustomModelData set value 10424
playsound entity.ender_dragon.flap master @a ~ ~ ~ 2 0.7