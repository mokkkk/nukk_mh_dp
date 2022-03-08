
# アイテム消去  
    execute as @a[tag=MhdpUsedCRuko] run function mh_dp:charm/ruko/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCRuko] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCRuko] {"text":"【極龍の護石を装備した】"}
    tag @a[tag=MhdpUsedCRuko] add CharmRuko

# 終了
    tag @a remove MhdpUsedCRuko