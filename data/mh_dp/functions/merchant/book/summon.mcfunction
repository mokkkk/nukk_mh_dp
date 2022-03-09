
# コマンド通知対策
    execute unless data storage mh_dp:settings {Temp:{Await:true}} store result storage mh_dp:settings Temp.Scf int 1 run gamerule sendCommandFeedback
    execute unless data storage mh_dp:settings {Temp:{Await:true}} run data modify storage mh_dp:settings Temp.Await set value true
    gamerule sendCommandFeedback false

# 通知
    tellraw @a {"text":"【もうすぐ生態書商人が訪れる】"}

# 召喚
    execute at @s run summon wandering_trader ~ -64 ~ {DespawnDelay:6000,Tags:["MhdpBookMerchant","Start"],CustomName:'{"text":"生態書商人"}',WanderTarget:{X:0,Y:0,Z:0},Offers:{Recipes:[{rewardExp:0b,buy:{id:"minecraft:stone",Count:1b},sell:{id:"minecraft:stone",Count:1b}}]}}
    data modify storage mhdp: Temp.Pos set from entity @s Pos
    data modify storage mhdp: Temp.WanderTarget.X set from storage mhdp: Temp.Pos[0]
    data modify storage mhdp: Temp.WanderTarget.Y set from storage mhdp: Temp.Pos[1]
    data modify storage mhdp: Temp.WanderTarget.Z set from storage mhdp: Temp.Pos[2]
    execute as @e[type=wandering_trader,tag=MhdpBookMerchant,tag=Start] run data modify entity @s WanderTarget set from storage mhdp: Temp.WanderTarget
    execute at @s run spreadplayers ~ ~ 5 64 false @e[type=wandering_trader,tag=MhdpBookMerchant,tag=Start]
    

# レシピ更新
    execute as @e[type=wandering_trader,tag=MhdpBookMerchant,tag=Start] run function mh_dp:merchant/book/init

# 終了
    data remove storage mhdp: Temp
    tag @e[type=wandering_trader,tag=MhdpBookMerchant,tag=Start] remove Start
    schedule function mh_dp:settings/ui/set_gamerule 2t replace