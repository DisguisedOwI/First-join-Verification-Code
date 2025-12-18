# Verification code processing

# For simplicity, we accept the trigger value that matches our code
execute if score @s verify matches 7326742 run function pack:grant_access

# If code is wrong, notify player
execute unless score @s verify matches 7326742 run tellraw @s [{"text":"[","color":"red"},{"text":"ACCESS DENIED","color":"dark_red","bold":true},{"text":"] ","color":"red"},{"text":"Incorrect verification code!","color":"red"}]

# Reset trigger
scoreboard players set @s verify 0
scoreboard players enable @s verify
