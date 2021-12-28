
execute store result score #default_gamemode AsaMatrix run gamerule showDeathMessages
gamerule showDeathMessages false

execute if entity @s[tag=D_ReusTail] run tellraw @a [{"selector":"@s"},{"text": "は火竜の尻尾に吹き飛ばされた"}]
execute if entity @s[tag=D_ReusBite] run tellraw @a [{"selector":"@s"},{"text": "は火竜に噛み砕かれた"}]
execute if entity @s[tag=D_ReusJump] run tellraw @a [{"selector":"@s"},{"text": "は火竜に踏みつぶされた"}]
execute if entity @s[tag=D_ReusCharge] run tellraw @a [{"selector":"@s"},{"text": "は火竜に黒焦げにされた"}]
execute if entity @s[tag=D_ReusBreath] run tellraw @a [{"selector":"@s"},{"text": "は火竜に黒焦げにされた"}]
execute if entity @s[tag=D_ReusAttack] run tellraw @a [{"selector":"@s"},{"text": "は火竜に切り裂かれた"}]

execute if entity @s[tag=D_ZinogreHand] run tellraw @a [{"selector":"@s"},{"text": "は雷狼竜に叩きのめされた"}]
execute if entity @s[tag=D_ZinogreTackle] run tellraw @a [{"selector":"@s"},{"text": "は雷狼竜に吹き飛ばされた"}]
execute if entity @s[tag=D_ZinogrePress] run tellraw @a [{"selector":"@s"},{"text": "は雷狼竜に押しつぶされた"}]
execute if entity @s[tag=D_ZinogreShot] run tellraw @a [{"selector":"@s"},{"text": "は雷光弾に射抜かれた"}]
execute if entity @s[tag=D_ZinogreTail] run tellraw @a [{"selector":"@s"},{"text": "は雷狼竜の尻尾に吹き飛ばされた"}]

execute if entity @s[tag=D_DiablosBite] run tellraw @a [{"selector":"@s"},{"text": "は角竜に噛み砕かれた"}]
execute if entity @s[tag=D_DiablosDash] run tellraw @a [{"selector":"@s"},{"text": "は角竜に轢かれた"}]
execute if entity @s[tag=D_DiablosHead] run tellraw @a [{"selector":"@s"},{"text": "は角竜に貫かれた"}]
execute if entity @s[tag=D_DiablosDive] run tellraw @a [{"selector":"@s"},{"text": "は角竜にかちあげられた"}]
execute if entity @s[tag=D_DiablosTackle] run tellraw @a [{"selector":"@s"},{"text": "は角竜に吹き飛ばされた"}]
execute if entity @s[tag=D_DiablosTail] run tellraw @a [{"selector":"@s"},{"text": "は角竜の尻尾を叩きつけられた"}]
execute if entity @s[tag=D_DiablosShot] run tellraw @a [{"selector":"@s"},{"text": "は砂岩に命中した"}]

execute if entity @s[tag=D_ReiaBite] run tellraw @a [{"selector":"@s"},{"text": "は雌火竜に噛み砕かれた"}]
execute if entity @s[tag=D_ReiaBreath] run tellraw @a [{"selector":"@s"},{"text": "は雌火竜に黒焦げにされた"}]
execute if entity @s[tag=D_ReiaDash] run tellraw @a [{"selector":"@s"},{"text": "は雌火竜に吹き飛ばされた"}]
execute if entity @s[tag=D_ReiaTail] run tellraw @a [{"selector":"@s"},{"text": "は雌火竜の尻尾の威力を思い知った"}]

execute if entity @s[tag=D_NargaBite] run tellraw @a [{"selector":"@s"},{"text": "は迅竜に噛み砕かれた"}]
execute if entity @s[tag=D_NargaTail] run tellraw @a [{"selector":"@s"},{"text": "は迅竜の尻尾に叩きのめされた"}]
execute if entity @s[tag=D_NargaTackle] run tellraw @a [{"selector":"@s"},{"text": "は迅竜に吹き飛ばされた"}]
execute if entity @s[tag=D_NargaBlade] run tellraw @a [{"selector":"@s"},{"text": "は迅竜に切り裂かれた"}]
execute if entity @s[tag=D_NargaShot] run tellraw @a [{"selector":"@s"},{"text": "は迅竜の棘に突き刺さった"}]

execute if entity @s[tag=D_DynoBite] run tellraw @a [{"selector":"@s"},{"text": " は斬竜に噛み砕かれた"}]
execute if entity @s[tag=D_DynoBreath] run tellraw @a [{"selector":"@s"},{"text": " は斬竜に黒焦げにされた"}]
execute if entity @s[tag=D_DynoSlash] run tellraw @a [{"selector":"@s"},{"text": " は斬竜に真っ二つにされた"}]
execute if entity @s[tag=D_DynoShot] run tellraw @a [{"selector":"@s"},{"text": " は斬竜の炎に巻かれた"}]

execute if entity @s[tag=D_BrachyHead] run tellraw @a [{"selector":"@s"},{"text": " は砕竜に潰された"}]
execute if entity @s[tag=D_BrachyPunch] run tellraw @a [{"selector":"@s"},{"text": " は砕竜にぶん殴られた"}]
execute if entity @s[tag=D_BrachyTail] run tellraw @a [{"selector":"@s"},{"text": " は砕竜の尻尾に吹き飛ばされた"}]
execute if entity @s[tag=D_BrachyBomb] run tellraw @a [{"selector":"@s"},{"text": " は爆発に巻き込まれた"}]

execute if entity @s[tag=D_BrachyRHead] run tellraw @a [{"selector":"@s"},{"text": " は砕竜に潰された"}]
execute if entity @s[tag=D_BrachyRPunch] run tellraw @a [{"selector":"@s"},{"text": " は砕竜にぶん殴られた"}]
execute if entity @s[tag=D_BrachyRTail] run tellraw @a [{"selector":"@s"},{"text": " は砕竜の尻尾に叩きのめされた"}]
execute if entity @s[tag=D_BrachyRBomb] run tellraw @a [{"selector":"@s"},{"text": " は爆発に巻き込まれた"}]

execute if entity @s[tag=D_TigaBite] run tellraw @a [{"selector":"@s"},{"text": " は轟竜に噛み砕かれた"}]
execute if entity @s[tag=D_TigaDash] run tellraw @a [{"selector":"@s"},{"text": " は轟竜に轢かれた"}]
execute if entity @s[tag=D_TigaHand] run tellraw @a [{"selector":"@s"},{"text": " は轟竜に吹き飛ばされた"}]
execute if entity @s[tag=D_TigaShot] run tellraw @a [{"selector":"@s"},{"text": " は飛んでくる石を避けきれなかった"}]
execute if entity @s[tag=D_TigaSpin] run tellraw @a [{"selector":"@s"},{"text": " は轟竜の回転に巻き込まれた"}]
execute if entity @s[tag=D_TigaVoice] run tellraw @a [{"selector":"@s"},{"text": " は轟竜の声に耐えきれなかった"}]

execute if entity @s[tag=D_BlightFire] run tellraw @a [{"selector":"@s"},{"text": " は火傷した"}]

kill @s
execute if score #default_gamemode AsaMatrix matches 1.. run gamerule showDeathMessages true