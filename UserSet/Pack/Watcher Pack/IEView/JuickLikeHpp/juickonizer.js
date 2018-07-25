/* 
 * @name juickonize
 *
 * @description Добавляет жуйко-фичи в блок с id = inputMsgId 
 *
 * @var inputMsgId string
 */
function juickonize(inputMsgId){
    var jlink = "xmpp:juick@juick.com?message;body=";
    // regexp для номеров сообщений. 
    // пример работы:
    // для номера #123456/1 в $1 - будет #123456/1, в $2 - #123456
    var msgNumRegEx = /\B((#\d+)(\/\d+)?)/igm;
    var nickRegEx = /\B(@[a-zA-Z0-9-.@_|]+)\b/gm;
    var tagRegEx = /(\*\S+?)(?=<br>| \*)/igm;
    //var linkRegEx = /(http:\/\/juick\.com\/\d+(#\d+)?)/igm;

    wrap(inputMsgId, tagRegEx, '<a>', 'class="juickTag" href="' + jlink + '$1"');
    //wrap(inputMsgId, linkRegEx, '<span>', 'style="color: red;"');
    // обoрачиваем номера постов/комментов ссылками
    wrap(inputMsgId, msgNumRegEx, '<a>', 'class="juickMsgNum" href="' + jlink + '$1%20"');
    // оборачиваем ники ссылками
    wrap(inputMsgId, nickRegEx, '<a>', 'class="juickNick" href="' + jlink + '$1%20"');

    // Добавочное управление вставкой номеров постов/комментариев
    var msgNumRegEx2 = /\B(((#(\d+))(\/\d+)?<\/a>))/igm;
    var msgNumControl = '';
    // #123456
    //msgNumControl += ' <a class="controls" href="' + jlink + '$3%20"><img class="Icons" src="images/home.png"/></a>';
    // #123456+
    msgNumControl += ' <a class="controls" href="' + jlink + '$3+"><img class="Icons" src="images/comments.png"/></a>';
    // S #123456
    //msgNumControl += ' <a class="controls" href="' + jlink + 'S%20$3"><img class="Icons" src="images/subscribe.png"/></a>';
    // U #123456
    msgNumControl += ' <a class="controls" href="' + jlink + 'U%20$3"><img class="Icons" src="images/unsubscribe.png"/></a>';
    // D #123456
    //msgNumControl += ' <a class="controls" href="' + jlink + 'D%20$3"><img class="Icons" src="images/delete.png"/></a>';
    // ! #123456
    msgNumControl += ' <a class="controls" href="' + jlink + '!%20$3"><img class="Icons" src="images/recommend.png"/></a>';
    // Ссылка на веб-страницу
    msgNumControl += ' <a class="controls" href="http://juick.com/$4"><img class="Icons" src="images/link.png"/></a>';

    add(inputMsgId, msgNumRegEx2, msgNumControl);

    // Добавочное управление ником
    var nickRegEx2 = /\B(@([a-zA-Z0-9-.@_|]+))\b<\/a>/igm;
    var nickControl = '';
    // @nick+
    //nickControl += ' <a class="controls" href="' + jlink + '$1+"><img class="Icons" src="images/comments.png"/></a>';
    // S @nick
    //nickControl += ' <a class="controls" href="' + jlink + 'S%20$1"><img class="Icons" src="images/subscribe.png"/></a>';
    // U @nick
    //nickControl += ' <a class="controls" href="' + jlink + 'U%20$1"><img class="Icons" src="images/unsubscribe.png"/></a>';
    // Ссылка на веб-страницу
    nickControl += ' <a class="controls" href="http://juick.com/$2"><img class="Icons" src="images/link.png"/></a>';

    add(inputMsgId, nickRegEx2, nickControl);
    
    // Добавляем # и #+ в конец каждого сообщения
    //document.getElementById(inputMsgId).innerHTML += "<br><br>";
    //document.getElementById(inputMsgId).innerHTML += '<a class="controls" href="' + jlink + '#">#</a>';
    //document.getElementById(inputMsgId).innerHTML += ' <a class="controls" href="' + jlink + '#+">#+</a>';
}

/* 
 * @name wrap
 *
 * @description Обарачивает текст в блоке с id = id, 
 * совпадающий с шаблоном pattern тегом tag с параметрами params.
 *
 * @var pattern RegExObj 
 * @var tag string
 * @var params string
 *
 * @return void
 */
function wrap(id, pattern, tag, params){
    if (params == undefined){
        params = '';
    };
    tag = tag.substr(0, tag.length - 1) + ' ' + params + '>';
    var end = "</" + tag.substr(1, tag.length);
    document.getElementById(id).innerHTML = document.getElementById(id).innerHTML.replace(pattern, tag + "$1" + end);
};

/*
 * @name add
 *
 * @description Вставляет text, в блок с id = id, сразу 
 * после текста совпавшего с шаблоном pattern
 * 
 * @var pattern RegExObj
 * @var text string
 */
function add(id, pattern, text){
    document.getElementById(id).innerHTML = document.getElementById(id).innerHTML.replace(pattern, "$1" + text);
}
