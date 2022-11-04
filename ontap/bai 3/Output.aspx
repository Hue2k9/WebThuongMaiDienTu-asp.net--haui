<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Output.aspx.cs" Inherits="bai_3.Output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <%
            string hoten = Request["name"];
            string tuoi = Request["age"];
            string dienThoai = Request["phonenumber"];
            string email = Request["email"];
            string username = Request["username"];
            string password = Request["password"];
            string passwordagain = Request["passwordagain"];
            string hobbies = "";
            DropDownList chkhobbies = (DropDownList)PreviousPage.FindControl("hobbies");
            foreach(ListItem item in chkhobbies.Items)
            {
                if (item.Selected)
                    hobbies += item.Text;
            }
           %>
        <div>
            <ul>
                <li>Ho ten: <%= hoten %> </li>
                 <li>Tuoi: <%= tuoi %> </li>
                 <li>Dien thoai: <%= dienThoai%></li>
                 <li>Email: <%= email %> </li>
                 <li>Ten dang nhap: <%= username %></li>
                 <li>Mat khau: <%= password %></li>
                 <li>Nhap lai mat khau: <%= passwordagain %></li>
                <li>So thich: <%= hobbies %></li>
            </ul>
        </div>
    </form>
</body>
</html>
