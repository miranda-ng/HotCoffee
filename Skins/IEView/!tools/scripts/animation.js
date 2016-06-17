//ievEffects project
//version:	v0.1
//filename:	processor.js
//discussion:	http://miranda-planet.com/forum/index.php?showtopic=6412


//Settings
MaxSimGroups = 28; //Maximum simultaneously groups

//Ids
MessageIn = 1;
MessageOut = 2;
MessageInGroupStart = 3;
MessageInGroupInner = 4;
MessageInGroupEnd = 5;
MessageOutGroupStart = 6;
MessageOutGroupInner = 7;
MessageOutGroupEnd = 8;
hMessageIn = 9;
hMessageOut = 10;
hMessageInGroupStart = 11;
hMessageInGroupInner = 12;
hMessageInGroupEnd = 13;
hMessageOutGroupStart = 14;
hMessageOutGroupInner = 15;
hMessageOutGroupEnd = 16;
Status = 17;
hStatus = 18;
FileIn = 19;
hFileIn = 20;
FileOut = 21;
hFileOut = 22;
URLIn = 23;
hURLIn = 24;
URLOut = 25;
hURLOut = 26;
URL = 27;
hURL = 28;

names = [];
names[MessageIn] = 'MessageIn';
names[MessageOut] = 'MessageOut';
names[MessageInGroupStart] = 'MessageInGroupStart';
names[MessageInGroupInner] = 'MessageInGroupInner';
names[MessageInGroupEnd] = 'MessageInGroupEnd';
names[MessageOutGroupStart] = 'MessageOutGroupStart';
names[MessageOutGroupInner] = 'MessageOutGroupInner';
names[MessageOutGroupEnd] = 'MessageOutGroupEnd';
names[hMessageIn] = 'hMessageIn';
names[hMessageOut] = 'hMessageOut';
names[hMessageInGroupStart] = 'hMessageInGroupStart';
names[hMessageInGroupInner] = 'hMessageInGroupInner';
names[hMessageInGroupEnd] = 'hMessageInGroupEnd';
names[hMessageOutGroupStart] = 'hMessageOutGroupStart';
names[hMessageOutGroupInner] = 'hMessageOutGroupInner';
names[hMessageOutGroupEnd] = 'hMessageOutGroupEnd';
names[Status] = 'Status';
names[hStatus] = 'hStatus';
names[FileIn] = 'FileIn';
names[hFileIn] = 'hFileIn';
names[FileOut] = 'FileOut';
names[hFileOut] = 'hFileOut';
names[URLIn] = 'URLIn';
names[hURLIn] = 'hURLIn';
names[URLOut] = 'URLOut';
names[hURLOut] = 'hURLOut';
names[URL] = 'URL';
names[hURL] = 'hURLn';

function AfterEachGroup(group) {
	if (group.length > MaxSimGroups || !config.animation.enable) {
		group.addClass('finished');
		return false;
	}
	return true;
}

function AfterMessageGroupStart(group) {
	head = group.find('.head');
	headdate = group.find('.head .date');
	headav = group.find('.head .avatar');
	headname = group.find('.head .name');
	text = group.find('.text');
	time = group.find('.time');

	headdate.css('opacity', '0');
	headdate.css('margin-right', '200px');
	headdate.animate({'opacity': 1, 'marginRight': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	headav.css('opacity', '0');
	headav.css('margin-left', '200px');
	headav.animate({'opacity': 1, 'marginLeft': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	headname.css('opacity', '0');
	headname.css('margin-left', '200px');
	headname.animate({'opacity': 1, 'marginLeft': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	text.css('opacity', '0');
	text.css('margin-left', '100px');
	text.animate({'opacity': 1, 'marginLeft': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	time.css('opacity', '0');
	time.css('margin-right', '0px');
	time.animate({'opacity': 1, 'marginRight': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);
}

function AfterMessageGroupInner(group, groupname) {
	time = group.find('.time');
	text = group.find('.text');

	time.css('opacity', '0');
	time.css('margin-right', '0px');
	time.animate({'opacity': 1, 'marginRight': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	text.css('opacity', '0');
	text.css('margin-left', '100px');
	text.animate({'opacity': 1, 'marginLeft': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);
}

function hAfterMessageGroupStart(group) {
	head = group.find('.head');
	headdate = group.find('.head .date');
	headav = group.find('.head .avatar');
	headname = group.find('.head .name');
	text = group.find('.text');
	time = group.find('.time');

	headdate.css('opacity', '0');
	headdate.css('margin-right', '0px');
	headdate.animate({'opacity': 1, 'marginRight': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	headav.css('opacity', '0');
	headav.css('margin-left', '0px');
	headav.animate({'opacity': 1, 'marginLeft': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	headname.css('opacity', '0');
	headname.css('margin-left', '0px');
	headname.animate({'opacity': 1, 'marginLeft': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	text.css('opacity', '0');
	text.css('margin-left', '0px');
	text.animate({'opacity': 1, 'marginLeft': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	time.css('opacity', '0');
	time.css('margin-right', '0px');
	time.animate({'opacity': 1, 'marginRight': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);
}

function hAfterMessageGroupInner(group, groupname) {
	time = group.find('.time');
	text = group.find('.text');

	time.css('opacity', '0');
	time.css('margin-right', '0px');
	time.animate({'opacity': 1, 'marginRight': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);

	text.css('opacity', '0');
	text.css('margin-left', '0px');
	text.animate({'opacity': 1, 'marginLeft': '0px'}, 600+Math.floor(Math.random()*300),
		function() {
			$(this).get(0).style.removeAttribute('filter');
		}
	);
}

function ProcessGroup( groupid ) {
	ndx = document.body.childNodes.length;
	ndx--;
	elm = document.body.childNodes[ndx];
	while (elm.type!=undefined) {
		ndx -= 2;
		elm = document.body.childNodes[ndx];
	}
	group = $(elm);
	groupname = names[groupid];
	if (groupname!=undefined) {
		if (!group.hasClass(groupname)) {
			group = group.find('.'+groupname+':not(.__finished)');
		}
	}
	
	switch (groupid) 
	{
		case MessageIn:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case MessageOut:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case MessageInGroupStart:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case MessageInGroupInner:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupInner(group);
			break;
		case MessageOutGroupStart:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case MessageOutGroupInner:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupInner(group);
			break;
		case hMessageIn:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		case hMessageOut:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		case hMessageInGroupStart:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		case hMessageInGroupInner:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupInner(group);
			break;
		case hMessageOutGroupStart:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		case hMessageOutGroupInner:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupInner(group);
			break;
		case Status:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case hStatus:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		case FileIn:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case hFileIn:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		case FileOut:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case hFileOut:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open)hAfterMessageGroupStart(group);
			break;
		case URLIn:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case hURLIn:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		case URLOut:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case hURLOut:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		case URL:
			if (!AfterEachGroup(group)) { return; }
			AfterMessageGroupStart(group);
			break;
		case hURL:
			if (!AfterEachGroup(group)) { return; }
			if (config.animation.on_window_open) hAfterMessageGroupStart(group);
			break;
		default:
			return;
	}
	group.addClass('__finished');
}