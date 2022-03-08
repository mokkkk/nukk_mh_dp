
# tagに応じて護石をgive
    execute if entity @s[tag=CharmReus] run give @s crossbow{display:{Name:'{"text":"火竜の護石","italic":false}',Lore:['{"text":"スキル：攻撃","italic":false}','{"text":"MHDP武器を使用している場合，","italic":false}','{"text":"モンスターに対するダメージが上昇する．","italic":false}']},CustomModelData:10101,MhdpCharm:2,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}
    execute if entity @s[tag=CharmDiablos] run give @s crossbow{display:{Name:'{"text":"角竜の護石","italic":false}',Lore:['{"text":"スキル：鈍器使い","italic":false}','{"text":"切れ味が緑以下の場合，","italic":false}','{"text":"ダメージボーナスが増加する．","italic":false}']},CustomModelData:10103,MhdpCharm:3,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}

# 護石用tag消去
    tag @s remove CharmReus
    tag @s remove CharmDiablos