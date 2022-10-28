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

���� ProtocolCompName �������� � ����� "CloudFile/", ����� ����� CloudFile/ ����� ProtocolCompValue:
[INI]
String: s{#if Pos("CloudFile/", ProtocolCompName) > 0}CloudFile/{#endif}{#ProtocolCompValue};