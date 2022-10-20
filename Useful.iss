El Sanchez
если в секции Protocols понадобится ставить значение 0, на ключиках начинающихся с цифры 4 и 6, например для протокола Steam, это можно сделать так:
String: d{#if ProtocolCompName == "Protocols\Steam"}0{#else}1{#endif};
если понадобится 0 для нескольких протоколов, тогда так:
String: d{#if ProtocolCompName == "Protocols\Jabber\LJ" || ProtocolCompName == "Protocols\Skype" || ProtocolCompName == "Protocols\Steam"}0{#else}1{#endif};
или так:
String: d{code:ThisIsSomeFunc|{#ProtocolCompName}};
[Code]
function ThisIsSomeFunc(const AParam: string): string;
begin
  Resut := '1';
  if (CompareText(AParam, 'Protocols\Jabber\LJ') = 0) or
    (CompareText(AParam, 'Protocols\Skype') = 0) or
    (CompareText(AParam, 'Protocols\Steam') = 0) then
      Result := '0';
end;