say Akim datapack loaded
# =============== load.mcfunction ===============
# Запускается автоматически при загрузке датапака
# или при /reload

say [Akim] 🌍 Орбитальная система вооружения активирована!

# Строим пушку в небе над спавном (можно сменить координаты)
execute in minecraft:overworld run function akim:orbit_gun

# Вешаем постоянную проверку удочки (каждую секунду)
schedule function akim:check_rod 1s

# Эффект запуска
particle minecraft:totem_of_undying ~ ~ ~ 0 1 0 0 1 10
playsound minecraft:music_disc.pigstep master @a ~ ~ ~ 1 1