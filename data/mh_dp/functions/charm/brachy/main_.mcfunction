
# アイテム消去  
    execute as @a[tag=MhdpUsedCBrachy] run function mh_dp:charm/brachy/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCBrachy] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCBrachy] {"text":"【砕竜の護石を装備した】"}
    tag @a[tag=MhdpUsedCBrachy] add CharmBrachy

# 終了
    tag @a remove MhdpUsedCBrachy