
scoreboard players set #mhdp_ruko_lv AsaMatrix 0
scoreboard players set #mhdp_ruko_actcount_lv AsaMatrix 0
execute unless entity @s[tag=IsAnger] run bossbar set asa_animator:ruko_health name [{"text": "極龍"},{"text":"\uE000","font":"mhdp"}]
execute if entity @s[tag=IsAnger] run bossbar set asa_animator:ruko_health name [{"text": "極龍"},{"text":"\uE001","font":"mhdp"}]