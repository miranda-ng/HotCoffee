var w,h,a,b,k,clientwidth;

function thumbcreate(text,params) {
  param = params.split("+");
  onloadsize = param[0];
  buf = param[1];
  extensions = new Array(".jpg",".bmp",".png",".gif",".jpeg",".JPG");  
 
  //go-go-go
  teiltext = "";
  hrefsplit = text.split('<a class="link" target="_self" href');
  text = hrefsplit[0];
  for (j=1; j<hrefsplit.length;j++) {
    teiltext = hrefsplit[j].split("</a>");
    //test for image link
    imglink = "no";
    for (i = 0; i < extensions.length; i++) {
      if ((teiltext[0].substr(teiltext[0].length-4,4) == extensions[i]) || (teiltext[0].substr(teiltext[0].length-5,5) == extensions[i])) {
        imglink = "yes";
        link = teiltext[0].split(">");
  	  }
    }  
    
	//image code formation
    switch (imglink) {
      case "yes":
        text = text +'<img border="0" src="'+link[1]+'" alt="'+link[1]+'" onload="loadEvent(this)"><br><a class="link" target="_self" href'+hrefsplit[j];
        break;        
      default:
        text = text + '<a class="link" target="_self" href'+hrefsplit[j];
        break;
    }
  }

return text;
}


function loadsize(ac){
	switch (ac) {
		case "window":
			if (typeof document.compatMode != 'undefined' && document.compatMode != 'BackCompat') {
				clientwidth = document.documentElement.offsetWidth-buf;
			}
			else if (typeof document.body != 'undefined') {
				clientwidth = document.all.body.offsetWidth-buf;
			} 
			break;
		case "mini":
			clientwidth = 100;
			break;
		default:
			break;
	}
}

function loadEvent(img){   
	loadsize(onloadsize)
	a = clientwidth;
	w = img.width;
	h = img.height;
	k = w / a;
	b = h / k;
	if (w > a) {
		img.style.height = b;
		img.style.width = a;
	}
}