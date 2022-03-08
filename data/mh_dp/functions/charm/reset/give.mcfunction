
# tagに応じて護石をgive
    execute if entity @s[tag=CharmReus] run give @s crossbow{display:{Name:'{"text":"火竜の護石","italic":false}',Lore:['{"text":"スキル：攻撃","italic":false}','{"text":"MHDP武器を使用している場合，","italic":false}','{"text":"モンスターに対するダメージが上昇する．","italic":false}']},CustomModelData:10101,MhdpCharm:2,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
    execute if entity @s[tag=CharmDiablos] run give @s crossbow{display:{Name:'{"text":"角竜の護石","italic":false}',Lore:['{"text":"スキル：鈍器使い","italic":false}','{"text":"切れ味が緑以下の場合，","italic":false}','{"text":"ダメージボーナスが増加する．","italic":false}']},CustomModelData:10103,MhdpCharm:3,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
    execute if entity @s[tag=CharmZinogre] run give @s crossbow{display:{Name:'{"text":"雷狼竜の護石","italic":false}',Lore:['{"text":"スキル：雷属性攻撃強化","italic":false}','{"text":"雷属性の武器を使用している場合，","italic":false}','{"text":"モンスターに対するダメージが上昇する．","italic":false}']},CustomModelData:10104,MhdpCharm:4,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
    execute if entity @s[tag=CharmBrachy] run give @s crossbow{display:{Name:'{"text":"砕竜の護石","italic":false}',Lore:['{"text":"スキル：火事場力","italic":false}','{"text":"HPが♥3以下の場合，","italic":false}','{"text":"モンスターに対するダメージが上昇する．","italic":false}']},CustomModelData:10105,MhdpCharm:5,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
    execute if entity @s[tag=CharmNarga] run give @s crossbow{display:{Name:'{"text":"迅竜の護石","italic":false}',Lore:['{"text":"スキル：回避本能","italic":false}','{"text":"HPが♥3以下の場合，","italic":false}','{"text":"ジャンプ回避の受付時間が延長する．","italic":false}']},CustomModelData:10106,MhdpCharm:6,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
    execute if entity @s[tag=CharmDyno] run give @s crossbow{display:{Name:'{"text":"斬竜の護石","italic":false}',Lore:['{"text":"スキル：剛刃研磨","italic":false}','{"text":"武器を研いだ後，","italic":false}','{"text":"一定時間だけ斬れ味が減少しない．","italic":false}']},CustomModelData:10107,MhdpCharm:7,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
    execute if entity @s[tag=Charm] run give @s crossbow
    execute if entity @s[tag=Charm] run give @s crossbow
    execute if entity @s[tag=Charm] run give @s crossbow
    execute if entity @s[tag=Charm] run give @s crossbow
    execute if entity @s[tag=Charm] run give @s crossbow
    execute if entity @s[tag=Charm] run give @s crossbow

# 護石用tag消去
    tag @s remove CharmReus
    tag @s remove CharmDiablos
    tag @s remove CharmZinogre
    tag @s remove CharmBrachy
    tag @s remove CharmNarga
    tag @s remove CharmDyno
    tag @s remove Charm
    tag @s remove Charm
    tag @s remove Charm
    tag @s remove Charm
    tag @s remove Charm
    tag @s remove Charm
    