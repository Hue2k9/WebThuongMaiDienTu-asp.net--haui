using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace bai_1
{
    public partial class SuaSinhVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Updated(object sender, FormViewUpdatedEventArgs e)
        {
            if (e.Exception != null)
            {
                e.KeepInEditMode = true;
                e.ExceptionHandled = true;
                erredit.Text = "Co loi xay ra: " + e.Exception.Message;
            }
            else
            {
                erredit.Text = "Cập nhật thành công!";
            }
        }
    }
}