---  Скрипт должен сработать только если сервис 'CurrencyRates/Import' существует и в БД в секции FirstRun значение ключа Lua_CurrencyRates (byte) = 0
--1. Проверяем существует ли сервис 'CurrencyRates/Import' если нет, то брейк, если существует, то едем дальше...
--2. Если сервис существует, то читаем в БД в секции FirstRun значение ключа Lua_CurrencyRates (byte), если 1 то брейк, если 0, то едем дальше...
--3. Импортируем файл '%miranda_path%\\Skins\\CurrencyRates\\CR.xml' через сервис 'CurrencyRates/Import'.
--4. Меняем в БД в секции FirstRun значение ключа Lua_CurrencyRates (byte) на 1 (0 - скрипт 'CurrencyRates.lua' еще не выполнялся, 1 - уже выполнялся)
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)

if not m.ServiceExists('CurrencyRates/Import') then
  return
end

if db.GetSetting(_, 'FirstRun', 'Lua_CurrencyRates', 0) == 0 then
  local mCurrencyRatesXmlPath = toansi(m.Parse('%miranda_path%\\Skins\\CurrencyRates\\CR.xml'))
  m.CallService('CurrencyRates/Import', 0, mCurrencyRatesXmlPath)
  db.WriteSetting(_, 'FirstRun', 'Lua_CurrencyRates', 1, db.DBVT_BYTE)
end