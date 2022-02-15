
execute store success score #mhdp_temp_main AsaMatrix run data modify storage mhdp: Temp.Item.Mainhand set from entity @s SelectedItem
execute store success score #mhdp_temp_off AsaMatrix run data modify storage mhdp: Temp.Item.Offhand set from entity @s Inventory[{Slot:-106b}]

execute if score #mhdp_temp_main AsaMatrix matches 1.. if score #mhdp_temp_off AsaMatrix matches 1.. run tag @s add MhdpRandom
execute if entity @s[tag=MhdpRandom] if predicate asa_animator:random/050 run tag @s add MhdpMainhand
execute if entity @s[tag=MhdpRandom,tag=MhdpMainhand] run data modify storage mhdp: Temp.Item.Target set from storage mhdp: Temp.Item.Mainhand
execute if entity @s[tag=MhdpRandom,tag=!MhdpMainhand] run data modify storage mhdp: Temp.Item.Target set from storage mhdp: Temp.Item.Offhand

execute unless entity @s[tag=MhdpRandom] if score #mhdp_temp_main AsaMatrix matches 1.. run data modify storage mhdp: Temp.Item.Target set from storage mhdp: Temp.Item.Mainhand
execute unless entity @s[tag=MhdpRandom] if score #mhdp_temp_off AsaMatrix matches 1.. run data modify storage mhdp: Temp.Item.Target set from storage mhdp: Temp.Item.Offhand

execute if data storage mhdp: Temp.Item.Target at @s run function asa_animator:nazuti/anim/tongue_l/events/drop_

tag @s remove MhdpRandom
tag @s remove MhdpMainhand
data remove storage mhdp: Temp.Item
scoreboard players reset #mhdp_temp_main
scoreboard players reset #mhdp_temp_off