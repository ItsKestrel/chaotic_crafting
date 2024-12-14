#Mark the ray has having found an entity.

scoreboard players set #hit rm_marker_ray 1

#Running custom commands since the entity was found.
tellraw @a {"text": "Armor Stand Found"}
kill @s