
# 取引内容更新
    data modify storage mhdp: Temp.Trade set value []

# give @p written_book{pages:['["",{"text":"\\ue021","color":"white","font":"mhdp"},{"text":"\\n\\n\\nadasdadadsadadsadsa","color":"reset"}]','{"text":"adsadsa\\n "}'],title:Book,author:""}

# Template
    # execute if data storage mh_dp:status Monster.Meet{Reus:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"XXの生態書","italic":false}'},HideFlags:32,title:"火竜の生態書",author:"",pages:['{"text":""}','{"text":""}','{"text":""}']}}}
    
    execute if data storage mh_dp:status Monster.Meet{Reus:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"火竜の生態書","italic":false}'},HideFlags:32,title:"火竜の生態書",author:"",pages:['{"text":"火竜：\\n生息地：森林，草原など\\n  赤い甲殻に身を包む竜．\\n飛竜の中でも類稀な飛行能\\n力を持っており，「天空の\\n王者」と呼称される．\\n  縄張り意識が非常に高く\\n侵入する者がたとえ大型の\\nモンスターであろうと全力\\nで迎え撃つ．\\n  番である雌火竜との絆は\\n深く，協力して狩りを行う\\n姿も目撃されている．\\n"}','{"text":"  火竜は，火炎や爪による\\n攻撃を得意とする．鋭い爪\\nは毒を持っており，敵を切\\nり裂くとともに毒によるダ\\nメージを与える．\\n  空中では，機動力を活か\\nして敵の周囲を飛び回り，\\n攪乱しながら攻撃する．\\n大きく息を吸い込んだ後に\\n放たれる火炎放射は，非常\\nに威力が高いため，注意す\\nべき攻撃の１つである．\\n\\n"}','{"text":"  火竜と戦うときは，敵の\\n動きから目を離さないこと\\nが重要だ．力を溜めた後に\\n行う攻撃は，背後に回り込\\nんだり，懐に潜り込むこと\\nで回避できるため，できる\\n限り近づいて戦うとよい．\\n  空を飛ぶ火竜は，非常に\\n厄介だ．機動力に惑わされ\\nず，冷静に対処しよう．\\n  飛行中は閃光玉が有効で\\nあり，地面に落とすととも\\nに大きな隙を作ることがで\\nきる．"}']}}}


    # give @p written_book{display:{Name:'{"text":"XXの生態書","italic":false}'},HideFlags:32,title:"火竜の生態書",author:"",pages:['{"text":""}','{"text":""}','{"text":""}']}

# 終了
    data modify entity @s Offers.Recipes set from storage mhdp: Temp.Trade
    data remove storage mhdp: Temp.Trade