
# tagに応じて護石をgive
    execute if entity @s[tag=CharmReus] run give @s crossbow{display:{Name:'{"text":"火竜の護石","italic":false}',Lore:['{"text":"スキル：攻撃","italic":false}','{"text":"MHDP武器を使用している場合，","italic":false}','{"text":"モンスターに対するダメージが上昇する．","italic":false}']},CustomModelData:10101,MhdpCharm:2,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}

# 護石用tag消去
    tag @s remove CharmReus