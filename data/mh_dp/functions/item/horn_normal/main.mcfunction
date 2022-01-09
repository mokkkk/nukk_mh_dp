
playsound event.raid.horn master @a ~ ~ ~ 30 1.3

# アイテム消去
tag @s add MhdpUsedHornN
schedule function mh_dp:item/horn_normal/main_ 1t replace

advancement revoke @s only mh_dp:items/used_horn_normal