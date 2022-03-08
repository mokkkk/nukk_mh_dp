
# アイテム消去  
    execute as @a[tag=MhdpUsedCTeo] run function mh_dp:charm/teo/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCTeo] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCTeo] {"text":"【炎王龍の護石を装備した】"}
    tag @a[tag=MhdpUsedCTeo] add CharmTeo

# 終了
    tag @a remove MhdpUsedCTeo