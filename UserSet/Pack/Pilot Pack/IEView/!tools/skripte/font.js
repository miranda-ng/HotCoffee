var fso = new ActiveXObject("Scripting.FileSystemObject");
var temppath = fso.GetSpecialFolder(2);

function setActiveStyleSheet(title){
    var i, a, main;
    for (i = 0; (a = document.getElementsByTagName("link")[i]); i++) {
        if (a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title")) {
            a.disabled = true;
            if (a.getAttribute("title") == title) {
                a.disabled = false;
				}
        }
    }
    WriteToFile(title);
}

function fontsizeup(){
    active = getActiveStyleSheet();
    switch (active) {
        case 'A--':
            setActiveStyleSheet('A-');
            break;
        case 'A-':
            setActiveStyleSheet('A');
            break;
        case 'A':
            setActiveStyleSheet('A+');
            break;
        case 'A+':
            setActiveStyleSheet('A++');
            break;
        case 'A++':
            setActiveStyleSheet('A+++');
            break;
        case 'A+++':
            setActiveStyleSheet('A++++');
            break;
        case 'A++++':
            break;
        default:
            setActiveStyleSheet('A');
            break;
    }
}

function fontsizedown(){
    active = getActiveStyleSheet();
    switch (active) {
        case 'A++++':
            setActiveStyleSheet('A+++');
            break;
        case 'A+++':
            setActiveStyleSheet('A++');
            break;
        case 'A++':
            setActiveStyleSheet('A+');
            break;
        case 'A+':
            setActiveStyleSheet('A');
            break;
        case 'A':
            setActiveStyleSheet('A-');
            break;
        case 'A-':
            setActiveStyleSheet('A--');
            break;
        case 'A--':
            break;
        default:
            setActiveStyleSheet('A--');
            break;
    }
}

function getActiveStyleSheet(){
    var i, a;
    for (i = 0; (a = document.getElementsByTagName("link")[i]); i++) {
        if (a.getAttribute("rel").indexOf("style") != -1 && a.getAttribute("title") && !a.disabled) 
            return a.getAttribute("title");
    }
    return null;
}

function getPreferredStyleSheet(){
    return ('A');
}

function WriteToFile(value){
    var s = fso.CreateTextFile(temppath + "\\style.txt", true);
    s.Write(value);
    s.Close();
}

function ReadFromFile(){
	if(fso.fileExists(temppath + "\\style.txt"))
	{
    var s = fso.OpenTextFile(temppath + "\\style.txt");    
        var o = s.readLine();
        s.Close();
		return o;
    }
    else {
        return getPreferredStyleSheet();
    }
    return null;
}

var title = ReadFromFile();
setActiveStyleSheet(title);
document.write("<div id=\"fix\"><input type=\"button\" onclick=\"javascript:fontsizeup()\" value=\"+\"><input type=\"button\" onclick=\"javascript:fontsizedown();\" value=\"-\"><\/div>");