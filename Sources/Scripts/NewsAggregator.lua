---  Скрипт должен сработать только если сервис 'NewsAggregator/ImportFeeds' существует, и в БД в секции FirstRun значение ключа Lua_NewsAggregator (byte) = 0
--0. Отсчёт 30 секунд...
--1. Проверяем существует ли сервис 'NewsAggregator/ImportFeeds' если нет, то брейк, если существует, то едем дальше...
--2. Читаем в БД в секции FirstRun значение ключа Lua_NewsAggregator (byte), если 1 то брейк, если 0, то едем дальше...
--3. Импортируем файл '%miranda_path%\\Plugins\\NewsAggregator\\RSS.cfg' через сервис 'DBEditorpp/Import'.
--4. Меняем в БД в секции FirstRun значение ключа Lua_NewsAggregator (byte) на 1 (0 - скрипт 'NewsAggregator.lua' еще не выполнялся, 1 - уже выполнялся)
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
schedule = require('m_schedule')
assert(schedule)

schedule.At(os.time() + 30).Do(function()
  if not m.ServiceExists('NewsAggregator/ImportFeeds') then
    return
  end

  if db.GetSetting(_, 'FirstRun', 'Lua_NewsAggregator', 0) == 0 then
    local mImportIniPath = toansi(m.Parse('%miranda_path%\\Plugins\\NewsAggregator\\RSS.cfg'))
    m.CallService('DBEditorpp/Import', 0, mImportIniPath)
    db.WriteSetting(_, 'FirstRun', 'Lua_NewsAggregator', 1, db.DBVT_BYTE)
  end
end)