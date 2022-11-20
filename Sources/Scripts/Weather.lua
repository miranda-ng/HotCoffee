---  Скрипт должен сработать только если:
-----a. сервис 'Weather/Update' существует;
-----b. существует ли в БД в секции FirstRun ключ Lua_Weather (byte) и значение = 0.
-----c. существует ли файл Weather.cfg
--1. Отсчёт 15 секунд после старта...
--2. Проверяем существует ли сервис 'Weather/Update', если существует, то едем дальше..., иначе брейк
--3. Указываем путь к файлу Weather.cfg
---. Проверяем существует ли в БД в секции FirstRun ключ Lua_Weather, и существует ли файл Weather.cfg,
--4. если ключ существует и если значение равно 0, и если существует файл, то едем дальше..., иначе брейк
--5. Импортируем файл Weather.cfg через сервис 'DBEditorpp/Import'.
--6. Меняем в БД в секции FirstRun значение ключа Lua_Weather на 1 (0 - скрипт 'Weather.lua' еще не выполнялся, 1 - уже выполнялся)
--7. Дёргаем сервисную функцию обновления Weather/UpdateAll
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
schedule = require('m_schedule')
assert(schedule)
local globals = require('GlobalFunctions')
assert(globals)

schedule.At(os.time() + 25).Do(function()
  if not m.ServiceExists('Weather/Update') then
    return
  end

  local mWeatherIniPath = toansi(m.Parse('%miranda_path%\\Plugins\\Weather\\Weather.cfg'))

  if db.GetSetting(_, 'FirstRun', 'Lua_Weather', 0) == 0 and globals.FileExists(mWeatherIniPath) then
    m.CallService('DBEditorpp/Import', 0, mWeatherIniPath)
    db.WriteSetting(_, 'FirstRun', 'Lua_Weather', 1, db.DBVT_BYTE)
    m.CallService("Weather/UpdateAll")
  end
end)