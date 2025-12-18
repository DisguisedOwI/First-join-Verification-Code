# Run every tick

# Detect new players who haven't been verified yet
execute as @a[scores={verified=0}] run function pack:restrict_player

# Process verification attempts
execute as @a[scores={verify=1..}] run function pack:verify_process
