
execute store result score #default_gamemode AsaMatrix run gamerule showDeathMessages
gamerule showDeathMessages false

execute if entity @s[tag=D_ReusTail] run tellraw @a [{"selector":"@s"},{"text": "は火竜の尻尾に吹き飛ばされた"}]
execute if entity @s[tag=D_ReusBite] run tellraw @a [{"selector":"@s"},{"text": "は火竜に噛み砕かれた"}]
execute if entity @s[tag=D_ReusJump] run tellraw @a [{"selector":"@s"},{"text": "は火竜に踏みつぶされた"}]
execute if entity @s[tag=D_ReusCharge] run tellraw @a [{"selector":"@s"},{"text": "は火竜に丸焦げにされた"}]
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

kill @s
execute if score #default_gamemode AsaMatrix matches 1.. run gamerule showDeathMessages true