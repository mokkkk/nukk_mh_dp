
scoreboard players remove #mhdp_nazuti_font AsaMatrix 1
execute if score #mhdp_nazuti_font AsaMatrix matches 1.. run schedule function asa_animator:nazuti/manager/font/dec 3t replace
execute if score #mhdp_nazuti_font AsaMatrix matches ..0 run tag @e[tag=NazutiRoot] remove MhdpInc

execute unless entity @s[tag=IsAnger] run bossbar set asa_animator:nazuti_health name [{"score":{"name":"#mhdp_nazuti_font","objective":"AsaMatrix"},"font": "mhdp_teo"},{"text": "\uF80E","font": "default"},{"text": "霞龍","font": "default"},{"text":"\uE000","font":"mhdp"},{"text": "\uF82E","font": "default"}]
execute if entity @s[tag=IsAnger] run bossbar set asa_animator:nazuti_health name [{"score":{"name":"#mhdp_nazuti_font","objective":"AsaMatrix"},"font": "mhdp_teo"},{"text": "\uF80E","font": "default"},{"text": "霞龍","font": "default"},{"text":"\uE001","font":"mhdp"},{"text": "\uF82E","font": "default"}]