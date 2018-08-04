function mp3(messagein) {
if (!checkaudio(messagein));
}

function checkaudio(message) {
  var mes_temp = message.extract("href=\"","\">");
  mes_temp = mes_temp.replace("href=\"","");
  mes_temp = mes_temp.replace("\">","");
  var result = mes_temp.extract("://",".mp3");
  if (!result) return 0;
   var id = Math.random();
   document.write("<div id=\""+id+"\"><a class=\"script\" onclick=\"javascript: showaudio('"+mes_temp+"','"+id+"'); \">[Show audio]</a></div>");
}

function showaudio(url,id) {
  template ='<center><object type="application/x-shockwave-flash" data="'+ToolPfad+'player/audio.swf" height="24" width="290"><param name="movie" value="'+ToolPfad+'player/audio.swf"><param name="FlashVars" value="autostart=yes&soundFile='+url+'"><param name="menu" value="false"><param name="wmode" value="transparent"></object></center>';
  hidetext = "<br/><a class=\"script\" onclick=\"javascript: hideaudio('"+url+"','"+id+"'); \">[Hide audio]</a>";
  document.getElementById(id).innerHTML = template+hidetext;
}

function hideaudio(url,id) {
  text = "<a class=\"script\" onclick=\"javascript: showaudio('"+url+"','"+id+"'); \">[Show audio]</a>";
  document.getElementById(id).innerHTML= text;
  }
    String.prototype.extract=function(startString,endString) {
    var start=this.indexOf(startString);
    if(start== -1){return '';}
    var choppedContent=this.substr(start);
    var end=choppedContent.indexOf(endString);
    if(end== -1){return '';}
    var extractedContent=choppedContent.substring(0,end+endString.length);
    if(extractedContent.length>0)return extractedContent;else return '';
}