
data modify storage mh_dp: Temp.Player set from entity @s
execute if data storage mh_dp: {Temp:{Player:{SelectedItem:{tag:{MhdpItem:1}}}}} run tag @s add Cleared
execute if entity @s[tag=Cleared] run item replace entity @s weapon.mainhand with air
execute unless entity @s[tag=Cleared] if data storage mh_dp: {Temp:{Player:{Inventory:[{Slot:-106b,tag:{MhdpItem:1}}]}}} run item replace entity @s weapon.offhand with air
tag @s remove Cleared
data remove storage mh_dp: Temp.Player