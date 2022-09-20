<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="bai 1.aspx.cs" Inherits="bai_1.bai_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         #level tbody,
        #hobbies tbody{
            display:flex;
        }
        #major{
            width:200px;
            margin-top:10px;
        }
        #major option{
            padding: 3px 20px;
        }
        label{
            padding-top:-20px;
        }
        p{
            font-size: 10px;
           font-style:italic;
            padding-top:-20px;
            
        }
        
        tr{
           padding-top:10px;
        }
      
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <table >
               <tr>
                   <td> <label style="font-weight:bold;">Name</label></td>
                    
                         <td><asp:TextBox ID="name" runat="server"></asp:TextBox>
                       <p>Please enter your first and last name. (required)</p>
                   </td>
                   
               </tr>

                <tr>     
                 <td> <label style="font-weight:bold; margin-top:10px;">Password</label></td>
                   <td><asp:TextBox ID="password" runat="server" type="password"></asp:TextBox>
                       <p>Password must be five or more characters. (required)</p>
                   </td>
               </tr>

                     <tr>
                   <td> <label style="font-weight:bold;">Hobbies</label></td>    
                      <td>
                           <asp:CheckBoxList id="hobbies" runat="server" >
               
                            <asp:ListItem Value="surfing" name="surfing">Surfing</asp:ListItem>
                           <asp:ListItem Value="running" name="running">Running</asp:ListItem>
                           <asp:ListItem Value="biking" name="biking">Biking</asp:ListItem>
                           <asp:ListItem Value="padding" name="padding">Padding</asp:ListItem>    
                       </asp:CheckBoxList>
                          <p>Check zero or more hobbies. (optional)</p>
                      </td>
               </tr>
                     <tr>
                   <td> <label style="font-weight:bold;">Level</label></td>
                   <td>
                       <asp:RadioButtonList id="level" runat="server">
                           <asp:ListItem value="freshman">Freshman</asp:ListItem>
                           <asp:ListItem value="sophomore">Sophomore</asp:ListItem>
                           <asp:ListItem value="junior">Junior</asp:ListItem>
                           <asp:ListItem value="senior">Senior</asp:ListItem>
                           <asp:ListItem value="other">Other</asp:ListItem>
                       </asp:RadioButtonList>
                       <p>Select your grade level. (required)</p>
                   </td>
               </tr>
                <tr>
                   <td> <label style="font-weight:bold;">GPA</label></td>
                   <td>
                       <asp:DropDownList id="gpa" runat="server">
                           <asp:ListItem Value="1">1.0</asp:ListItem>
                            <asp:ListItem Value="2">2.0</asp:ListItem>
                            <asp:ListItem Value="3">3.0</asp:ListItem>
                            <asp:ListItem Value="4">4.0</asp:ListItem>
                        </asp:DropDownList>
                        <p>Select your GPA. (required)</p>
                   </td>
                   
               </tr>

                  <tr>
                      <td> <label style="font-weight:bold;">Majors</label></td>
                      <td>
                       <asp:ListBox ID="major" runat="server">
                            <asp:ListItem>Physics</asp:ListItem>
                            <asp:ListItem>Chemistry</asp:ListItem>
                            <asp:ListItem>Mathematics</asp:ListItem>
                            <asp:ListItem>Biology</asp:ListItem>
                      
                       </asp:ListBox>
                       <p>Select zero or more majors. (optional)</p>
                      </td>
                  </tr>

               <tr>
                   <td></td>
                   <td>
                       <asp:Button text="Submit" id="submit" runat="server" PostBackUrl="~/xulybai1.aspx"/>
                        <asp:Button text="Cancel" id="cancel" runat="server"/>
                   </td>
               </tr>
           </table>
        </div>
    </form>
</body>
</html>
