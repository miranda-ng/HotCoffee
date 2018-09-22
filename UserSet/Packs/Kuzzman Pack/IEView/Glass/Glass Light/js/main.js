function gibdd(text,action,massiv){
	F = action.split("+");
	for (command_i = 0; command_i < F.length; command_i++){
		p = massiv[command_i];
		switch(F[command_i]){
			case "image":
				if (!p) {
					text = thumbcreate(text);
				} else {
					text = thumbcreate(text,p);
				}
				break;
			case "video":
				if (!p) {
					text = video(text);
				} else {
					text = video(text,p);
				}
				break;
			case "tzer":
				if (!p) {
					text = TzersOutput(text);
				} else {
					text = TzersOutput(text,p);
				}
				break;
			/* case "smile":
				if (!p) {
					smile(text);
				} else {
					smile(text,p);
				}
				break; */
			default:
				alert("unknown comand");
				break;
		}
	}
	/* if (text == '')
	{
		//$(".msg_in_first").parent().parent().hide();
		b = $(".tz").parent();
		//if (b:
		//text = $(".tz").parent().hasClass("msg_text");
	}  */
	document.write(text);
}