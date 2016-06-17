var config = JSON.parse(external.db_get(0, "IEView_Template", "OtherSettings_JSON") || '{"tZers":{"only_supported_protos":false,"enable":true,"autoplay":true},"animation":{"on_window_open":false},"font":{"change_size_button":true},"tooltipify":{"animationProperty":"top","opacity":1.0,"position":"bottom","animationDuration":150.0,"displayAware":1.0,"animationOffset":0.0},"files":{"inbox":"/inbox/"},"media":{"inline_images":{"maxwidth":300.0,"maxheight":200.0},"video":{"external_window":{"height":600.0,"enable":false,"width":800.0}},"enable":true,"images_preview":true}}');

function LoadOption(name, def)
{
	var val = external.db_get(0, "IEView_Template", name);
	return val == undefined ? def : val;
}

$.extend(true, config, 
{
	"shortlink": {
		"global": LoadOption("ShortLinks", false),
		"localy": LoadOption("ShortLinks", false)
	},
	"custom_context_menu": LoadOption("CustomContextMenu", true),
	"animation": {
		"enable": LoadOption("Animation", false)
	},
	"avatars": {
		"enable": LoadOption("Avatars", false)
	},
	"font": {
		"name": external.db_get(0, "PackInfo", "Font") || "printing"
	},
	"language": ((external.db_get(0, "Langpack", "Current") == "langpack_russian.txt") ? "RU" : "EN")
});

var base = $("head>base").attr("href").replace("file://", "");

var ToolsPath = './!tools/';
var ImagesPath = ToolsPath + 'icons/';