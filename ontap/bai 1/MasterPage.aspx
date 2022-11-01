<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPage.aspx.cs" Inherits="bai_1.MasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Trang chủ</title>
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
                  <div>
            <h2 style="text-align:center">Danh sách sinh viên</h2>
        </div>
        <asp:GridView style="margin:0px auto;" ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="646px">
            <Columns>
                <asp:BoundField DataField="masv" HeaderText="ma sv" ReadOnly="True" SortExpression="masv" />
                <asp:BoundField DataField="hoten" HeaderText="ho ten" SortExpression="hoten" />
                <asp:BoundField DataField="diachi" HeaderText="dia chi" SortExpression="diachi" />
                <asp:BoundField DataField="diem" HeaderText="diem" SortExpression="diem" />
                <asp:BoundField DataField="malop" HeaderText="ma lop" SortExpression="malop" />
                <asp:BoundField DataField="anh" HeaderText="anh" SortExpression="anh" />
                <asp:TemplateField HeaderText="Delete">
                    <ItemTemplate>
                        &nbsp;<asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Ban co chac chan muon xoa khong?')"></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:HyperLinkField DataNavigateUrlFields="masv" DataNavigateUrlFormatString="SuaSinhVien.aspx?masv={0}" Text="Edit" HeaderText="Edit"/>
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([masv], [hoten], [diachi], [diem], [malop], [anh]) VALUES (@masv, @hoten, @diachi, @diem, @malop, @anh)" SelectCommand="SELECT * FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [diem] = @diem, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
            <DeleteParameters>
                <asp:Parameter Name="masv" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="masv" Type="Int32" />
                <asp:Parameter Name="hoten" Type="String" />
                <asp:Parameter Name="diachi" Type="String" />
                <asp:Parameter Name="diem" Type="Byte" />
                <asp:Parameter Name="malop" Type="Int32" />
                <asp:Parameter Name="anh" Type="String" />
            </InsertParameters>
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
            <div class="footer"><h2>Hoàng Minh Huệ - HTTT02</h2></div>
        </div>
    </form>
</body>
</html>
