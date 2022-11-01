<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DanhSach.aspx.cs" Inherits="bai_1.DanhSach" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Danh sách</h2>
        </div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="masv" DataSourceID="SqlDataSource1" Width="646px">
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
    </form>
    <br />
    <a href="ThemSinhVien.aspx">Thêm sinh viên</a>
    <br />
    
</body>
</html>
