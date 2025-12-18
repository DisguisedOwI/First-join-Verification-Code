# Verification code processing

# If already verified, block re-verification - this is because otherwise you can teleport back to spawn after being verified.
execute if score @s verified matches 1.. run tellraw @s [{"text":"[","color":"green"},{"text":"ALREADY VERIFIED","color":"dark_green","bold":true},{"text":"] ","color":"green"},{"text":"You are already verified and cannot verify again.","color":"green"}]
execute if score @s verified matches 1.. run scoreboard players set @s verify 0

# For simplicity, we accept the trigger value that matches our code
execute unless score @s verified matches 1.. if score @s verify matches 7326742 run function pack:grant_access

# If code is wrong, notify player
execute unless score @s verified matches 1.. unless score @s verify matches 7326742 run tellraw @s [{"text":"[","color":"red"},{"text":"ACCESS DENIED","color":"dark_red","bold":true},{"text":"] ","color":"red"},{"text":"Incorrect verification code!","color":"red"}]

# Re-enable trigger
scoreboard players enable @s verify
