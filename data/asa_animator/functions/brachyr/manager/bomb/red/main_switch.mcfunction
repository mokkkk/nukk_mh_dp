
execute unless entity @e[type=armor_stand,tag=BrachyRBombRed] run kill @s
execute if entity @e[type=armor_stand,tag=BrachyRBombRed] as @e[type=armor_stand,tag=BrachyRBombRed,limit=5,sort=random] at @s positioned ~ ~0.5 ~ run function asa_animator:brachyr/manager/bomb/red/damage