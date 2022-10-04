<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ThemNhanVien.aspx.cs" Inherits="bai_1.ThemNhanVien" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Them nhan vien</h2>
            <asp:FormView ID="FormView1" runat="server" DataKeyNames="MaNV" DataSourceID="SqlDataSource1" Width="435px"
                DefaultMode="Insert">
                <EditItemTemplate>
                    MaNV:
                    <asp:Label ID="MaNVLabel1" runat="server" Text='<%# Eval("MaNV") %>' />
                    <br />
                    Hoten:
                    <asp:TextBox ID="HotenTextBox" runat="server" Text='<%# Bind("Hoten") %>' />
                    <br />
                    Luong:
                    <asp:TextBox ID="LuongTextBox" runat="server" Text='<%# Bind("Luong") %>' />
                    <br />
                    Thuong:
                    <asp:TextBox ID="ThuongTextBox" runat="server" Text='<%# Bind("Thuong") %>' />
                    <br />
                    MaPhong:
                    <asp:TextBox ID="MaPhongTextBox" runat="server" Text='<%# Bind("MaPhong") %>' />
                    <br />
                    <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                    &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Ma NV:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="MaNVTextBox" runat="server" Text='<%# Bind("MaNV") %>' />
                    <br />
                    Ho ten:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="HotenTextBox" runat="server" Text='<%# Bind("Hoten") %>' />
                    <br />
                    Luong:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="LuongTextBox" runat="server" Text='<%# Bind("Luong") %>' />
                    <br />
                    Thuong:&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="ThuongTextBox" runat="server" Text='<%# Bind("Thuong") %>' />
                    <br />
                    Ma Phong:
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="MaNV" DataValueField="MaPhong" SelectedValue='<%# Bind("MaPhong") %>'>
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanvienConnectionString %>" SelectCommand="SELECT * FROM [Nhanvien]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanvienConnectionString2 %>" SelectCommand="SELECT * FROM [Nhanvien]"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanvienConnectionString2 %>" SelectCommand="SELECT * FROM [Nhanvien]"></asp:SqlDataSource>
                    <br />
                    <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </InsertItemTemplate>
                <ItemTemplate>
                    Ma NV:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="MaNVLabel" runat="server" Text='<%# Eval("MaNV") %>' />
                    <br />
                    Ho ten:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="HotenLabel" runat="server" Text='<%# Bind("Hoten") %>' />
                    <br />
                    Luong:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="LuongLabel" runat="server" Text='<%# Bind("Luong") %>' />
                    <br />
                    Thuong:&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Label ID="ThuongLabel" runat="server" Text='<%# Bind("Thuong") %>' />
                    <br />
                    Ma Phong:
                    <asp:Label ID="MaPhongLabel" runat="server" Text='<%# Bind("MaPhong") %>' />
                    <br />
                    <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
                </ItemTemplate>

            </asp:FormView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QLNhanvienConnectionString %>" DeleteCommand="DELETE FROM [Nhanvien] WHERE [MaNV] = @MaNV" InsertCommand="INSERT INTO [Nhanvien] ([MaNV], [Hoten], [Luong], [Thuong], [MaPhong]) VALUES (@MaNV, @Hoten, @Luong, @Thuong, @MaPhong)" SelectCommand="SELECT * FROM [Nhanvien]" UpdateCommand="UPDATE [Nhanvien] SET [Hoten] = @Hoten, [Luong] = @Luong, [Thuong] = @Thuong, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV">
                <DeleteParameters>
                    <asp:Parameter Name="MaNV" Type="String" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="MaNV" Type="String" />
                    <asp:Parameter Name="Hoten" Type="String" />
                    <asp:Parameter Name="Luong" Type="Int32" />
                    <asp:Parameter Name="Thuong" Type="Int32" />
                    <asp:Parameter Name="MaPhong" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Hoten" Type="String" />
                    <asp:Parameter Name="Luong" Type="Int32" />
                    <asp:Parameter Name="Thuong" Type="Int32" />
                    <asp:Parameter Name="MaPhong" Type="String" />
                    <asp:Parameter Name="MaNV" Type="String" />
                </UpdateParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <asp:Label ID="errmsg" runat="server" ForeColor="Red"></asp:Label>
            <a href="list.aspx">Xem danh sach nhan vien</a>
        </div>
    </form>
</body>
</html>
