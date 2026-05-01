# =============== fire_shot.mcfunction ===============

# Создаём луч из частиц от пушки до цели
particle minecraft:dust 1 0 0 1 0 200 0 0 0 0 0 1 force
execute positioned 0 200 0 run particle minecraft:dust 1 0 0 1 ^ ^ ^1 187 80 6 0.1 300 force

# Снаряды (огненные шары) летят в цель
summon minecraft:fireball 0 200 0 {direction:[187.0,80.0,6.0],ExplosionPower:3}
summon minecraft:fireball 0 200 0 {direction:[187.0,80.0,6.0],ExplosionPower:3}
summon minecraft:fireball 0 200 0 {direction:[187.0,80.0,6.0],ExplosionPower:3}
summon minecraft:fireball 0 200 0 {direction:[187.0,80.0,6.0],ExplosionPower:3}
summon minecraft:fireball 0 200 0 {direction:[187.0,80.0,6.0],ExplosionPower:3}

# Взрыв в точке цели
execute positioned 187 80 6 run summon minecraft:tnt ~ ~ ~ {Fuse:0}
execute positioned 187 80 6 run summon minecraft:tnt ~ ~1 ~ {Fuse:0}
execute positioned 187 80 6 run summon minecraft:tnt ~1 ~ ~ {Fuse:0}
execute positioned 187 80 6 run summon minecraft:tnt ~-1 ~ ~ {Fuse:0}
execute positioned 187 80 6 run summon minecraft:tnt ~ ~ ~1 {Fuse:0}
execute positioned 187 80 6 run summon minecraft:tnt ~ ~ ~-1 {Fuse:0}

# Эффекты на цели
execute positioned 187 80 6 run particle minecraft:explosion_emitter ~ ~ ~ 3 2 3 0 1
execute positioned 187 80 6 run summon minecraft:lightning_bolt ~ ~ ~
execute positioned 187 80 6 run summon minecraft:lightning_bolt ~ ~ ~
execute positioned 187 80 6 run playsound minecraft:entity.generic.explosion master @a ~ ~ ~ 3 0.5

# Разрушение (опционально - взрываем блоки вокруг)
execute positioned 187 80 6 run fill ~-4 ~-2 ~-4 ~4 ~4 ~4 air replace stone
execute positioned 187 80 6 run fill ~-4 ~-2 ~-4 ~4 ~4 ~4 air replace deepslate
execute positioned 187 80 6 run fill ~-4 ~-2 ~-4 ~4 ~4 ~4 air replace dirt

say [Akim] 💥 ОРБИТАЛЬНЫЙ УДАР НАНЕСЁН! Координаты 187 80 6 уничтожены!

# Перезарядка пушки (5 секунд)
schedule function akim:reload_gun 5s