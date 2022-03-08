
# 1tick後にアイテム消去
    tag @s add MhdpUsedCBrachyR
    schedule function mh_dp:charm/brachyr/main_ 1t replace

# 効果音
    execute at @s run playsound item.armor.equip_chain master @a ~ ~ ~ 1 1

# 終了
    advancement revoke @s only mh_dp:items/used_charm/brachyr