/**    
 * youtubePlayer = '<object style="height: 240px; width: 320px">' +
 *               '<param name="movie" value="{0}">'+
 *               '<param name="allowFullScreen" value="true">' +
 *               '<param name="allowScriptAccess" value="always">' + 
 *               '<embed src="{1}" type="application/x-shockwave-flash" ' +
 *               'width="320" height="240"></object>';
 */

/** 
 * @description A nizer for juick.com.
 *
 * @return void
 */
function juickonizer(inpId){
    var jlink = "xmpp:juick@juick.com?message;body=";

    var msgNumRegEx = /\B((#\d+)(\/\d+)?)/igm;
    var nickRegEx = /\B(@[a-zA-Z0-9-.@_|]+)\b/gm;
    var nickRegEx2 = /\B@([a-zA-Z0-9-.@_|]+)\b/gm;
    var tagRegEx = /(\*\S+?)(?=<br>| \*)/igm;
    var youtubeRegEx = /<a.*?>(http:\/\/(?:www.)?youtube.com\/[a-zA-Z0-9?=&;#_]+)<\/a>/igm;
    var imageRegEx = /(<a[^<]*?>((?:http:\/\/)?(?:www\.)?[^\s]+?\/[^\s]+?(?:\.jpg|\.jpeg|\.gif|\.png))<\/a>)/igm;
    var avatarUrl = 'http://api.juick.com/avatar?uname={0}&size=32';

    // dirty hack with last '/> @'
    add_before(inpId, nickRegEx2, '<img class="avatar" src="'+avatarUrl.format('$1')+'" /> @');
    add(inpId, nickRegEx, '<a class="pm" href="' + jlink + 'PM%20$1%20">[pm]</a>');
    add(inpId, imageRegEx, '<br /><br /><img class="image" src="$2" /><br />');
    wrap(inpId, msgNumRegEx, '<a>', 'class="msgNum" href="' + jlink + '$1%20"');
    wrap(inpId, nickRegEx, '<a>', 'class="nick" href="' + jlink + '$1+"');
    wrap(inpId, tagRegEx, '<a>', 'class="tag" href="' + jlink + '$1"');

    var msgNumRegEx2 = /\B(((#\d+)(\/\d+)?)<\/a>)/igm;
    var msgNumControl = '(<a class="controls" title="Показать комментарии" href="' + jlink + '$3+">+</a>';
    msgNumControl += ' <a class="controls" title="Подписаться на комментарии" href="' + jlink + 'S%20$3">S</a>';
    msgNumControl += ' <a class="controls" title="Отписаться от комментариев" href="' + jlink + 'U%20$3">U</a>';
    msgNumControl += ' <a class="controls" title="Удалить запись" href="' + jlink + 'D%20$2">D</a>';
    msgNumControl += ' <a class="controls" title="Рекомендовать запись" href="' + jlink + '!%20$3">!</a>)';

    add(inpId, msgNumRegEx2, msgNumControl);
    
    document.getElementById(inpId).innerHTML += "<br><br>";
    document.getElementById(inpId).innerHTML += '<a class="controls"  title="Топ." href="' + jlink + '@top+">@</a> ';
    document.getElementById(inpId).innerHTML += '<a class="controls"  title="Показать вашу ленту." href="' + jlink + '#">#</a>';
    document.getElementById(inpId).innerHTML += ' <a class="controls" title="Показать последние 10 сообщений" href="' + jlink + '#+">#+</a> ';
}

/** 
 * @description A nizer for psto.net.
 *
 * @return void
 */
function pstonizer(inpId){
    var pstolink = "xmpp:psto@psto.net?message;body=";
    // regexp для номеров сообщений. 
    // пример работы:
    // для номера #123456/1 в $1 - будет #123456/1, в $2 - #123456
    var msgNumRegEx = /\B((#[a-z0-9]{5})(\/\d+)?)/igm;
    var nickRegEx = /\B(@[a-zA-Z0-9-.@_|]+)\b/gm;
    var tagRegEx = /(\*\S+?)(?=<br>| \*)/igm;
    var imageRegEx = /(<a[^<]*?>((?:http:\/\/)?(?:www\.)?[^\s]+?\/[^\s]+?(?:\.jpg|\.jpeg|\.gif|\.png))<\/a>)/igm;

    add(inpId, imageRegEx, '<br /><br /><img width="320" height="240" src="$2" /><br />');
    wrap(inpId, tagRegEx, '<a>', 'class="tag" href="' + pstolink + '$1"');
    // обoрачиваем номера постов/комментов ссылками
    wrap(inpId, msgNumRegEx, '<a>', 'class="msgNum" href="' + pstolink + '$1%20"');
    // оборачиваем ники ссылками
    wrap(inpId, nickRegEx, '<span>', 'class="nick"');
    // добавляем управление вставкой номеров постов/комментариев
    var msgNumRegEx2 = /\B(((#[a-z0-9]{5})(\/\d+)?)<\/a>)/igm;
    // #123456+
    var msgNumControl = '(<a class="controls" title="Показать комментарии" href="' + pstolink + '$3+">+</a>';
    // S #123456
    msgNumControl += ' <a class="controls" title="Подписаться на комментарии" href="' + pstolink + 'S%20$3">S</a>';
    // U #123456
    msgNumControl += ' <a class="controls" title="Отписаться от комментариев" href="' + pstolink + 'U%20$3">U</a>';
    // D #123456
    msgNumControl += ' <a class="controls" title="Удалить запись" href="' + pstolink + 'D%20$2">D</a>';
    msgNumControl += ' <a class="controls" title="Рекомендовать запись" href="' + pstolink + '!%20$3">!</a>)';

    add(inpId, msgNumRegEx2, msgNumControl);
    
    //// Добавляем # и #+ в конец каждого сообщения
    document.getElementById(inpId).innerHTML += "<br><br>";
    //document.getElementById(inpId).innerHTML += '<a class="controls"  title="Топ." href="' + pstolink + '@top+">@</a> ';
    document.getElementById(inpId).innerHTML += '<a class="controls"  title="Показать последние 10 сообщений" href="' + pstolink + '+10">+10</a>';
    document.getElementById(inpId).innerHTML += ' <a class="controls" title="Показать последние 20 сообщений" href="' + pstolink + '+20">+20</a> ';
}

/** 
 * @description A nizer for bakanyaka.org.com.
 *
 * @return void
 */
function nyaizer(inpId){
    var jlink = "xmpp:nyashaj@neko.im?message;body=";
    // regexp для номеров сообщений. 
    // пример работы:
    // для номера #123456/1 в $1 - будет #123456/1, в $2 - #123456
    var msgNumRegEx = /\B((#\d+)(\/\d+)?)/igm;
    var nickRegEx = /\B(@[a-zA-Z0-9-.@_|]+)\b/gm;
    var tagRegEx = /(\*\S+?)(?= ?<br>| \*)/igm;
        
    // обoрачиваем номера постов/комментов ссылками
    wrap(inpId, msgNumRegEx, '<a>', 'class="msgNum" href="' + jlink + '$1%20"');
    // оборачиваем ники ссылками
    wrap(inpId, nickRegEx, '<a>', 'class="nick" href="' + jlink + '$1+"');
    wrap(inpId, tagRegEx, '<a>', 'class="tag" href="' + jlink + '$1"');
    // добавляем управление вставкой номеров постов/комментариев
    var msgNumRegEx2 = /\B(((#\d+)(\/\d+)?)<\/a>)/igm;
    // #123456+
    var msgNumControl = '(<a class="controls" title="Показать комментарии" href="' + jlink + '$3+">+</a>';
    // S #123456
    msgNumControl += ' <a class="controls" title="Подписаться на комментарии" href="' + jlink + 'S%20$3">S</a>';
    // U #123456
    msgNumControl += ' <a class="controls" title="Отписаться от комментариев" href="' + jlink + 'U%20$3">U</a>';
    // D #123456
    msgNumControl += ' <a class="controls" title="Удалить запись" href="' + jlink + 'D%20$2">D</a>';
    // ! #123456
    msgNumControl += ' <a class="controls" title="Рекомендовать запись" href="' + jlink + '!%20$3">!</a>)';

    add(inpId, msgNumRegEx2, msgNumControl);
    
    // Добавляем # и #+ в конец каждого сообщения
    document.getElementById(inpId).innerHTML += "<br><br>";
    document.getElementById(inpId).innerHTML += '<a class="controls"  title="Топ." href="' + jlink + '@top+">@</a> ';
    document.getElementById(inpId).innerHTML += '<a class="controls"  title="Показать вашу ленту." href="' + jlink + '#">#</a>';
    document.getElementById(inpId).innerHTML += ' <a class="controls" title="Показать последние 10 сообщений" href="' + jlink + '#+">#+</a> ';
}
