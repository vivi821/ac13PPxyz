(function ($, undefined) {
    "use strict";
    $.extend({
        /*刪除沒有用的tag*/
        deletetag: function (opts) { $(opts).each(function (i, v) { $(v).remove(); }); },

    });
    $.fn.extend({
        /*div alert*/
        pop: function (opts) {
            return this.each(function () {
                $(this).html(opts.html);
                $(this).dialog($.extend(true, {
                    maxHeight: 500,
                    modal: true,
                    buttons: { "關閉": function () { $(this).dialog("close"); } }
                }, opts));

            });
        }
    });
})(jQuery);