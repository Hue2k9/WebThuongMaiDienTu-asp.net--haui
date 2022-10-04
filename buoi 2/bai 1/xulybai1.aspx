<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="xulybai1.aspx.cs" Inherits="bai_1.xulybai1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <%
               string name = Request["name"];
               string password = Request["password"];
               string level = Request["level"];
               string gpa = Request["gpa"];
               string major = Request["major"];
               string passordAgain = Request["passwordagain"];
               string phoneNumber = Request["phone"];
               string email = Request["email"];
               string age = Request["tuoi"];
               //      CheckBoxList chkHobbies = (CheckBoxList)PreviousPage.FindControl("hobbies");
               string hobbies = "";
               /*
               foreach (ListItem myItem in chkHobbies.Items)
               {
                   if (myItem.Selected)
                   {
                      hobbies += myItem.Text+", ";
                   }
                  
               }
           */
           %>

            <ul>
               <li>Name:  <%= name %></li>
                 <li>Age:  <%= age%> </li>
                <li>Password:  <%= password%> </li>
                 <li>Password again:  <%= passordAgain %></li>
                <li>Phone number:  <%= phoneNumber%> </li>
                 <li>email:  <%= email %></li>
               
            </ul>
        </div>
    </form>
</body>
</html>
