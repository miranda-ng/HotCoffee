---  Скрипт должен сработать только если сервис 'mRadio/Import' существует и в БД в секции FirstRun значение ключа Lua_mRadio (byte) = 0
--1. Проверяем существует ли сервис 'mRadio/Import' если нет, то брейк, если существует, то едем дальше...
--2. Если сервис существует, то читаем в БД в секции FirstRun значение ключа Lua_mRadio (byte), если 1 то брейк, если 0, то едем дальше...
--3. Импортируем файл '%miranda_path%\\UserSet\\mRadio\\CR.xml' через сервис 'mRadio/Import'.
--4. Меняем в БД в секции FirstRun значение ключа Lua_mRadio (byte) на 1 (0 - скрипт 'mRadio.lua' еще не выполнялся, 1 - уже выполнялся)
--5. Меняем в БД в секции mRadio значение ключа Volume (byte) на 100 (уровень громкости, почему-то постоянно слетает на значение по умолчанию)
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)

if not m.ServiceExists('mRadio/Import') then
  return
end

if db.GetSetting(_, 'FirstRun', 'Lua_mRadio', 0) == 0 then
  local mRadioIniPath = toansi(m.Parse('%miranda_path%\\UserSet\\mRadio\\mRadio.ini'))
  m.CallService('mRadio/Import', 0, mRadioIniPath)
  db.WriteSetting(_, 'FirstRun', 'Lua_mRadio', 1, db.DBVT_BYTE)
  db.WriteSetting(_, 'mRadio', 'Volume', 100, db.DBVT_BYTE)
end