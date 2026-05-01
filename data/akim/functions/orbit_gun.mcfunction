# =============== orbit_gun.mcfunction ===============
# Строит огромную пушку в небе на координатах (0, 200, 0)
# Можно изменить координаты под свои нужды

# Координаты центра пушки (высоко в небе)
# Меняй здесь: X, Y, Z
setblock 0 200 0 beacon

# ===== ОСНОВАНИЕ ПУШКИ (радиус 12) =====
fill -12 197 -12 12 197 12 obsidian
fill -10 198 -10 10 198 10 iron_block
fill -8 199 -8 8 199 8 gold_block
fill -6 200 -6 6 200 6 diamond_block
fill -4 201 -4 4 201 4 emerald_block

# ===== СТВОЛ (высокая башня) =====
fill -2 202 -2 2 220 2 iron_bars
fill -1 221 -1 1 230 1 redstone_block

# ===== ОРБИТАЛЬНЫЕ КОЛЬЦА =====
# Кольцо 1 (радиус 15, на высоте 210)
fill -15 210 -15 15 210 15 air replace
fill -15 210 -15 15 210 15 glass 0 outline
fill -15 210 15 15 210 -15 glass 0 outline

# Кольцо 2 (радиус 20, на высоте 215)
fill -20 215 -20 20 215 20 air replace
fill -20 215 -20 20 215 20 glass 0 outline
fill -20 215 20 20 215 -20 glass 0 outline

# ===== ДЕКОРАТИВНЫЕ ЭЛЕМЕНТЫ =====
# Крылья-стабилизаторы
fill -5 202 5 -5 210 5 iron_trapdoor
fill 5 202 5 5 210 5 iron_trapdoor
fill -5 202 -5 -5 210 -5 iron_trapdoor
fill 5 202 -5 5 210 -5 iron_trapdoor

# Антенна на макушке
setblock 0 231 5 redstone_lamp
setblock 0 231 -5 redstone_lamp
setblock 5 231 0 redstone_lamp
setblock -5 231 0 redstone_lamp
setblock 0 235 0 beacon

# ===== КОМАНДНЫЕ БЛОКИ (для автоматического выстрела) =====
# Скрытые командные блоки внутри пушки
setblock 0 201 0 command_block{Command:"execute if entity @e[type=minecraft:fishing_hook,nbt={OnGround:0b}] run function akim:shoot",auto:1b} destroy

setblock 0 200 1 redstone_block

# ===== ЗАПУСКАЕМ АНИМАЦИЮ СВЕЧЕНИЯ =====
setblock 0 202 10 redstone_lamp
setblock 0 202 -10 redstone_lamp
setblock 10 202 0 redstone_lamp
setblock -10 202 0 redstone_lamp

# Эффекты постройки
particle minecraft:end_rod 0 200 0 15 30 15 0.1 1000 force
particle minecraft:fireworks_spark 0 200 0 12 25 12 0.5 500

say [Akim] 🛸 Орбитальная пушка построена на высоте 200 блоков!
say [Akim] 🎣 Закинь удочку в неё, чтобы активировать!