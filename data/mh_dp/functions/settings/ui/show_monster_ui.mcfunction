
execute store result storage mh_dp:settings Temp int 1 run gamerule sendCommandFeedback
gamerule sendCommandFeedback false

tellraw @a {"text": "==========================================\n\nMH_DP Summon","color": "light_purple"}

tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[火竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:reus/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[雌火竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:reia/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[角竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:diablos/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[雷狼竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:zinogre/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[迅竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:narga/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[斬竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:dyno/manager/summon"}}]
tellraw @a [{"text": "\n ---  ","color": "light_purple"},{"text": "[砕竜]","color": "light_purple","clickEvent":{"action":"run_command","value":"/function asa_animator:brachy/manager/summon"}}]

tellraw @a {"text": "\n==========================================","color": "light_purple"}

schedule function mh_dp:settings/ui/set_gamerule 2t
