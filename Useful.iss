El Sanchez
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