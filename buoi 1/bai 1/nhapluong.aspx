<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nhapluong.aspx.cs" Inherits="bai_1.nhapluong" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        td tbody{
            display:flex;
        }
        form{
            padding: 10px 20px 10px 10px;
          
        }
        h1{
            color:blue;
            margin-bottom:20px;
            font-weight:bold;
          
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <appSettings>
      <add key="ValidationSettings:UnobtrusiveValidationMode" value="None" />
    </appSettings>
        <div>
            <h1>Thong tin nhan vien</h1>
            <table>
                <tr>
                    <td>
                        <label>Dien thoai</label>
                    </td>
                    <td></td>
                    
                    <asp:RegularExpressionValidator id="rdienthoai" ControlToValidate="dienthoai"
                        ErrorMessage="So dien thoai 10 chu so" ForeColor="Red" runat="server" ValidationExpression="\d(10)" /> 
                </tr>
                <tr>
                    <td><label>Ho ten</label></td>
                    <td><asp:TextBox runat="server" ID="hoten"></asp:TextBox>
                        
                        <asp:RequiredFieldValidator ID="rhoten" ControlToValidate="hoten"
                            ErrorMessage="Ban phai nhap ho ten" ForeColor="Red" runat="server"/> 
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
                    
                    <asp:RangeValidator  ID="rsongaycong" ControlToValidate="songaycong"
                        ErrorMessage="So ngay cong phai tu 1 den 31" ForeColor="Red" runat="server" Type="Integer"
                        MinimumValue="1" MaximumValue="31"/> 
                </tr>
                <tr>
                    <td>Chuc vu</td>
                    <td>
                        <asp:DropDownList runat="server" ID="chucvu">
                            <asp:ListItem Value="truongphong">Truong phong</asp:ListItem>
                            <asp:ListItem Value="nhanvien">Nhan vien</asp:ListItem>
                            <asp:ListItem Value="khac">Khac</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
               
            </table>
            <asp:Button text="Tinh luong" runat="server" PostBackUrl="~/output.aspx"/>
            <asp:Button text="Nhap lai" runat="server"/>
        </div>
    </form>
</body>
</html>
