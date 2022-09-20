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
               CheckBoxList chkHobbies = (CheckBoxList)PreviousPage.FindControl("hobbies");
               string level = Request["level"];
               string gpa = Request["gpa"];
               string major = Request["major"];
               string hobbies = "";

               foreach (ListItem myItem in chkHobbies.Items)
               {
                   if (myItem.Selected)
                   {
                      hobbies += myItem.Text+", ";
                   }
                  
               }
           
           %>

            <ul>
               <li>Name:  <%= name %></li>
                <li>Password:  <%= password%> </li>
                <li>Hobbies:  <%= hobbies%> </li>
                <li>Level:  <%= level%> </li>
                <li>GPA:  <%= gpa%> </li>
                <li>Majors:  <%= major%> </li>
            </ul>
        </div>
    </form>
</body>
</html>
