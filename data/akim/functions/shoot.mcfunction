# =============== shoot.mcfunction ===============
# Орбитальный выстрел по координатам 187 80 6

# Звук активации
playsound minecraft:block.beacon.activate master @a 0 200 0 5 0.5
playsound minecraft:entity.ender_dragon.growl master @a 0 200 0 5 1

# Анимация заряжания
particle minecraft:end_rod 0 200 0 0 5 0 0.2 200 force
particle minecraft:dust 1 0 0 1 0 200 0 2 0 2 0 100
title @a title {"text":"⚡ ОРБИТАЛЬНЫЙ УДАР ⚡","color":"red","bold":true}
title @a subtitle {"text":"Цель: 187 80 6","color":"yellow"}

# Задержка перед выстрелом (эпично)
schedule function akim:fire_shot 3s

say [Akim] 🔴 Орбитальная пушка заряжается! Удар через 3 секунды...