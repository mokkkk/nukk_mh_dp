
execute store result score #default_gamemode AsaMatrix run gamerule showDeathMessages
gamerule showDeathMessages false

execute if entity @s[tag=D_ReusTail] run tellraw @a [{"selector":"@s"},{"text": "は火竜の尻尾に吹き飛ばされた"}]
execute if entity @s[tag=D_ReusBite] run tellraw @a [{"selector":"@s"},{"text": "は火竜に噛み砕かれた"}]
execute if entity @s[tag=D_ReusJump] run tellraw @a [{"selector":"@s"},{"text": "は火竜に踏みつぶされた"}]
execute if entity @s[tag=D_ReusCharge] run tellraw @a [{"selector":"@s"},{"text": "は火竜に丸焦げにされた"}]
execute if entity @s[tag=D_ReusAttack] run tellraw @a [{"selector":"@s"},{"text": "は火竜に切り裂かれた"}]

kill @s
execute if score #default_gamemode AsaMatrix matches 1.. run gamerule showDeathMessages true