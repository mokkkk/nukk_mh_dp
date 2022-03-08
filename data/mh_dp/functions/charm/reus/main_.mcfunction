
# アイテム消去  
    execute as @a[tag=MhdpUsedCReus] run function mh_dp:charm/reus/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCReus] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCReus] {"text":"【火竜の護石を装備した】"}
    tag @a[tag=MhdpUsedCReus] add CharmReus

# 終了
    tag @a remove MhdpUsedCReus