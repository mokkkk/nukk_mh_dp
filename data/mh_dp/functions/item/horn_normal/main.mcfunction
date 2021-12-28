
kill @e[distance=0..2,type=arrow,limit=1,sort=nearest]
stopsound @a * item.crossbow.shoot
playsound event.raid.horn master @a ~ ~ ~ 30 1.3

# アイテム消去
tag @s add MhdpUsedHornN
schedule function mh_dp:item/horn_normal/main_ 1t replace
# give @s crossbow{display:{Name:'{"text":"竜骨笛"}',Lore:['{"text":"大きな音を鳴らし，"}','{"text":"縄張り内のモンスターを刺激する．"}','{"text":"一度使うと無くなる．"}']},CustomModelData:10000,MhdpItem:1,HideFlags:32,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b},{},{}],Charged:1b} 1

advancement revoke @s only mh_dp:items/used_horn_normal