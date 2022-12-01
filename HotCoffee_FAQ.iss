Ответы и подсказки от El Sanchez

1.
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
если ProtocolCompName содержит в имени "CloudFile/", тогда пишем CloudFile/ перед ProtocolCompValue:
String: s{#if Pos("CloudFile/", ProtocolCompName) > 0}CloudFile/{#endif}{#ProtocolCompValue};
пример записи в секции выбранных и действующих учётных записей JABBER
#emit '' + (Pos("JABBER", ProtocolBaseProtoValue) == 0 ? "" : ' ; ' + ProtocolCompValue + ' XmlLang')
{#if Pos("JABBER", ProtocolBaseProtoValue) == 0}{#else}Filename: {#CurrentIni}; Section: {#ProtocolCompValue}; Key: XmlLang; String: sen; Languages: en; Flags: uninsdeleteentry;{#if Pos("*", ProtocolCompName) == 0} Components: {#ProtocolCompName};{#endif}{#if CurrentIni == AutoexecUpdateIni} Check: IsUpdate;{#endif}{#endif}
{#if Pos("JABBER", ProtocolBaseProtoValue) == 0}{#else}Filename: {#CurrentIni}; Section: {#ProtocolCompValue}; Key: XmlLang; String: sru; Languages: ru; Flags: uninsdeleteentry;{#if Pos("*", ProtocolCompName) == 0} Components: {#ProtocolCompName};{#endif}{#if CurrentIni == AutoexecUpdateIni} Check: IsUpdate;{#endif}{#endif}

2.
если какие-то протоколы больше не поддерживаются, то как сделать так чтобы эти протоколы были видны в окне выбора компонентов, только если IsUpdate и только если они были установлены предыдущей установкой:
[Components]
Check: IsUpdate and IsNeedComponent('Protocols\Jabber\GTalk')
[Code]
function IsNeedComponent(const ACompName: string): Boolean;
begin
  Result := True;
  with TStringList.Create do
  try
    Sorted := True;
    CommaText := GetSetupPreviousData('Inno Setup: Selected Components', '');
    Result := IndexOf(Lowercase(ACompName)) > -1;
  finally
    Free;
  end;
end;
