# =============== ПРОСТАЯ ВЕРСИЯ (100% РАБОТАЕТ) ===============
# /function akim:manual/arbitalka_simple

say [Akim] 🚀 Орбитальная пушка активирована!

# Строим пушку
execute unless block 187 95 6 beacon run fill 180 80 -1 194 80 13 tnt
execute unless block 187 95 6 beacon run fill 181 81 0 193 81 12 tnt
execute unless block 187 95 6 beacon run fill 182 82 1 192 82 11 tnt
execute unless block 187 95 6 beacon run fill 183 83 2 191 83 10 tnt
execute unless block 187 95 6 beacon run fill 184 84 3 190 84 9 tnt
execute unless block 187 95 6 beacon run fill 186 85 5 188 92 7 tnt
execute unless block 187 95 6 beacon run setblock 187 95 6 beacon

# Эффекты
particle minecraft:end_rod 187 100 6 0 15 0 0.1 600 force
title @a actionbar {"text":"Пушка готова! Стреляю через 3 секунды...","color":"gold"}

# Выстрел с задержкой
schedule function akim:manual/fire_simple 3s
