---  Скрипт должен сработать только если:
-----a. сервис 'GmailMNotifier/Notifying' существует;
-----b. существует ли в БД в секции FirstRun ключ Lua_GmailNotifier (byte) и значение = 0.
-----c. существует ли файл GmailNotifier.cfg
--1. Отсчёт 11 секунд после старта...
--2. Проверяем существует ли сервис 'GmailMNotifier/Notifying', если существует, то едем дальше..., иначе брейк
--3. Указываем путь к файлу GmailNotifier.cfg
---. Проверяем существует ли в БД в секции FirstRun ключ Lua_GmailNotifier, и существует ли файл GmailNotifier.cfg,
--4. если ключ существует и если значение равно 0, и если существует файл, то едем дальше..., иначе брейк
--5. Импортируем файл GmailNotifier.cfg через сервис 'DBEditorpp/Import'.
--6. Меняем в БД в секции FirstRun значение ключа Lua_GmailNotifier на 1 (0 - скрипт 'GmailNotifier.lua' еще не выполнялся, 1 - уже выполнялся)
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
schedule = require('m_schedule')
assert(schedule)
local globals = require('GlobalFunctions')
assert(globals)

schedule.At(os.time() + 11).Do(function()
  if not m.ServiceExists('GmailMNotifier/Notifying') then
    return
  end
  
  local mGmailNotifierIniPath = toansi(m.Parse('%miranda_path%\\Plugins\\GmailNotifier\\GmailNotifier.cfg'))

  if db.GetSetting(_, 'FirstRun', 'Lua_GmailNotifier', 0) == 0 and globals.FileExists(mGmailNotifierIniPath) then
    m.CallService('DBEditorpp/Import', 0, mGmailNotifierIniPath)
    db.WriteSetting(_, 'FirstRun', 'Lua_GmailNotifier', 1, db.DBVT_BYTE)
  end
end)