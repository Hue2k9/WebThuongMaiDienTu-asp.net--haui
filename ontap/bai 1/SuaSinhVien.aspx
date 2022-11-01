<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuaSinhVien.aspx.cs" Inherits="bai_1.SuaSinhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sửa sinh viên</title>
     <style>
        body{
            background-color:mediumturquoise;
        }
        #container{
            background-color:aqua;
            width: 80%;
            padding-top:50px;
           
            margin: 0px auto;
        }
        .header{
            width: 100%;
            background-color:deepskyblue;
        }
        .header ul li a{
            color:white;
            padding: 10px 30px;
            text-decoration:none;
        }
        .header ul li{
            padding-top: 10px;
            padding-bottom:10px;
        }
        .header ul{
            display:flex;
            list-style-type:none;
        }
        .footer{
            width: 100%;
            background-color:#808080;
           margin-top:100px;
           
        }
        .footer h2{
            color:white;
           padding-top:10px;
           padding-bottom:10px;
            text-align:center;
        }
        h1{
            text-align:center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="container">
            <h1>Ôn tập kiểm tra</h1>
            <div class="header">
                <ul>
                    <li><a href="MasterPage.aspx">Danh sách sinh viên</a></li>
                    <li><a href="ThemSinhVien.aspx">Thêm sinh viên</a></li>
                   
                </ul>
            </div>
            <div class="content">
                 
            <h2> Sửa thông tin sinh viên</h2>
        
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" DefaultMode="Edit" Width="276px" OnItemUpdated="Updated">
            <EditItemTemplate>
                masv:
                <asp:Label ID="masvLabel1" runat="server" Text='<%# Eval("masv") %>' />
                <br />
                ho ten:&nbsp;
                <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                <br />
                <br />
                dia chi:
                <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                <br />
                <br />
                diem:&nbsp;&nbsp;
                <asp:TextBox ID="diemTextBox" runat="server" Text='<%# Bind("diem") %>' />
                <br />
                <br />
                ma lop:
                <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>' Width="181px">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
                <br />
                <br />
                anh:&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                masv:
                <asp:TextBox ID="masvTextBox" runat="server" Text='<%# Bind("masv") %>' />
                <br />
                hoten:
                <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                <br />
                diachi:
                <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                <br />
                diem:
                <asp:TextBox ID="diemTextBox" runat="server" Text='<%# Bind("diem") %>' />
                <br />
                malop:
                <asp:TextBox ID="malopTextBox" runat="server" Text='<%# Bind("malop") %>' />
                <br />
                anh:
                <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                masv:
                <asp:Label ID="masvLabel" runat="server" Text='<%# Eval("masv") %>' />
                <br />
                hoten:
                <asp:Label ID="hotenLabel" runat="server" Text='<%# Bind("hoten") %>' />
                <br />
                diachi:
                <asp:Label ID="diachiLabel" runat="server" Text='<%# Bind("diachi") %>' />
                <br />
                diem:
                <asp:Label ID="diemLabel" runat="server" Text='<%# Bind("diem") %>' />
                <br />
                malop:
                <asp:Label ID="malopLabel" runat="server" Text='<%# Bind("malop") %>' />
                <br />
                anh:
                <asp:Label ID="anhLabel" runat="server" Text='<%# Bind("anh") %>' />
                <br />
                <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
            </ItemTemplate>
        </asp:FormView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString %>"  SelectCommand="SELECT * FROM [sinhvien] where [masv]=@masv" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [diem] = @diem, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
           <SelectParameters>
               <asp:QueryStringParameter Name="masv" Type="Int32" QueryStringField="masv"/>
           </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="hoten" Type="String" />
                <asp:Parameter Name="diachi" Type="String" />
                <asp:Parameter Name="diem" Type="Byte" />
                <asp:Parameter Name="malop" Type="Int32" />
                <asp:Parameter Name="anh" Type="String" />
                <asp:Parameter Name="masv" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            </div>
                <br />
    <asp:Label runat="server" ForeColor="Red" ID="erredit"></asp:Label>
    <br />
            <div class="footer"><h2>Hoàng Minh Huệ - HTTT02</h2></div>
        </div>
    </form>
  
  
</body>
</html>
