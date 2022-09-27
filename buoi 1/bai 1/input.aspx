<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="input.aspx.cs" Inherits="bai_1.input" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        #ngoaingu tbody{
            display:flex;
        }
        #gioitinh tbody{
            display:flex;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" >
        <div>
            <h1>Thong tin nhan vien</h1>
            <table>
              
                <tr>
                    <td><label>Ho ten</label></td>
                    <td><asp:TextBox runat="server" ID="hoten"></asp:TextBox>
                      <asp:RequiredFieldValidator runat="server" ID="rhoten" ErrorMessage="Ban phai nhap ho ten" ControlToValidate="hoten"
                          ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator runat="server" ControlToValidate="hoten" ValidationExpression="[a-zA-Z]" ErrorMessage="Ten phai la chu so"/>
                    </td>
                </tr>
                <tr>
                    <td> <label> Tuoi </label></td>
                    <td> <asp:TextBox runat="server" ID="tuoi"></asp:TextBox></td>
                     <asp:RangeValidator runat="server" id="rtuoi" ControlToValidate="tuoi"
                     ErrorMessage="Tuoi phai lon hon 1" Type="Integer" MinimumValue="1" MaximumValue="100"/>  
                </tr>
                 <tr>
                    <td>
                        <label>Dien thoai</label>
                    </td>
                    <td>
                        <asp:TextBox ID="dienthoai" runat="server"></asp:TextBox>
                       
                    </td>
                    
                 
                    </tr>
                <tr>
                    <td>Gioi tinh</td>
                    <td> <asp:RadioButtonList runat="server" id="gioitinh">
                        <asp:ListItem Value="nam">Nam</asp:ListItem>
                        <asp:ListItem Value="nu">Nu</asp:ListItem>
                         </asp:RadioButtonList></td>
                </tr>
                 <tr>
                    <td>Ngoai ngu</td>
                    <td> <asp:CheckBoxList runat="server" ID="ngoaingu">
                        <asp:ListItem Value="anh" name="anh">Anh</asp:ListItem>
                        <asp:ListItem Value="phap" name="phap">Phap</asp:ListItem>
                        <asp:ListItem Value="nga" name="nga">Nga</asp:ListItem>
                         </asp:CheckBoxList></td>
                </tr>
                <tr>
                    <td>Bac luong</td>
                    <td><asp:TextBox runat="server" ID="bacluong"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>So ngay cong</td>
                    <td><asp:TextBox runat="server" ID="songaycong"></asp:TextBox></td>
               
                </tr>
                <tr>
                    <td>Chuc vu</td>
                    <td>
                        <asp:DropDownList runat="server" ID="chucvu">
                            <asp:ListItem Value="truongphong">Truong phong</asp:ListItem>
                            <asp:ListItem Value="phophong">Pho phong</asp:ListItem>
                            <asp:ListItem Value="nhanvien">Nhan vien</asp:ListItem>
                           
                        </asp:DropDownList>
                    </td>
                </tr>
               
            </table>
            <asp:Button text="Tinh luong" runat="server" PostBackUrl="~/output.aspx"/>
           
            <asp:Button text="Nhap lai" runat="server" ID="nhaplai" name="nhaplai"/>
        </div>
    </form>
  
</body>
</html>
