
# アイテム消去  
    execute as @a[tag=MhdpUsedCReia] run function mh_dp:charm/reia/clear

# 既に装備中の護石を取り外す
    execute as @a[tag=MhdpUsedCReia] run function mh_dp:charm/reset/give

# タグ付与
    tellraw @a[tag=MhdpUsedCReia] {"text":"【雌火竜の護石を装備した】"}
    tag @a[tag=MhdpUsedCReia] add CharmReia

# attribute設定
    execute as @a[tag=MhdpUsedCReia] run attribute @s generic.max_health modifier add cdf2bd2c-aec2-4cd0-82a1-0 mhdp_charm_reia 4.0 add

# 終了
    tag @a remove MhdpUsedCReia