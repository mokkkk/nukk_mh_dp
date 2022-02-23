
# データ書換
loot spawn ~ ~ ~ loot asa_animator:nazuti/dummy
data modify entity @e[type=item,nbt={Item: {tag: {Dummy: 1}}},distance=..1,limit=1] Item set from storage mhdp: Temp.Item.Target

execute if entity @s[tag=MhdpRandom,tag=MhdpMainhand] run item replace entity @s weapon.mainhand with air
execute if entity @s[tag=MhdpRandom,tag=!MhdpMainhand] run item replace entity @s weapon.offhand with air
execute unless entity @s[tag=MhdpRandom] if score #mhdp_temp_main AsaMatrix matches 1.. run item replace entity @s weapon.mainhand with air
execute unless entity @s[tag=MhdpRandom] if score #mhdp_temp_off AsaMatrix matches 1.. run item replace entity @s weapon.offhand with air

tellraw @s {"text":"【持っていたアイテムが叩き落とされた！】"}