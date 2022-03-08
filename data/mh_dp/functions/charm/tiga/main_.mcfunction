
# アイテム消去  
    execute as @a[tag=MhdpUsedCTiga] run function mh_dp:charm/tiga/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCTiga] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCTiga] {"text":"【轟竜の護石を装備した】"}
    tag @a[tag=MhdpUsedCTiga] add CharmTiga

# 終了
    tag @a remove MhdpUsedCTiga