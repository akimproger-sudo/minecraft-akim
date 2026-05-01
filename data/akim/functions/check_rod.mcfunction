# =============== check_rod.mcfunction ===============
# Проверяет, закинул ли игрок удочку в пушку

# Если есть удочка в радиусе 5 блоков от центра пушки (0 200 0)
execute as @a at @s if entity @e[type=minecraft:fishing_hook,distance=..5,limit=1] run function akim:shoot

# Повторяем проверку каждую секунду
schedule function akim:check_rod 1s