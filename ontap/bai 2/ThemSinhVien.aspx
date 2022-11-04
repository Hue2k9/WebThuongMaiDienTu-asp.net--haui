<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSinhVien.aspx.cs" Inherits="bai_2.ThemSinhVien" %>

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
                    <li><a href="ThemSinhVien.aspx">Them sinh vien</a></li>
                </ul>
            </div>
            <div class="content">
                <h2>THEM SINH VIEN</h2>
                <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" DefaultMode="Insert" Width="388px" OnItemInserted="InsertedCmd">
                    <EditItemTemplate>
                        masv:
                        <asp:Label ID="masvLabel1" runat="server" Text='<%# Eval("masv") %>' />
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
                        <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                        &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <InsertItemTemplate>
                        masv:&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="masvTextBox" runat="server" Text='<%# Bind("masv") %>' />
                        <br />
                        <br />
                        hoten:&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                        <br />
                        <br />
                        diachi:&nbsp;&nbsp;
                        <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                        <br />
                        <br />
                        diem:&nbsp;&nbsp;&nbsp;
                        <asp:TextBox ID="diemTextBox" runat="server" Text='<%# Bind("diem") %>' />
                        <br />
                        <br />
                        malop:&nbsp;
                        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>' Width="174px">
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString2 %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
                        <br />
                        <br />
                        anh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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

                    </ItemTemplate>
                </asp:FormView>
                <br />
                <asp:Label runat="server" ForeColor="Red" id="err"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString2 %>" SelectCommand="SELECT * FROM [sinhvien]" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([masv], [hoten], [diachi], [diem], [malop], [anh]) VALUES (@masv, @hoten, @diachi, @diem, @malop, @anh)" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [diem] = @diem, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
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
