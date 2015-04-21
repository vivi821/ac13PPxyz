using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PortalLogin : System.Web.UI.Page
{
    protected string ecode = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        //Request.Form["hidecode"]
        if (!IsPostBack)
        {
            using (var db = new DBDataContext())
            {
                switch (Request.Form["hidfunc"])
                {
                    case "s":
                        //var login=db.ESP_Login(Request.Form["uid"],Request.Form["uid"],)
                        break;
                    default:
                        var code = db.ESP_eCode().FirstOrDefault();
                        ecode = code == null ? "" : code.CodeSubTypeDesp;
                        break;
                }
            }
        }

    }
}