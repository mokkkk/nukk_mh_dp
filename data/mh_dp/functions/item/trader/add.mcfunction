
data modify entity @s Offers.Recipes append value {maxUses:1000,xp:0,buy:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"竜骨"}',Lore:['{"text":"頑強な竜の骨．様々な用途がある．"}']},CustomModelData:10018,MhdpID:19}},sell:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"竜骨笛"}',Lore:['{"text":"大きな音を鳴らし，"}','{"text":"縄張り内のモンスターを刺激する．"}','{"text":"一度使うと無くなる．"}']},CustomModelData:10000,MhdpItem:1,HideFlags:32,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b}}}

execute at @s run summon wandering_trader ~ ~ ~ {Tags:["MhdpTrader"]}
execute at @s run data modify entity @e[distance=..1,type=wandering_trader,tag=MhdpTrader,limit=1] Offers set from entity @s Offers 
tellraw @a {"text": "【取引内容が更新された】"}

tp @s ~ ~-100 ~
kill @s