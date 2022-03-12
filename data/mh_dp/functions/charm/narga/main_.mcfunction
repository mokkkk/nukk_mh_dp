
# アイテム消去  
    execute as @a[tag=MhdpUsedCNarga] run function mh_dp:charm/narga/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCNarga] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCNarga] {"text":"【迅竜の護石を装備した】"}
    tag @a[tag=MhdpUsedCNarga] add CharmNarga

# 終了
    tag @a remove MhdpUsedCNarga