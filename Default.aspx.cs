using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!this.IsPostBack)
        {
            using (var db = new DBDataContext())
            {
                var f = db.ESP_eCode().FirstOrDefault();
                this.hidecode.Value = (f == null ? string.Empty : f.CodeSubTypeDesp);
            }
        }
        else
        {
            using (var db = new DBDataContext())
            {
                var f = db.ESP_Login("super987", "D74A214501C1C40B2C77E995082F3587", "127.0.0.1", "dserr67678iijkjkli", "www.test.com.tw", this.hidecode.Value).FirstOrDefault();
                Response.Write((f == null ? string.Empty : f.cDesp));
            }
        }
    }
}