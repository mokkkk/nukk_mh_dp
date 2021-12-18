
# 
# ランダム
execute if entity @s[tag=DashAct] run tag @s add DashSpin
tag @s add DashAct

# 左右確認
execute facing entity @e[limit=1,tag=TigaAttackTarget] feet positioned ^ ^ ^3.0 rotated as @s positioned ^4.0 ^ ^ if entity @s[distance=..5.0] run tag @s add Right

execute if entity @s[tag=Right,tag=!DashSpin] run tag @s add AnmDashTurnRN
execute unless entity @s[tag=Right] if entity @s[tag=!DashSpin] run tag @s add AnmDashTurnLN
execute if entity @s[tag=Right,tag=DashSpin] run tag @s add AnmDashTurnRS
execute unless entity @s[tag=Right] if entity @s[tag=DashSpin] run tag @s add AnmDashTurnLS

tag @s remove Right