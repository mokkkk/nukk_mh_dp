
# アイテム消去  
    execute as @a[tag=MhdpUsedCReset] run function mh_dp:charm/reset/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCReset] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCReset] {"text":"【装備中の護石を取り外した】"}

# 終了
    tag @a remove MhdpUsedCReset