---  Скрипт должен сработать только если сервис 'Weather/Update' существует, и в БД в секции FirstRun значение ключа Lua_Weather (byte) = 0
--0. Отсчёт 15 секунд...
--1. Проверяем существует ли сервис 'Weather/Update' если нет, то брейк, если существует, то едем дальше...
--2. Читаем в БД в секции FirstRun значение ключа Lua_Weather (byte), если 1 то брейк, если 0, то едем дальше...
--3. Импортируем файл '%miranda_path%\\Plugins\\Weather\\Weather.cfg' через сервис 'DBEditorpp/Import'.
--4. Меняем в БД в секции FirstRun значение ключа Lua_Weather (byte) на 1 (0 - скрипт 'Weather.lua' еще не выполнялся, 1 - уже выполнялся)
--5. Дёргаем сервисную функцию обновления Weather/UpdateAll
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
schedule = require('m_schedule')
assert(schedule)

schedule.At(os.time() + 15).Do(function()
  if not m.ServiceExists('Weather/Update') then
    return
  end

  if db.GetSetting(_, 'FirstRun', 'Lua_Weather', 0) == 0 then
    local mImportIniPath = toansi(m.Parse('%miranda_path%\\Plugins\\Weather\\Weather.cfg'))
    m.CallService('DBEditorpp/Import', 0, mImportIniPath)
    db.WriteSetting(_, 'FirstRun', 'Lua_Weather', 1, db.DBVT_BYTE)
    m.CallService("Weather/UpdateAll")
  end
end)