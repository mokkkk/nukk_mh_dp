
# アイテム消去  
    execute as @a[tag=MhdpUsedCKushala] run function mh_dp:charm/kushala/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCKushala] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCKushala] {"text":"【鋼龍の護石を装備した】"}
    tag @a[tag=MhdpUsedCKushala] add CharmKushala

# 終了
    tag @a remove MhdpUsedCKushala