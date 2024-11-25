# Schedule the Swap Again unless there is one player or less
title @a title {"text":"Swapping!","color":"yellow"}
execute as @a at @s run playsound minecraft:block.anvil.land master @s
scoreboard players set #countdown countdown 5
schedule function deathswap:swap/countdown 1s
team leave @a[team=be_nice]
execute unless score #players players matches ..1 run schedule function deathswap:swap/init 295s