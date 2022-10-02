---  Скрипт должен сработать только если:
-----a. сервис 'CurrencyRates/Import' существует;
-----b. существует ли в БД в секции FirstRun ключ Lua_CurrencyRates (byte) и значение = 0.
-----c. существует ли файл CR.xml
--1. Проверяем существует ли сервис 'GmailMNotifier/Notifying', если существует, то едем дальше..., иначе брейк
--2. Указываем путь к файлу CR.xml
--3. Проверяем существует ли в БД в секции FirstRun ключ Lua_CurrencyRates, и существует ли файл CR.xml,
---. если ключ существует и если значение равно 0, и если существует файл, то едем дальше..., иначе брейк
--4. Импортируем файл CR.xml через сервис 'CurrencyRates/Import'.
--5. Меняем в БД в секции FirstRun значение ключа Lua_CurrencyRates на 1 (0 - скрипт 'CurrencyRates.lua' еще не выполнялся, 1 - уже выполнялся)
assert(m)
local db = require('m_database')
assert(db)
local winapi = require('winapi')
assert(winapi)
local globals = require('GlobalFunctions')
assert(globals)

if not m.ServiceExists('CurrencyRates/Import') then
  return
end

  local mCurrencyRatesXmlPath = toansi(m.Parse('%miranda_path%\\Plugins\\CurrencyRates\\CR.xml'))

if db.GetSetting(_, 'FirstRun', 'Lua_CurrencyRates', 0) == 0 and globals.FileExists(mCurrencyRatesXmlPath) then
  m.CallService('CurrencyRates/Import', 0, mCurrencyRatesXmlPath)
  db.WriteSetting(_, 'FirstRun', 'Lua_CurrencyRates', 1, db.DBVT_BYTE)
end