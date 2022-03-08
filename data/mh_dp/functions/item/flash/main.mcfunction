
# 1tick後にアイテム消去
    tag @s add MhdpUsedFlash
    schedule function mh_dp:item/flash/main_ 1t replace

# 処理用marker召喚
    execute at @s run summon marker ~ ~ ~ {Tags:["MonsterShot","ItemFlash"]}
    execute at @s run tp @e[type=marker,tag=ItemFlash,distance=..1,sort=nearest,limit=1] ~ ~1.65 ~ ~ ~

# 効果音
    execute at @s run playsound entity.egg.throw master @a ~ ~ ~ 1 1

# 終了
    advancement revoke @s only mh_dp:items/used_flash