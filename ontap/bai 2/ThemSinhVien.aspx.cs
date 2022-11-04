using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bai_2
{
    public partial class ThemSinhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InsertedCmd(object sender, FormViewInsertedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.KeepInInsertMode = true;
                e.ExceptionHandled = true;
                err.Text = "Co loi xay ra: " + e.Exception.Message;
            }
            else
            {
                err.Text = "";
            }
        }
    }
}