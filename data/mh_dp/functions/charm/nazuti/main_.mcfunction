
# アイテム消去  
    execute as @a[tag=MhdpUsedCNazuti] run function mh_dp:charm/nazuti/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCNazuti] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCNazuti] {"text":"【霞龍の護石を装備した】"}
    tag @a[tag=MhdpUsedCNazuti] add CharmNazuti

# 終了
    tag @a remove MhdpUsedCNazuti