<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Input.aspx.cs" Inherits="bai_3.Input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <label>Ho ten&nbsp; </label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox runat="server" ID="name"></asp:TextBox>
                       
                        <br />
                         <asp:RequiredFieldValidator runat="server" ID="rname" ControlToValidate="name" ForeColor="Red" ErrorMessage="Ban phai nhap ten"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label>Tuoi</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox runat="server" ID="age"></asp:TextBox>                 
                        <br />
                         <asp:RequiredFieldValidator runat="server" ID="rage" ControlToValidate="age" ForeColor="Red" ErrorMessage="Ban phai nhap tuoi"></asp:RequiredFieldValidator>
                         <br />
                        <asp:RangeValidator ID="checkage" Type="Integer" runat="server" MinimumValue="1" MaximumValue="100" ForeColor="Red" ControlToValidate="age" ErrorMessage="Tuoi khong hop le"></asp:RangeValidator>
                        <br />
                      
                        </td>
                </tr>
                 <tr>
                    <td>
                        <label>Dien thoai&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </label>
                        <asp:TextBox runat="server" ID="phonenumber"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator runat="server" ID="rphonenumber" ControlToValidate="phonenumber" ForeColor="Red" ErrorMessage="Ban phai nhap sdt"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator runat="server" ID="regexphonenumber" ControlToValidate="phonenumber" ErrorMessage="So dien thoai khong hop le" ForeColor="red" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label>Email</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox runat="server" ID="email"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator runat="server" ID="remail" ControlToValidate="email" ForeColor="Red" ErrorMessage="Ban phai nhap email"></asp:RequiredFieldValidator>
                
                        <br />
                
                        <asp:RegularExpressionValidator runat="server" ID="regexemail" ControlToValidate="email" ForeColor="Red" ErrorMessage="Email khong hop le" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </td>
                </tr>
                 <tr>
                    <td>
                        <label>Ten dang nhap&nbsp;&nbsp;&nbsp;&nbsp; </label>&nbsp;<asp:TextBox runat="server" ID="username"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator runat="server" ID="rusername" ControlToValidate="username" ForeColor="Red" ErrorMessage="Ban phai nhap username"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                 <tr>
                    <td>
                        <label>Mat khau</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="password" runat="server" type="password"></asp:TextBox>
                     
                        <br />
                           <asp:RequiredFieldValidator runat="server" ID="rpassord" ControlToValidate="password" ErrorMessage="Ban phai nhap password" ForeColor="red"></asp:RequiredFieldValidator>
                  
                        </td>
                </tr>
                 <tr>
                    <td>
                        <label>Go lai mat khau</label>&nbsp;&nbsp;
                        <asp:TextBox runat="server" ID="passwordagain" type="password"></asp:TextBox>
                        <br />
                        <asp:RequiredFieldValidator runat="server" type="password" ID="rpasswordagain" ForeColor="Red" ControlToValidate="passwordagain" ErrorMessage="Ban phai nhap lai mat khau"></asp:RequiredFieldValidator>
                        <br />
                   <asp:CompareValidator runat="server" ControlToValidate="passwordagain" ControlToCompare="password" ErrorMessage="Mat khau khong trung khop" ForeColor="Red"></asp:CompareValidator>
                        </td>
                </tr>
                <tr>
                    <td>So thich: </td>
                    <td>
                        <asp:DropDownList runat="server" ID="hobbies">
                        <asp:ListItem Value="tinhoc" name="tinhoc">tin hoc</asp:ListItem>
                        <asp:ListItem Value="toan" name="toanhoc">toan hoc</asp:ListItem>
                        <asp:ListItem Value="music" name="music">music</asp:ListItem>
                    </asp:DropDownList>
                    </td>
                </tr>
            </table>
            <asp:Button runat="server" ID="send" Text="submit" PostBackUrl="~/Output.aspx"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button runat="server" ID="cancel" Text="cancel"/>
        </div>
    </form>
</body>
</html>
