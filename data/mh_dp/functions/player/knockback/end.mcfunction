
tag @s remove MdhpKnockbackDW
tag @s remove MdhpKnockbackD
tag @s remove MdhpKnockbackW
tag @s remove MdhpKnockback
execute unless entity @a[tag=MdhpKnockback] run kill @e[type=marker,tag=MhdpKnockbackPos]
tp @e[tag=MhdpKnockbackParts] ~ ~-1000 ~
kill @e[tag=MhdpKnockbackParts]