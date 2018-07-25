/* 
 * @name wrap
 *
 * @description Обарачивает текст в блоке с id = `id`, 
 * совпадающий с шаблоном pattern тегом tag с параметрами params.
 *
 * @var pattern RegExObj 
 * @var tag string
 * @var params string
 * @var center string 
 * @var pre string
 * @var post string
 *
 * @return void
 */
function wrap(id, pattern, tag, params, center, pre, post){
    if (center == undefined) center = '$1';
    if (pre == undefined) pre = '';
    if (post == undefined) post = '';
    if (params == undefined) params = '';

    var end = "</" + tag.substr(1, tag.length);
    var tag = tag.substr(0, tag.length - 1) + ' ' + params + '>';
    var rstr = pre + tag + center + end + post;
    document.getElementById(id).innerHTML = document.getElementById(id).innerHTML.replace(pattern, rstr);
};

/*
 * @name add
 *
 * @description Вставляет `text`, в блок с id = `id`, сразу 
 * после текста совпавшего с шаблоном `pattern`
 * 
 * @var pattern RegExObj
 * @var text string
 *
 * @retrun void
 */
function add(id, pattern, text){
    document.getElementById(id).innerHTML = document.getElementById(id).innerHTML.replace(pattern, "$1 " + text);
};

function add_before(id, pattern, text){
    document.getElementById(id).innerHTML = document.getElementById(id).innerHTML.replace(pattern, text + "$1");
};

String.prototype.format = function() {
    var formatted = this;
    for (var i = 0; i < arguments.length; i++) {
        var regexp = new RegExp('\\{'+i+'\\}', 'gi');
        formatted = formatted.replace(regexp, arguments[i]);
    }
    return formatted;
};
