
# アイテム消去  
    execute as @a[tag=MhdpUsedCDiamond] run function mh_dp:charm/diamond/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCDiamond] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCDiamond] {"text":"【加護の護石を装備した】"}
    tag @a[tag=MhdpUsedCDiamond] add CharmDiamond

# 終了
    tag @a remove MhdpUsedCDiamond