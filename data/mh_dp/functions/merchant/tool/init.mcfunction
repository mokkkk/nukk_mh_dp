
# 取引内容更新
    data modify storage mhdp: Temp.Trade set value []

# Template
    # data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:clock",Count:1b,tag:{Tag}},buyB:{id:"minecraft:clock",Count:1b,tag:{Tag}},sell:{id:"minecraft:iron_sword",Count:1b,tag:{Tag}}}

    execute if data storage mh_dp:status Monster.Win{Reus:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"火竜の鱗","italic":false}',Lore:['{"text":"火竜の体を覆う鱗．","italic":false}','{"text":"武器の素材として使用される．","italic":false}']},CustomModelData:10000,MhdpID:1}},buyB:{id:"minecraft:clock",Count:1b,tag:{display:{Name:'{"text":"竜骨","italic":false}',Lore:['{"text":"頑強な竜の骨．様々な用途がある．","italic":false}']},CustomModelData:10018,MhdpID:19}},sell:{id:"minecraft:iron_sword",Count:1b,tag:{display:{Name:'{"text":"レッドブレイド","color":"green","italic":false}',Lore:['{"text":"火属性","italic":false}','{"text":"攻撃力：6.0","italic":false}','[{"text":"切れ味：[","italic":false},{"text":"\\uE003","color":"white","font":"mhdp"},{"text":"]"}]','{"text":"--------------------","color":"dark_gray"}','{"text":"火竜の素材を用いた剣．","color":"white","italic":false}','{"text":"王者の如く赤いその刃は，","color":"white","italic":false}','{"text":"敵に業火の洗礼を見舞う．","color":"white","italic":false}']},CustomModelData:10001,HideFlags:6,Unbreakable:1b,MhdpWeapon:1b,MhdpStatus:{Name:"レッドブレイド",Damage:6f,Type:1,Sharpness:[10,10,30,20,0,0,0],SharpnessMax:70,SharpnessCurrent:70,SharpnessColor:3,ID:1}}}}

# give @p iron_sword{display:{Name:'{"text":"レッドブレイド","color":"green","italic":false}',Lore:['{"text":"火属性","italic":false}','{"text":"攻撃力：6.0","italic":false}','[{"text":"切れ味：[","italic":false},{"text":"\\uE003","color":"white","font":"mhdp"},{"text":"]"}]','{"text":"--------------------","color":"dark_gray"}','{"text":"火竜の素材を用いた剣．","color":"white","italic":false}','{"text":"王者の如く赤いその刃は，","color":"white","italic":false}','{"text":"敵に業火の洗礼を見舞う．","color":"white","italic":false}']},CustomModelData:10001,HideFlags:6,Unbreakable:1b,MhdpWeapon:1b,MhdpStatus:{Name:"レッドブレイド",Damage:6f,Type:1,Sharpness:[10,10,30,20,0,0,0],SharpnessMax:70,SharpnessCurrent:70,SharpnessColor:3,ID:1}}

# 終了
    data modify entity @s Offers.Recipes set from storage mhdp: Temp.Trade
    data remove storage mhdp: Temp.Trade