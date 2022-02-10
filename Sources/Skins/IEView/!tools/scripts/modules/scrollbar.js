(function()
{  
    var module =
    {
        init: function()
        {
            if (1 != external.db_get(0, "IEView_Template", "ScrollBar")){
                function ScrollBarWidth(){
                    t=document.createElement('textarea');
                    t.cols = 1;
                    t.rows = 1;
                    t.style.visibility='hidden';
                    t.style.border='none';
                    document.body.appendChild(t);
                    w=t.offsetWidth-t.clientWidth;
                    document.body.removeChild (t);
                    return w;
                }
                var sbw = ScrollBarWidth();
                $("html").css({'overflow':'hidden'});
                $("body").css({	'margin-bottom':'0', 'margin-left':-sbw,'margin-right':-sbw,'margin-top':'0','overflow-y':'scroll','height':'100%', 'position':'absolute', 'left':sbw, 'right':'0'});					
            }
        }
    }
    RegisterModule("scrollbar", module);
})();