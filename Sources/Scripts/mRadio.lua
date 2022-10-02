---  Скрипт должен сработать только если:
-----a. сервис 'mRadio/Import' существует;
-----b. существует ли в БД в секции FirstRun ключ Lua_mRadio (byte) и значение = 0.
-----c. существует ли файл mRadio.ini
--1. Отсчёт 40 минут после старта...
--2. Проверяем существует ли сервис 'mRadio/Import', если существует, то едем дальше..., иначе брейк
--3. Указываем путь к файлу mRadio.ini
--4. Проверяем существует ли в БД в секции FirstRun ключ Lua_mRadio, и существует ли файл mRadio.ini,
---. если ключ существует и если значение равно 0, и если существует файл, то едем дальше..., иначе брейк
--5. Импортируем файл mRadio.ini через сервис 'mRadio/Import'.
--6. Меняем в БД в секции FirstRun значение ключа Lua_mRadio на 1 (0 - скрипт 'mRadio.lua' еще не выполнялся, 1 - уже выполнялся)
--7. Меняем в БД в секции mRadio значение ключа Volume (byte) на 100 (уровень громкости, почему-то постоянно слетает на значение по умолчанию)
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
schedule = require('m_schedule')
assert(schedule)
local globals = require('GlobalFunctions')
assert(globals)

if not m.ServiceExists('mRadio/Import') then
  return
end

  local mRadioIniPath = toansi(m.Parse('%miranda_path%\\Plugins\\mRadio\\mRadio.ini'))

schedule.At(os.time() + 2400).Do(function()
  if db.GetSetting(_, 'FirstRun', 'Lua_mRadio', 0) == 0 and globals.FileExists(mRadioIniPath) then
    m.CallService('mRadio/Import', 0, mRadioIniPath)
    db.WriteSetting(_, 'FirstRun', 'Lua_mRadio', 1, db.DBVT_BYTE)
    db.WriteSetting(_, 'mRadio', 'Volume', 100, db.DBVT_BYTE)
  end
end)