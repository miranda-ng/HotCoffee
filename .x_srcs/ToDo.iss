������ ����!
� ���� ��� �������� ����������...
� ������ ����� ��� �� ��� ��������� ��������� �� �������� AM_BaseProto ������ ����� �������� �������� ������ ���������
�.�. ���������� ��� ����� ��� �������� ������ ����� ����� AM_BaseProto:
#define ProtocolBaseProto \
  "Protocols\Pseudo\NewsAggregator = NewsAggregator," + \
  "Protocols\Pseudo\WebView = WebView," + \
  "Protocols\Pseudo\Weather = Weather," + \
  "Protocols\Pseudo\GmailNotifier = GmailMNotifier," + \
  "Protocols\Pseudo\YAMN = YAMN," + \
  "Protocols\Pseudo\CurrencyRates = CurrencyRates," + \
  "*MetaContacts = MetaContacts," + \              ;���� ��������� �� ����� ��������, �.�. �� ������ ������������ � �������
  "Protocols\EmLanProto = EM_LAN_PROTO," + \
  "Protocols\GG = GG," + \
  "Protocols\ICQ\ICQ = ICQ," + \
  "Protocols\ICQ\ICQ2 = ICQ," + \
  "Protocols\ICQCorp = ICQCorp," + \
  "Protocols\IRC = IRC," + \
  "Protocols\Jabber\Jabber = JABBER," + \
  "Protocols\Jabber\Jabberru = JABBER," + \
  "Protocols\Jabber\LJ = JABBER," + \
  "Protocols\ICQ\MRA = MRA," + \
  "Protocols\ICQ\MRA2 = MRA," + \
  "Protocols\Jabber\OK = JABBER," + \
  "Protocols\Omegle = Omegle," + \
  "Protocols\Sametime = Sametime," + \
  "Protocols\Skype = SKYPE," + \
  "Protocols\Steam = STEAM," + \
  "Protocols\Tox = TOX," + \
  "Protocols\Twitter = Twitter," + \
  "Protocols\VKontakte = VKontakte," + \
  "Protocols\Jabber\XMPP = JABBER," + \
  "Protocols\Pseudo\mRadio = mRadio," + \
  "*CloudFile/Dropbox = CloudFile/Dropbox," + \    ;���� ��������� �� ����� ��������, �.�. �� ������ ������������ � �������
  "*CloudFile/GDrive = CloudFile/GDrive," + \      ;���� ��������� �� ����� ��������, �.�. �� ������ ������������ � �������
  "*CloudFile/OneDrive = CloudFile/OneDrive," + \  ;���� ��������� �� ����� ��������, �.�. �� ������ ������������ � �������
  "*CloudFile/YandexDisk = CloudFile/YandexDisk"   ;���� ��������� �� ����� ��������, �.�. �� ������ ������������ � �������

� ��� ��������� ������ ����� ������� �������

������ �������� �� ��������� ICQ, MRA, JABBER, SKYPE, STEAM � TOX
��������� ����� ��� ����������� ���������

� ����� ������ 1417 ����� ������� ������ ��������
Filename: {#CurrentIni}; Section: {#ProtocolCompValue}; Key: AM_BaseProto; String: s{#if Pos("CloudFile/", ProtocolCompName) > 0}CloudFile/{#endif}{#ProtocolCompValue}; Flags: uninsdeleteentry; {#if Pos("*", ProtocolCompName) == 0}Components: {#ProtocolCompName};{#endif} {#if CurrentIni == AutoexecUpdateIni}Check: IsUpdate;{#endif}

�� ������ � ������� ProtocolQueue �� ����� �����, ��� ��� ����� � �����
���� ���� ������ ����� ����� ����� ������ � ������ ��� � ���� �������� ProtocolBaseProto, ������� ����