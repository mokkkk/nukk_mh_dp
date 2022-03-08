
# アイテム消去  
    execute as @a[tag=MhdpUsedCDyno] run function mh_dp:charm/dyno/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCDyno] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCDyno] {"text":"【斬竜の護石を装備した】"}
    tag @a[tag=MhdpUsedCDyno] add CharmDyno

# 終了
    tag @a remove MhdpUsedCDyno