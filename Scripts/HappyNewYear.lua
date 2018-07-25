local db = require('m_database')
local schedule = require('m_schedule')
local sounds = require('m_sounds')
local winapi = require('winapi')

local congratulation = function()
  local text = ''
    .. m.Translate(
[[Happy New Year to you!
May every great new day
Bring you sweet surprises -
A happiness buffet.

Happy New Year to you
And when the new year's done
May the next year be even better
Full of pleasure, joy and fun.]])
    .. '\r\n\r\n\r\n'
    .. db.GetSetting(_, 'PackInfo', 'Production')
  if db.GetSetting(_, 'Skin', 'UseSound', 0) == 1 then
    sounds.PlayFile(m.Parse('%miranda_path%\\UserSet\\Sounds\\hny.mp3'))
  end
  db.WriteSetting(_, 'MirLua', 'LHNYCY', tonumber(os.date('%Y')))
  winapi.MessageBox(_, text, m.Translate('Happy New Year'), 0x00001000)
end

local now = os.date('*t')

local prevYear = db.GetSetting(_, 'MirLua', 'LHNYCY', 0)
if (prevYear < now.year and now.month == 1 and now.day >= 1 and now.day < 15) then
  schedule.At(os.time() + 30).Do(congratulation)
else
  schedule.At(os.time({year = now.year + 1, month = 1, day = 1, hour = 0, min = 0, sec = 0})).Do(congratulation)
end
