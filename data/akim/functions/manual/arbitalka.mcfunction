mcfunction
# =============== ОРБИТАЛЬНАЯ ПУШКА AKIM ===============
# Запуск:
# /function akim:manual/arbitalka
#
# Логика:
# Динамит летит по круговой траектории вокруг цели 187 80 6

say [Akim] 🚀 Орбитальная пушка активирована! Снаряды идут по кругу...

# Строим пушку, но только если центрального маяка ещё нет
execute unless block 187 95 6 beacon run fill 180 80 -1 194 80 13 tnt
execute unless block 187 95 6 beacon run fill 181 81 0 193 81 12 tnt
execute unless block 187 95 6 beacon run fill 182 82 1 192 82 11 tnt
execute unless block 187 95 6 beacon run fill 183 83 2 191 83 10 tnt
execute unless block 187 95 6 beacon run fill 184 84 3 190 84 9 tnt

# Центральный ствол
execute unless block 187 95 6 beacon run fill 186 85 5 188 92 7 tnt

# Метка, что пушка уже создана
execute unless block 187 95 6 beacon run setblock 187 95 6 beacon

# Эффекты зарядки
particle minecraft:end_rod 187 100 6 0 15 0 0.1 600 force
playsound minecraft:block.beacon.activate master @a 187 80 6 2 0.7
title @a actionbar {"text":"⚡️ Орбитальная пушка заряжена. Круговой залп!","color":"gold"}

# ========== КРУГОВАЯ ТРАЕКТОРИЯ ДИНАМИТА ==========
# Радиус круга = 7 блоков, высота снижается постепенно

# Орбита 1 (верхний уровень, y=100)
summon minecraft:tnt 194 100 6 {Fuse:100,Motion:[-0.5,-0.3,0.0]}
summon minecraft:tnt 187 100 13 {Fuse:100,Motion:[0.0,-0.3,0.5]}
summon minecraft:tnt 180 100 6 {Fuse:100,Motion:[0.5,-0.3,0.0]}
summon minecraft:tnt 187 100 -1 {Fuse:100,Motion:[0.0,-0.3,-0.5]}

# Орбита 2 (y=94) - смещённая
summon minecraft:tnt 193 94 7 {Fuse:90,Motion:[-0.4,-0.3,0.3]}
summon minecraft:tnt 188 94 12 {Fuse:90,Motion:[0.1,-0.3,0.5]}
summon minecraft:tnt 181 94 5 {Fuse:90,Motion:[0.5,-0.3,0.0]}
summon minecraft:tnt 186 94 -0 {Fuse:90,Motion:[0.1,-0.3,-0.5]}

# Орбита 3 (y=88)
summon minecraft:tnt 191 88 8 {Fuse:80,Motion:[-0.3,-0.3,0.4]}
summon minecraft:tnt 186 88 10 {Fuse:80,Motion:[0.0,-0.3,0.5]}
summon minecraft:tnt 183 88 4 {Fuse:80,Motion:[0.4,-0.3,0.1]}
summon minecraft:tnt 188 88 2 {Fuse:80,Motion:[0.3,-0.3,-0.3]}

# Орбита 4 (y=82) - почти у цели
summon minecraft:tnt 190 82 9 {Fuse:70,Motion:[-0.2,-0.2,0.4]}
summon minecraft:tnt 185 82 11 {Fuse:70,Motion:[0.0,-0.2,0.5]}
summon minecraft:tnt 184 82 3 {Fuse:70,Motion:[0.4,-0.2,0.0]}
summon minecraft:tnt 189 82 2 {Fuse:70,Motion:[0.2,-0.2,-0.3]}

# ========== ДОПОЛНИТЕЛЬНЫЕ СНАРЯДЫ ПО СПИРАЛИ ==========
# Спиральный заход на цель

# Внешний круг (радиус 10)
summon minecraft:tnt 197 95 6 {Fuse:95,Motion:[-0.6,-0.3,0.0]}
summon minecraft:tnt 187 95 16 {Fuse:95,Motion:[0.0,-0.3,0.6]}
summon minecraft:tnt 177 95 6 {Fuse:95,Motion:[0.6,-0.3,0.0]}
summon minecraft:tnt 187 95 -4 {Fuse:95,Motion:[0.0,-0.3,-0.6]}

# Средний круг (радиус 5)
summon minecraft:tnt 192 90 6 {Fuse:85,Motion:[-0.4,-0.3,0.0]}
summon minecraft:tnt 187 90 11 {Fuse:85,Motion:[0.0,-0.3,0.4]}
summon minecraft:tnt 182 90 6 {Fuse:85,Motion:[0.4,-0.3,0.0]}
summon minecraft:tnt 187 90 1 {Fuse:85,Motion:[0.0,-0.3,-0.4]}

# Внутренний круг (радиус 3) - добивание
summon minecraft:tnt 190 85 6 {Fuse:75,Motion:[-0.3,-0.3,0.0]}
summon minecraft:tnt 187 85 9 {Fuse:75,Motion:[0.0,-0.3,0.3]}
summon minecraft:tnt 184 85 6 {Fuse:75,Motion:[0.3,-0.3,0.0]}
summon minecraft:tnt 187 85 3 {Fuse:75,Motion:[0.0,-0.3,-0.3]}

# ========== ТОЧНЫЙ УДАР В ЦЕНТР ==========
summon minecraft:tnt 187 80 6 {Fuse:30}
summon minecraft:tnt 187 84 6 {Fuse:40}
summon minecraft:tnt 187 88 6 {Fuse:50}
summon minecraft:tnt 187 92 6 {Fuse:60}
summon minecraft:tnt 187 96 6 {Fuse:70}
summon minecraft:tnt 187 100 6 {Fuse:80}

# ========== ВИЗУАЛЬНЫЕ ЭФФЕКТЫ ==========
# Молния в центре
summon minecraft:lightning_bolt 187 80 6

# Кольцевые частицы (имитация круговой атаки)
particle minecraft:explosion_emitter 187 80 6 8 2 8 0 1
particle minecraft:dust 1 0 0 1 187 90 6 7 0 7 0 100
particle minecraft:dust 0 1 0 1 187 85 6 5 0 5 0 80
particle minecraft:dust 0 0 1 1 187 95 6 10 0 10 0 120

# Звуки кружения
playsound minecraft:entity.ender_dragon.flying master @a 187 80 6 3 0.8
playsound minecraft:entity.wither.shoot master @a 187 80 6 2 1.2
playsound minecraft:entity.generic.explosion master @a 187 80 6 2 0.5

say [Akim] 🎯 Круговой орбитальный удар запущен! Снаряды идут по спирали к цели 187 80 6!
Как это работает:
Motion - задаёт вектор движения динамита (X, Y, Z)

Каждый TNT получает импульс в сторону центра по круговой траектории

Fuse - время до взрыва (чем больше, тем выше старт)

Динамит летит по кругу с разных сторон, постепенно снижаясь

Визуализация траектории:
text
      Верхний круг (y=100, радиус 7)
           ○
         /   \
        ○     ○  ← Снаряды летят по касательной
         \   /
           ○
           ↓
      Средний круг (y=90, радиус 5)
           ↓
      Нижний круг (y=82, радиус 3)
           ↓
         ЦЕЛЬ (187 80 6) 💥
