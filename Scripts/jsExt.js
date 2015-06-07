(function ($, undefined) {
    "use strict";
    $.extend({
        /*刪除沒有用的tag*/
        deletetag: function (opts) { $(opts).each(function (i, v) { $(v).remove(); }); },
        checkpwd: function (opts) {
            for (var i in opts) { opts[i] = $.trim(opts[i]); }
            if (opts.opwd == "" || opts.pwd == "" || opts.spwd == "") { $("#divmsg").pop({ "html": "密碼欄位不能為空白!" }); return false; };
            if (opts.opwd == opts.pwd) { $("#divmsg").pop({ "html": "舊密碼與新密碼不能相同!!" }); return false; }
            if (opts.pwd != opts.spwd) { $("#divmsg").pop({ "html": "新密碼與確認新密碼欄位不相符!!" }); return false; }
            if (opts.pwd.length < 4) { $("#divmsg").pop({ "html": "新密碼長度最少4位!!" }); return false; }
            if (opts.pwd.length > 10) { $("#divmsg").pop({ "html": "新密碼長度最長10位!!" }); return false; }
            if (opts.uid == opts.pwd) { $("#divmsg").pop({ "html": "密碼不能為使用者帳號!!" }); return false; }
            var b = true, b2 = true, b3 = true, b4 = true, b5 = true;
            var tpw = opts.pwd.toUpperCase();
            for (var i = 0; i < tpw.length - 1; i++) {
                if (tpw[i] != tpw[i + 1]) { b = false; }
                if (tpw[i + 1].charCodeAt() >= 65 && tpw[i + 1].charCodeAt() <= 90) {
                    if ((tpw[i + 1].charCodeAt() - tpw[i].charCodeAt()) != '1') { b2 = false; }
                    if ((tpw[i + 1].charCodeAt() - tpw[i].charCodeAt()) != '-1') { b3 = false; }
                } else {
                    b2 = false;
                    b3 = false;
                }
                if (tpw[i + 1] - tpw[i] != 1) { b4 = false; }
                if (tpw[i + 1] - tpw[i] != -1) { b5 = false; }
            }
            if (b) { $("#divmsg").pop({ "html": "密碼不能為相同字碼!!" }); return false; }
            if (b2 || b3 || b4 || b5) { $("#divmsg").pop({ "html": "密碼不能為順序字碼!!" }); return false; }
            return true;
        },
        /*重寫getJSON*/
        getJSONo: function (opts) {
            if ($.isEmptyObject(opts)) { return false; }
            function a(jqxhr) {
                if (!$.isEmptyObject(jqxhr)) { $(document.body).append(JSON.stringify(jqxhr)); }
                else { $(document.body).append(jqxhr.responseText); }
            }
            var o = $.extend({}, {
                isdebug: false,
                success: function (d) { },
            }, opts);
            if ($.isArray(o.target)) { for (var i in o.target) { o.target[i].hide(); } }
            $.getJSON(o.url, o.data, function (data, textStatus, jqXHR) {
                o.success(data, textStatus, jqXHR);
                if ($.isArray(o.target)) { for (var i in o.target) { o.target[i].show(); } }
            })
                .fail(function (jqxhr) { a(jqxhr); })
                .always(function (jqxhr) { if (o.isdebug) { a(jqxhr); } });
        }
    });
    $.fn.extend({
        /*select 預設「請選擇」*/
        setdls: function (opts) { return this.each(function () { $(this).html("<option value='' selected='selected'>請選擇…</option>"); }); },
        /*select 預設「請選擇」*/
        setdlall: function (opts) { return this.each(function () { $(this).html("<option value='' selected='selected'>全部</option>"); }); },
        /*div alert*/
        pop: function (opts) {
            return this.each(function () {
                $(this).html(opts.html);
                $(this).dialog($.extend(true, {
                    maxHeight: 500,
                    modal: true,
                    buttons: {
                        "關閉": function () {
                            $(this).dialog("close");
                            if ($.isFunction(opts.afertclose)) { opts.afertclose(); }
                        }
                    }
                }, opts));

            });
        },
        working: function () { return this.each(function () { var str = "已執行"; $(this).prop("disabled", true).text(str).val(str); }); },
        /*按盤時執行click事件*/
        enter: function () { return this.each(function () { $(document).keydown(function (event) { if (event.keyCode == 13) { $(this).click(); } }); }); }
    });
})(jQuery);

function nv() { }