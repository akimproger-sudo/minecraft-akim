# =============== ОРБИТАЛЬНАЯ ПУШКА AKIM ===============
# Запуск:
# /function akim:manual/arbitalka
#
# Логика:
# если пушка уже построена — просто выстрел
# если пушки нет — строим и стреляем

say [Akim] 🚀 Орбитальная пушка активирована!

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
title @a actionbar {"text":"⚡️ Орбитальная пушка заряжена","color":"gold"}

# Выстрел: большой столб TNT над целью
summon minecraft:tnt 187 120 6 {Fuse:80}
summon minecraft:tnt 187 116 6 {Fuse:75}
summon minecraft:tnt 187 112 6 {Fuse:70}
summon minecraft:tnt 187 108 6 {Fuse:65}
summon minecraft:tnt 187 104 6 {Fuse:60}
summon minecraft:tnt 187 100 6 {Fuse:55}
summon minecraft:tnt 187 96 6 {Fuse:50}
summon minecraft:tnt 187 92 6 {Fuse:45}
summon minecraft:tnt 187 88 6 {Fuse:40}
summon minecraft:tnt 187 84 6 {Fuse:35}
summon minecraft:tnt 187 80 6 {Fuse:30}

# Дополнительные TNT вокруг цели
summon minecraft:tnt 187 90 6 {Fuse:45}
summon minecraft:tnt 188 90 6 {Fuse:45}
summon minecraft:tnt 186 90 6 {Fuse:45}
summon minecraft:tnt 187 90 7 {Fuse:45}
summon minecraft:tnt 187 90 5 {Fuse:45}

# Визуальный удар
summon minecraft:lightning_bolt 187 80 6
particle minecraft:explosion_emitter 187 80 6 3 2 3 0 1
playsound minecraft:entity.generic.explosion master @a 187 80 6 2 0.6

say [Akim] 🎯 Орбитальный удар запущен по координатам 187 80 6!