<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="bai_1.list" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>list</h1>
         
            </div>
        
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="SqlDataSource1" Height="327px" Width="797px">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="MaNV" HeaderText="MaNV" ReadOnly="True" SortExpression="MaNV" />
                <asp:BoundField DataField="Hoten" HeaderText="Hoten" SortExpression="Hoten" />
                <asp:BoundField DataField="Luong" HeaderText="Luong" SortExpression="Luong" />
                <asp:BoundField DataField="Thuong" HeaderText="Thuong" SortExpression="Thuong" />
                <asp:BoundField DataField="MaPhong" HeaderText="MaPhong" SortExpression="MaPhong" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:QLNhanvienConnectionString2 %>" DeleteCommand="DELETE FROM [Nhanvien] WHERE [MaNV] = @original_MaNV AND (([Hoten] = @original_Hoten) OR ([Hoten] IS NULL AND @original_Hoten IS NULL)) AND (([Luong] = @original_Luong) OR ([Luong] IS NULL AND @original_Luong IS NULL)) AND (([Thuong] = @original_Thuong) OR ([Thuong] IS NULL AND @original_Thuong IS NULL)) AND (([MaPhong] = @original_MaPhong) OR ([MaPhong] IS NULL AND @original_MaPhong IS NULL))" InsertCommand="INSERT INTO [Nhanvien] ([MaNV], [Hoten], [Luong], [Thuong], [MaPhong]) VALUES (@MaNV, @Hoten, @Luong, @Thuong, @MaPhong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Nhanvien]" UpdateCommand="UPDATE [Nhanvien] SET [Hoten] = @Hoten, [Luong] = @Luong, [Thuong] = @Thuong, [MaPhong] = @MaPhong WHERE [MaNV] = @original_MaNV AND (([Hoten] = @original_Hoten) OR ([Hoten] IS NULL AND @original_Hoten IS NULL)) AND (([Luong] = @original_Luong) OR ([Luong] IS NULL AND @original_Luong IS NULL)) AND (([Thuong] = @original_Thuong) OR ([Thuong] IS NULL AND @original_Thuong IS NULL)) AND (([MaPhong] = @original_MaPhong) OR ([MaPhong] IS NULL AND @original_MaPhong IS NULL))">
            <DeleteParameters>
                <asp:Parameter Name="original_MaNV" Type="String" />
                <asp:Parameter Name="original_Hoten" Type="String" />
                <asp:Parameter Name="original_Luong" Type="Int32" />
                <asp:Parameter Name="original_Thuong" Type="Int32" />
                <asp:Parameter Name="original_MaPhong" Type="String" />
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
                <asp:Parameter Name="original_MaNV" Type="String" />
                <asp:Parameter Name="original_Hoten" Type="String" />
                <asp:Parameter Name="original_Luong" Type="Int32" />
                <asp:Parameter Name="original_Thuong" Type="Int32" />
                <asp:Parameter Name="original_MaPhong" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
        
    </form>
</body>
</html>
