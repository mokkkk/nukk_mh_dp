### Copyright © 2021 赤石愛
### This software is released under the MIT License, see LICENSE.

#> math:help/cos
# #math:cosのヘルプを表示します。

tellraw @s {"translate":" === function #math:%s ===","color":"aqua","with":["cos"]}
tellraw @s "cosを取得します。角度は度数法で指定します。"
tellraw @s {"translate":"入力%1$s: %2$s%3$s","with":[{"text":"(math: in)  ","color":"gray"},{"text":"角度","bold":true},{"text":"(int)","color":"gray"}]}
tellraw @s {"translate":"出力%1$s: %2$s%3$s","with":[{"text":"(math: out)","color":"gray"},{"text":"cos","bold":true},{"text":"(double)","color":"gray"}]}
