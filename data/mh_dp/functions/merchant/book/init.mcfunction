
# 取引内容更新
    data modify storage mhdp: Temp.Trade set value []

# give @p written_book{pages:['["",{"text":"\\ue021","color":"white","font":"mhdp"},{"text":"\\n\\n\\nadasdadadsadadsadsa","color":"reset"}]','{"text":"adsadsa\\n "}'],title:Book,author:""}

# Template
    # execute if data storage mh_dp:status Monster.Meet{Reus:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"XXの生態書","italic":false}'},HideFlags:32,title:"XXの生態書",author:"",pages:['{"text":""}','{"text":""}','{"text":""}']}}}
    
    # 火竜
    execute if data storage mh_dp:status Monster.Meet{Reus:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"火竜の生態書","italic":false}'},HideFlags:32,title:"火竜の生態書",author:"",pages:['{"text":"火竜：\\n生息地：森林，草原など\\n  赤い甲殻に身を包む竜．\\n飛竜の中でも類稀な飛行能\\n力を持っており，「天空の\\n王者」と呼称される．\\n  縄張り意識が非常に高く\\n侵入する者がたとえ大型の\\nモンスターであろうと全力\\nで迎え撃つ．\\n  番である雌火竜との絆は\\n深く，協力して狩りを行う\\n姿も目撃されている．\\n"}','{"text":"  火竜は，火炎や爪による\\n攻撃を得意とする．鋭い爪\\nは毒を持っており，敵を切\\nり裂くとともに毒によるダ\\nメージを与える．\\n  空中では，機動力を活か\\nして敵の周囲を飛び回り，\\n攪乱しながら攻撃する．\\n大きく息を吸い込んだ後に\\n放たれる火炎放射は，非常\\nに威力が高いため，注意す\\nべき攻撃の１つである．\\n\\n"}','{"text":"  火竜と戦うときは，敵の\\n動きから目を離さないこと\\nが重要だ．力を溜めた後に\\n行う攻撃は，背後に回り込\\nんだり，懐に潜り込むこと\\nで回避できるため，できる\\n限り近づいて戦うとよい．\\n  空を飛ぶ火竜は，非常に\\n厄介だ．機動力に惑わされ\\nず，冷静に対処しよう．\\n  飛行中は閃光玉が有効で\\nあり，地面に落とすととも\\nに大きな隙を作ることがで\\nきる．"}']}}}

    # 雌火竜
    execute if data storage mh_dp:status Monster.Meet{Reia:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"雌火竜の生態書","italic":false}'},HideFlags:32,title:"雌火竜の生態書",author:"",pages:['{"text":"雌火竜：\\n生息地：森林，草原など\\n  緑の甲殻が特徴的な竜．\\n火竜の雌であり，地上での\\n戦いを得意としていること\\nから「陸の女王」と呼ばれ\\nている．\\n  火竜との絆は深く，片方\\nの怒りに呼応し，もう一方\\nも怒り出すことがある．\\n\\n\\n\\n"}','{"text":"  雌火竜の最大の武器は，\\n尻尾に生えた無数の毒棘で\\nる．宙返りを行い，敵に尻\\n尾を突き刺す攻撃は非常に\\n威力が高く，毒も相まって\\n致命傷となりうる．\\n  また，炎の扱いについて\\nは火竜以上に得意であり，\\n一度に３発のブレスを発射\\nしたり，着弾点で炸裂する\\n高威力なブレスを吐くこと\\nができる．\\n\\n"}','{"text":"  雌火竜は突進や噛みつき\\nを得意とするため，正面に\\n立つのは危険だ．常に側面\\nに回り込むにしながら戦お\\nう．また，近づきすぎると\\n尻尾が飛んでくるため，少\\nし距離を離すと良い．\\n   宙返りの後は，滞空しな\\nがら敵に狙いを定め，突進\\nかブレスによる攻撃を仕掛\\nけてくる．上手く避けるこ\\nとができれば，大きな攻撃\\nのチャンスとなるだろう．\\n"}']}}}

    # 角竜
    execute if data storage mh_dp:status Monster.Meet{Diablos:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"角竜の生態書","italic":false}'},HideFlags:32,title:"角竜の生態書",author:"",pages:['{"text":"角竜：\\n生息地：砂漠など\\n  砂漠に生息する飛竜．巨\\n大な２本の角が特徴的で，\\n凶暴な性質から「砂漠の暴\\n君」とも呼ばれる．\\n  翼を持つものの，飛行能\\n力は退化している．その代\\nわり地上での行動に特化し\\nた能力を持ち，突進による\\n攻撃は岩盤をも穿つ威力を\\n誇る．\\n\\n"}','{"text":"  角竜は，特殊な能力を持\\nたないものの，その巨体や\\n力強さ故に，多くの攻撃が\\n圧倒的な威力を誇る．\\n  また，地中に潜ることが\\n可能であり，聴覚を便りに\\n敵の足元から奇襲を仕掛け\\nることもある．\\n  興奮状態になると，口元\\nから黒色の煙を吐き出し，\\nより高速に動き回るように\\nなる．怒り状態の角竜と戦\\nうときは，より一層注意す\\nる必要がある．"}','{"text":"  角竜の角は堅固で，大き\\nなダメージは与えられない\\n．その代わり，脚や尻尾の\\n甲殻は薄いため，そこを狙\\nうと良いだろう．\\n  攻撃の威力は高い．特に\\n突進と潜航後の奇襲には注\\n意すべきだ．ただ，行動後\\nの隙は大きいため，そこを\\n狙えば勝利は見えてくる．\\n  怒り状態では，奇襲攻撃\\nの性質が変化するため，気\\nをつけよう．\\n"}']}}}

    # 雷狼竜
    execute if data storage mh_dp:status Monster.Meet{Zinogre:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"雷狼竜の生態書","italic":false}'},HideFlags:32,title:"雷狼竜の生態書",author:"",pages:['{"text":"雷狼竜：\\n生息地：草原など\\n  「無双の狩人」の異名を\\n持つ竜．強靭な四肢を持ち\\n素早い動きと力強い攻撃で\\n獲物を仕留める．\\n  発電能力を持つ虫と共生\\n関係にあり，自ら発電した\\n電力を虫に与えて活性化，\\nその電気を纏うことにより\\n強力な雷を扱う．\\n\\n\\n"}','{"text":"  雷狼竜は，素早く距離を\\n詰めながら攻撃を仕掛けて\\nくる．離れることも難しい\\nため，相手の動きを見て冷\\n静に対処する必要がある．\\n  電力が最大まで高まると\\n甲殻を展開し，「超帯電状\\n態」となる．この状態では\\n全ての攻撃に雷を纏い，こ\\nちらの防具値を貫通するよ\\nうになる．超帯電を解除す\\nるには，反撃してダメージ\\nを与える必要がある．\\n"}','{"text":"  雷狼竜と戦うときには，\\n防具のエンチャントに気を\\nつけたい．帯電後の攻撃は\\n鎧では軽減できないため，\\n「ダメージ軽減」のエンチ\\nャントが有効である．\\n  雷狼竜の攻撃を近距離で\\n回避すると，反撃のチャン\\nスが生じる．逃げ回るので\\nはなく，正面から立ち向か\\nうことが大事である．狩人\\nの勇気が試される．\\n\\n"}']}}}

    # 迅竜
    execute if data storage mh_dp:status Monster.Meet{Narga:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"迅竜の生態書","italic":false}'},HideFlags:32,title:"迅竜の生態書",author:"",pages:['{"text":"迅竜：\\n生息地：森林，草原など\\n  ４足歩行の飛竜．体表は\\n漆黒の毛に覆われており，\\n暗闇に隠れる保護色として\\n機能する．\\n  「迅竜」の名の通り，圧\\n倒的な速度を誇る．それに\\n加え，刃の如く鋭い翼や，\\n鞭のようにしなる尻尾を持\\nち，死角からの一撃で敵を\\n仕留める．\\n\\n"}','{"text":"  迅竜と戦うときは，速度\\nに翻弄されてはいけない．\\nこちらの死角に回り込むよ\\nうに移動した後に攻撃を仕\\n掛けてくることが多いため\\n油断すれば一瞬で切り裂か\\nれてしまうだろう．\\n  怒り状態になると，眼が\\n赤く光り，尻尾の棘が展開\\nされる．さらに，休みなく\\n矢継ぎ早に攻撃を仕掛けて\\nくるようになる．\\n\\n"}','{"text":"  迅竜の動きは素早いが，\\n攻撃の判定は一瞬だ．その\\nため，ほとんどの攻撃はジ\\nャンプ回避で対処できる．\\n尻尾の攻撃は威力が高いた\\nめ，特に注意しよう．\\n  怒り状態の動きは素早い\\nが，流石の迅竜も疲れがた\\nまるのか，怒り状態の解除\\nとともに大きな隙を晒す．\\n怒り中は無理に反撃するよ\\nりも，回避に専念すること\\nも有効だろう．\\n"}']}}}

    # 轟竜
    execute if data storage mh_dp:status Monster.Meet{Tiga:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"轟竜の生態書","italic":false}'},HideFlags:32,title:"轟竜の生態書",author:"",pages:['{"text":"轟竜：\\n生息地：砂漠，雪原など\\n  原始的な骨格構造を持つ\\n飛竜．飛行は苦手だが，陸\\n上での行動に特化した四肢\\nを持つ．極めて獰猛で，相\\n手が誰であろうと全力で襲\\nいかかる姿は「絶対強者」\\nと呼ばれ，恐れられる．\\n  最大の特徴は，別名にも\\nなっている大音量の咆哮で\\nある．轟竜の全力の咆哮は\\n衝撃波となり，周囲の物を\\n破壊する威力を持つ．"}','{"text":"  轟竜は全身が武器であり\\n突進や回転などによって敵\\nを追い詰める．攻撃範囲は\\n広く，少しでも逃げ遅れる\\nと大怪我は免れない．\\n  さらに怒り状態になると\\n全身の血管が膨張し，より\\n俊敏な動きを見せる．特に\\n怒り状態での突進は避けに\\nくく，注意すべき行動の一\\nつである．\\n\\n\\n"}','{"text":"  轟竜は突進による攻撃が\\n多く，近接武器では反撃の\\n機会が少ない．そのため，\\n弓矢での遠距離攻撃が有効\\nだ．突進を避けてから撃つ\\nようにしよう．但し，跳躍\\nにより一瞬で距離を詰めて\\n来る場合もあるので，いつ\\nでも回避に移れるようにす\\nる必要がある．\\n  また，尻尾を切断すると\\n一部の攻撃の範囲が狭くな\\nる．近接武器で戦うときは\\n部位破壊を狙うと良い．"}']}}}

    # 斬竜
    execute if data storage mh_dp:status Monster.Meet{Dyno:true} run data modify storage mhdp: Temp.Trade append value {maxUses:1000,xp:0,buy:{id:"minecraft:emerald",Count:5b},sell:{id:"minecraft:written_book",Count:1b,tag:{display:{Name:'{"text":"斬竜の生態書","italic":false}'},HideFlags:32,title:"斬竜の生態書",author:"",pages:['{"text":"斬竜：\\n生息地：森林，砂漠など\\n  全長の半分を占める巨大\\nな尻尾が特徴的な竜．その\\n尻尾は剣のような性質を持\\nち，尻尾で切り裂くような\\n攻撃を多用することから\\n「斬竜」と呼ばれる．\\n  尻尾は，地面との摩擦で\\n熱を帯び，赤熱化すること\\nがある．この状態では尻尾\\nの切れ味はさらに増し，全\\nてを切り裂く灼熱の刃と化\\nす．"}','{"text":"  斬竜は，尻尾による切断\\nや噛みつきによる攻撃を主\\n軸とする．特に赤熱化した\\n後の尻尾は炎を帯びており\\n高威力である．切れ味が落\\nちてくると，牙を用いて尻\\n尾を研ぐ行動を見せる．こ\\nの行動の後は喉が赤熱化し\\n噛みつき行動に炎を纏うよ\\nうになるとともに，高威力\\nのブレス攻撃を用いるよう\\nになる．\\n\\n"}','{"text":  斬竜と戦うときは，赤熱\\n化部位に注意する必要があ\\nる．赤熱した部位での攻撃\\nは高威力だが，同時に弱点\\n部位ともなる．特に，喉に\\n集中して攻撃を加えると，\\nブレスが暴発し，大きな隙\\nを晒すことがある．余裕が\\nある時に狙ってみよう．\\n  尻尾を噛み，力を溜めた\\n後には高威力の回転斬りが\\n飛んでくる．大きく距離を\\n取ると良い．\\n"}']}}}

    # 砕竜

    # 猛り爆ぜる砕竜

    # 鋼龍

    # 炎王龍

    # 霞龍

    # 極龍

    # give @p written_book{display:{Name:'{"text":"XXの生態書","italic":false}'},HideFlags:32,title:"火竜の生態書",author:"",pages:['{"text":""}','{"text":""}','{"text":""}']}

# 終了
    data modify entity @s Offers.Recipes set from storage mhdp: Temp.Trade
    data remove storage mhdp: Temp.Trade