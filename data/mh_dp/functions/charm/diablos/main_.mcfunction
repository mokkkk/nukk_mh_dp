
# アイテム消去  
    execute as @a[tag=MhdpUsedCDiablos] run function mh_dp:charm/diablos/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCDiablos] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCDiablos] {"text":"【角竜の護石を装備した】"}
    tag @a[tag=MhdpUsedCDiablos] add CharmDiablos

# 終了
    tag @a remove MhdpUsedCDiablos