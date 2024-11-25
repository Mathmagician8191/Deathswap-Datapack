# Colours
execute if score #countdown countdown matches 4.. run title @a title {"score":{"name":"#countdown","objective":"countdown"},"color":"dark_green"}
execute if score #countdown countdown matches 3 run title @a title {"score":{"name":"#countdown","objective":"countdown"},"color":"green"}
execute if score #countdown countdown matches 2 run title @a title {"score":{"name":"#countdown","objective":"countdown"},"color":"yellow"}
execute if score #countdown countdown matches 1 run title @a title {"score":{"name":"#countdown","objective":"countdown"},"color":"red"}

# Countdown Logic
scoreboard players remove #countdown countdown 1
execute as @a at @s run playsound minecraft:ui.button.click master @s
execute unless score #countdown countdown matches ..0 run schedule function deathswap:swap/countdown 1s
execute if score #countdown countdown matches 0 run schedule function deathswap:swap/calcswap 1s