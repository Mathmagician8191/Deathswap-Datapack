execute if score #players players matches 2 run function deathswap:swap/2swap
execute if score #players players matches 3 run function deathswap:swap/3swap
execute if score #players players matches 4 run function deathswap:swap/4swap
execute if score #players players matches 5 run function deathswap:swap/5swap
execute if score #players players matches 6 run function deathswap:swap/6swap
execute if score #players players matches 7 run function deathswap:swap/7swap
execute if score #players players matches 8 run function deathswap:swap/8swap
execute if score #players players matches 9 run function deathswap:swap/9swap
execute if score #players players matches 10 run function deathswap:swap/10swap
execute if score #players players matches 11 run function deathswap:swap/11swap
execute if score #players players matches 12 run function deathswap:swap/12swap
execute if score #players players matches 13.. run tellraw @a {"text":"Swap Failed!","color":"red"}
execute if score #players players matches 13.. as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s
title @a title {"text":""}
