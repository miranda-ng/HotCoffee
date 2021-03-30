(function()
{  
    var module =
    {
        init: function()
        {
            if (1 != external.db_get(0, "IEView_Template", "ScrollBar"))
                $("html, body").css("overflow", "hidden");
        }
    }
    RegisterModule("scrollbar", module);
})();