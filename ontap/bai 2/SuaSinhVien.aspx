<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SuaSinhVien.aspx.cs" Inherits="bai_2.SuaSinhVien" %>

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
                <h2>SUA THONG TIN SINH VIEN 
                </h2>
           
                  <asp:FormView ID="FormView1" runat="server" DataKeyNames="masv" DataSourceID="SqlDataSource1" DefaultMode="Edit" OnItemUpdated="UpdatedCmd" Width="395px">
                      <EditItemTemplate>
                          masv:
                          <asp:Label ID="masvLabel1" runat="server" Text='<%# Eval("masv") %>' />
                          <br />
                          hoten:&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="hotenTextBox" runat="server" Text='<%# Bind("hoten") %>' />
                          <br />
                          <br />
                          diachi:&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="diachiTextBox" runat="server" Text='<%# Bind("diachi") %>' />
                          <br />
                          <br />
                          diem:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          <asp:TextBox ID="diemTextBox" runat="server" Text='<%# Bind("diem") %>' />
                          <br />
                          <br />
                          malop:&nbsp;&nbsp;&nbsp;
                          <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource12" DataTextField="tenlop" DataValueField="malop" SelectedValue='<%# Bind("malop") %>' Width="185px">
                          </asp:DropDownList>
                          <asp:SqlDataSource ID="SqlDataSource12" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString2 %>" SelectCommand="SELECT * FROM [lophoc]"></asp:SqlDataSource>
                          <br />
                          <br />
                          <br />
                          anh:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:truonghocdb2ConnectionString2 %>" DeleteCommand="DELETE FROM [sinhvien] WHERE [masv] = @masv" InsertCommand="INSERT INTO [sinhvien] ([masv], [hoten], [diachi], [diem], [malop], [anh]) VALUES (@masv, @hoten, @diachi, @diem, @malop, @anh)" SelectCommand="SELECT * FROM [sinhvien] where [masv]=@masv" UpdateCommand="UPDATE [sinhvien] SET [hoten] = @hoten, [diachi] = @diachi, [diem] = @diem, [malop] = @malop, [anh] = @anh WHERE [masv] = @masv">
                    <SelectParameters>
                        <asp:QueryStringParameter Name="masv" Type="Int32" QueryStringField="masv"/>
                    </SelectParameters>
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
                <asp:Label runat="server" ID="err" ForeColor="Red"></asp:Label>
            </div>
            <div class="footer"><h3>Hoang Minh Hue - 2020607477</h3></div>
        </div>
    </form>
</body>
</html>
