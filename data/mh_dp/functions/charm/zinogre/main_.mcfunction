
# アイテム消去  
    execute as @a[tag=MhdpUsedCZinogre] run function mh_dp:charm/zinogre/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCZinogre] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCZinogre] {"text":"【雷狼竜の護石を装備した】"}
    tag @a[tag=MhdpUsedCZinogre] add CharmZinogre

# 終了
    tag @a remove MhdpUsedCZinogre