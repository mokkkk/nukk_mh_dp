
scoreboard players add #mhdp_teo_font AsaMatrix 1
execute if score #mhdp_teo_font AsaMatrix matches ..8 run schedule function asa_animator:teo/manager/font/inc 1t replace
execute if score #mhdp_teo_font AsaMatrix matches 9.. run tag @e[tag=TeoRoot] remove MhdpInc

execute unless entity @s[tag=IsAnger] run bossbar set asa_animator:teo_health name [{"score":{"name":"#mhdp_teo_font","objective":"AsaMatrix"},"font": "mhdp_teo"},{"text": "\uF81B\uF833","font": "default"},{"text": "炎王龍","font": "default"},{"text":"\uE000","font":"mhdp"}]
execute if entity @s[tag=IsAnger] run bossbar set asa_animator:teo_health name [{"score":{"name":"#mhdp_teo_font","objective":"AsaMatrix"},"font": "mhdp_teo"},{"text": "\uF81B\uF833","font": "default"},{"text": "炎王龍","font": "default"},{"text":"\uE001","font":"mhdp"}]