Привет Саня!
У меня тут незадача получилась...
Я совсем забыл про то что некоторые протоколы на ключиках AM_BaseProto должны иметь значение родителя своего протокола
т.е. получается вот такие вот значения должны иметь ключи AM_BaseProto:
#define ProtocolBaseProto \
  "Protocols\Pseudo\NewsAggregator = NewsAggregator," + \
  "Protocols\Pseudo\WebView = WebView," + \
  "Protocols\Pseudo\Weather = Weather," + \
  "Protocols\Pseudo\GmailNotifier = GmailMNotifier," + \
  "Protocols\Pseudo\YAMN = YAMN," + \
  "Protocols\Pseudo\CurrencyRates = CurrencyRates," + \
  "*MetaContacts = MetaContacts," + \              ;этот компонент не имеет чекбокса, т.е. он всегда присутствует в миранде
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
  "*CloudFile/Dropbox = CloudFile/Dropbox," + \    ;этот компонент не имеет чекбокса, т.е. он всегда присутствует в миранде
  "*CloudFile/GDrive = CloudFile/GDrive," + \      ;этот компонент не имеет чекбокса, т.е. он всегда присутствует в миранде
  "*CloudFile/OneDrive = CloudFile/OneDrive," + \  ;этот компонент не имеет чекбокса, т.е. он всегда присутствует в миранде
  "*CloudFile/YandexDisk = CloudFile/YandexDisk"   ;этот компонент не имеет чекбокса, т.е. он всегда присутствует в миранде

я тут проставил точные имена включая регистр

обрати внимание на протоколы ICQ, MRA, JABBER, SKYPE, STEAM и TOX
остальные вроде как срабатывают нормально

в общем строка 1417 очень требует твоего внимания
Filename: {#CurrentIni}; Section: {#ProtocolCompValue}; Key: AM_BaseProto; String: s{#if Pos("CloudFile/", ProtocolCompName) > 0}CloudFile/{#endif}{#ProtocolCompValue}; Flags: uninsdeleteentry; {#if Pos("*", ProtocolCompName) == 0}Components: {#ProtocolCompName};{#endif} {#if CurrentIni == AutoexecUpdateIni}Check: IsUpdate;{#endif}

ты только в перечне ProtocolQueue не меняй имена, они там такие и нужны
если надо менять имена тогда лучше добавь в скрипт ещё и этот перечень ProtocolBaseProto, который выше