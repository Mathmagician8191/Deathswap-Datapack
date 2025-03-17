import os

MAX_PLAYERS = int(os.environ["MAX_PLAYERS"])

result = ""

for x in range(2, MAX_PLAYERS + 1):
  result += f"execute if score #players players matches {x} run function deathswap:swap/{x}swap\n"

result += 'execute if score #players players matches ' + str(MAX_PLAYERS + 1) + '.. run tellraw @a {"text":"Swap Failed!","color":"red"}\n'
result += 'execute if score #players players matches ' + str(MAX_PLAYERS + 1) + '.. as @a at @s run playsound minecraft:block.note_block.didgeridoo master @s\n'

result += 'title @a title {"text":""}\n'

with open("data/deathswap/function/swap/calcswap.mcfunction", "w") as file:
  file.write(result)

for x in range(2, MAX_PLAYERS + 1):
  result = "# Set the Tags\n"

  tags = [f"swap{y}" for y in range(x)]

  processed_tags = ""
  for tag in tags:
    result += f"tag @r[tag=!out{processed_tags}] add {tag}\n"
    processed_tags += f", tag=!{tag}"
  
  result += "\n# Summon Armor Stands\n"

  for tag in tags:
    result += 'execute at @a[tag=' + tag + '] run summon armor_stand ~ ~ ~ {Invisible:1b,Invulnerable:1b,Tags:["a' + tag + '"],NoGravity:1b}\n'
  
  result += "\n# Swap the Players\n"

  for y in range(x):
    new_y = (y + 1) % x
    result += f"tp @a[tag=swap{y}] @e[tag=aswap{new_y},limit=1]\n"

  result += "\n# Confirmation Message\n"
  result += 'tellraw @a {"text":"Swap!","color":"yellow"}\n'
  result += "execute as @a at @s run playsound minecraft:entity.enderman.teleport master @s"

  result += "\n# Kill the Armor Stands\n"

  for tag in tags:
    result += f"kill @e[tag=a{tag}]\n"
  
  result += "\n# Remove Tags\n"

  for tag in tags:
    result += f"tag @a remove {tag}\n"

  with open(f"data/deathswap/function/swap/{x}swap.mcfunction", "w") as file:
    file.write(result)
