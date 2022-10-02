---  Скрипт должен сработать только если:
-----a. сервис 'NewsAggregator/ImportFeeds' существует;
-----b. существует ли в БД в секции FirstRun ключ Lua_NewsAggregator (byte) и значение = 0.
-----c. существует ли файл RSS.cfg
--1. Отсчёт 30 секунд после старта...
--2. Проверяем существует ли сервис 'NewsAggregator/ImportFeeds', если существует, то едем дальше..., иначе брейк
--3. Указываем путь к файлу RSS.cfg
---. Проверяем существует ли в БД в секции FirstRun ключ Lua_NewsAggregator, и существует ли файл RSS.cfg,
--4. если ключ существует и если значение равно 0, и если существует файл, то едем дальше..., иначе брейк
--5. Импортируем файл RSS.cfg через сервис 'DBEditorpp/Import'.
--6. Меняем в БД в секции FirstRun значение ключа Lua_NewsAggregator на 1 (0 - скрипт 'NewsAggregator.lua' еще не выполнялся, 1 - уже выполнялся)
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
schedule = require('m_schedule')
assert(schedule)
local globals = require('GlobalFunctions')
assert(globals)


schedule.At(os.time() + 30).Do(function()
  if not m.ServiceExists('NewsAggregator/ImportFeeds') then
    return
  end

  local mNewsAggregatorIniPath = toansi(m.Parse('%miranda_path%\\Plugins\\NewsAggregator\\RSS.cfg'))

  if db.GetSetting(_, 'FirstRun', 'Lua_NewsAggregator', 0) == 0 and globals.FileExists(mNewsAggregatorIniPath) then
    m.CallService('DBEditorpp/Import', 0, mNewsAggregatorIniPath)
    db.WriteSetting(_, 'FirstRun', 'Lua_NewsAggregator', 1, db.DBVT_BYTE)
  end
end)