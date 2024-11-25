scoreboard players remove #players players 1
gamemode spectator @s
tag @s add out
execute at @s run summon lightning_bolt
execute as @a at @s run playsound minecraft:entity.lightning_bolt.impact master @a
title @s title {"text":"You are out!","color":"red"}