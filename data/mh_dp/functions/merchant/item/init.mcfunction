
# 取引内容更新
    data modify storage mhdp: Temp.Trade set value []

# Template
    # data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:clock",Count:1b,tag:{Tag}},buyB:{id:"minecraft:clock",Count:1b,tag:{Tag}},sell:{id:"minecraft:iron_sword",Count:1b,tag:{Tag}}}

    data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"竜骨","italic":false}',Lore:['{"text":"頑強な竜の骨．様々な用途がある．","italic":false}']},CustomModelData:10018,MhdpID:19}},sell:{id:"minecraft:crossbow",Count:1b,tag:{display:{Name:'{"text":"竜骨笛","italic":false}',Lore:['{"text":"大きな音を鳴らし，","italic":false}','{"text":"縄張り内のモンスターを刺激する．","italic":false}','{"text":"一度使うと無くなる．","italic":false}']},CustomModelData:10000,MhdpItem:1,HideFlags:32,ChargedProjectiles:[{id:"minecraft:air",Count:1b},{},{}],Charged:1b}}}

     execute unless data storage mh_dp:status Flag{QuestRank:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1,xp:0,buy:{id:"minecraft:clock",Count:15b,tag:{display:{Name:'{"text":"竜骨","italic":false}',Lore:['{"text":"頑強な竜の骨．様々な用途がある．","italic":false}']},CustomModelData:10018,MhdpID:19}},sell:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"ハードランク許可証","italic":false}',Lore:['{"text":"数多のモンスターを狩りし者へ送る．","italic":false}','{"text":"クエストランクの「ハード」を解禁する．","italic":false}']},CustomModelData:10510,MhdpID:99}}}

# 終了
    data modify entity @s Offers.Recipes set from storage mhdp: Temp.Trade
    data remove storage mhdp: Temp.Trade