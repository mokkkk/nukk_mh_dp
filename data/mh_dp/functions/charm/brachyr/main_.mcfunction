
# アイテム消去  
    execute as @a[tag=MhdpUsedCBrachyR] run function mh_dp:charm/brachyr/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCBrachyR] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCBrachyR] {"text":"【砕竜の護石・改を装備した】"}
    tag @a[tag=MhdpUsedCBrachyR] add CharmBrachyR

# 終了
    tag @a remove MhdpUsedCBrachyR