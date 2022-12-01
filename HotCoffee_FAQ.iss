������ � ��������� �� El Sanchez

1.
���� � ������ Protocols ����������� ������� �������� 0, �� �������� ������������ � ����� 4 � 6, �������� ��� ��������� Steam, ��� ����� ������� ���:
String: d{#if ProtocolCompName == "Protocols\Steam"}0{#else}1{#endif};
���� ����������� 0 ��� ���������� ����������, ����� ���:
String: d{#if ProtocolCompName == "Protocols\Jabber\LJ" || ProtocolCompName == "Protocols\Skype" || ProtocolCompName == "Protocols\Steam"}0{#else}1{#endif};
��� ���:
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
���� ProtocolCompName �������� � ����� "CloudFile/", ����� ����� CloudFile/ ����� ProtocolCompValue:
String: s{#if Pos("CloudFile/", ProtocolCompName) > 0}CloudFile/{#endif}{#ProtocolCompValue};
������ ������ � ������ ��������� � ����������� ������� ������� JABBER
#emit '' + (Pos("JABBER", ProtocolBaseProtoValue) == 0 ? "" : ' ; ' + ProtocolCompValue + ' XmlLang')
{#if Pos("JABBER", ProtocolBaseProtoValue) == 0}{#else}Filename: {#CurrentIni}; Section: {#ProtocolCompValue}; Key: XmlLang; String: sen; Languages: en; Flags: uninsdeleteentry;{#if Pos("*", ProtocolCompName) == 0} Components: {#ProtocolCompName};{#endif}{#if CurrentIni == AutoexecUpdateIni} Check: IsUpdate;{#endif}{#endif}
{#if Pos("JABBER", ProtocolBaseProtoValue) == 0}{#else}Filename: {#CurrentIni}; Section: {#ProtocolCompValue}; Key: XmlLang; String: sru; Languages: ru; Flags: uninsdeleteentry;{#if Pos("*", ProtocolCompName) == 0} Components: {#ProtocolCompName};{#endif}{#if CurrentIni == AutoexecUpdateIni} Check: IsUpdate;{#endif}{#endif}

2.
���� �����-�� ��������� ������ �� ��������������, �� ��� ������� ��� ����� ��� ��������� ���� ����� � ���� ������ �����������, ������ ���� IsUpdate � ������ ���� ��� ���� ����������� ���������� ����������:
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
