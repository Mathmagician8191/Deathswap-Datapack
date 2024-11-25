execute unless score #players players matches ..1 if score #players players matches 2 run function deathswap:swap/2swap
execute unless score #players players matches ..1 if score #players players matches 3 run function deathswap:swap/3swap
execute unless score #players players matches ..1 if score #players players matches 4 run function deathswap:swap/4swap
execute unless score #players players matches ..1 if score #players players matches 5 run function deathswap:swap/5swap
execute unless score #players players matches ..1 if score #players players matches 6 run function deathswap:swap/6swap
execute unless score #players players matches ..1 if score #players players matches 7 run function deathswap:swap/7swap
execute if score #players players matches 8.. run tellraw @a {"text":"Swap Failed!","color":"red"}
execute if score #players players matches 8.. as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s

title @a title {"text":""}