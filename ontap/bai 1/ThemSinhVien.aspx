<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemSinhVien.aspx.cs" Inherits="bai_1.ThemSinhVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  
     <title>Thêm sinh viên</title>
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
            <h2>Thêm sinh viên</h2>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="674px" DefaultMode="Insert" OnItemInserted="InsertedCmd">
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
                    &nbsp; Mã sinh viên:&nbsp;&nbsp;
                    <asp:TextBox ID="masvTextBox" runat="server" Text='<%# Bind("masv") %>' />
                    <br />
                    <br />
                    &nbsp; Họ tên:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                    <br />
                    <br />
                    &nbsp; Địa chỉ:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                    <br />
                    <br />
                    &nbsp; Điểm:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                    <asp:TextBox ID="diemTextBox" runat="server" Text='<%# Bind("diem") %>' />
                    <br />
                    <br />
                    &nbsp; Mã lớp:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>' Width="178px">
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
                    <br />
                    <br />
                    &nbsp; Ảnh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="anhTextBox" runat="server" Text='<%# Bind("anh") %>' />
                    <br />
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    ma sv:
                    <asp:Label ID="masvLabel" runat="server" Text='<%# Eval("masv") %>' />
                    <br />
                    ho ten:
                    <asp:Label ID="hotenLabel" runat="server" Text='<%# Bind("hoten") %>' />
                    <br />
                    dia chi:
                    <asp:Label ID="diachiLabel" runat="server" Text='<%# Bind("diachi") %>' />
                    <br />
                    diem:
                    <asp:Label ID="diemLabel" runat="server" Text='<%# Bind("diem") %>' />
                    <br />
                    ma lop:
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
            <br />
            <asp:label ID="errmsg" runat="server" ForeColor="Red"></asp:label>
            <br />
        
        </div>
        </div>
             <div class="footer"><h2>Hoàng Minh Huệ - HTTT02</h2></div>
   </div>
    </form>
</body>
</html>
