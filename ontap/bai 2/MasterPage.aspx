<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MasterPage.aspx.cs" Inherits="bai_2.MasterPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        h1{
            text-align:center;
        }
        body{
            background-color:aqua;;
        }
        .container{
            width: 80%;
            background-color: powderblue;
            min-height:80vh;
            margin: 0px auto;
        }
        .header{
            background-color:blue;
        }
        .header ul{
            display: flex;
            list-style-type:none;
        }
        .header ul li{
            padding: 10px 20px;


        }
        .header ul li a{
            color:white;
        }
        .footer h3{
            margin-top:100px;
            text-align:center;
            color:white;
        }
         .footer{
            background-color:blue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h1>Kiem tra</h1>
            <div class="header">
                <ul>
                    <li><a href="MasterPage.aspx">Danh sach sinh vien</a></li>
                    <li><a href="ThemSinhVien.aspx">Them sinh vien
                        </a></li>
                </ul>
            </div>
            <div class="content">
                <h2> DANH SACH SINH VIEN</h2>
                <asp:GridView ID="GridView1" runat="server" style="margin: 0px auto;" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource2" Width="769px" >
                <Columns>
                    <asp:BoundField DataField="masv" HeaderText="masv" ReadOnly="True" SortExpression="masv" />
                    <asp:BoundField DataField="hoten" HeaderText="hoten" SortExpression="hoten" />
                    <asp:BoundField DataField="diachi" HeaderText="diachi" SortExpression="diachi" />
                    <asp:BoundField DataField="diem" HeaderText="diem" SortExpression="diem" />
                    <asp:BoundField DataField="malop" HeaderText="malop" SortExpression="malop" />
                    <asp:BoundField DataField="anh" HeaderText="anh" SortExpression="anh" />
                    <asp:TemplateField HeaderText="Delete">
                        <ItemTemplate>
                            <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick="return confirm('Ban co chac chan muon xoa khong?')"></asp:LinkButton>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:HyperLinkField DataNavigateUrlFields="masv" DataNavigateUrlFormatString="SuaSinhVien.aspx?masv={0}" Text="Edit" HeaderText="Edit"/>
                </Columns>
                        </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString2 %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([masv], [hoten], [diachi], [diem], [malop], [anh]) VALUES (@masv, @hoten, @diachi, @diem, @malop, @anh)" SelectCommand="SELECT * FROM [sinhvien]" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [diem] = @diem, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv"  UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [diem] = @diem, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
                  
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
            <div class="footer"><h3>Hoang Minh Hue - 2020607477</h3></div>
        </div>
    </form>
</body>
</html>
