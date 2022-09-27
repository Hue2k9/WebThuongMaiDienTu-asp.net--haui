<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="output.aspx.cs" Inherits="bai_1.output" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
   
    <form id="form1" runat="server">
        <div>
            <%
               
                string hoTen = Request["hoten"];
                string gioiTinh = Request["gioitinh"];
                CheckBoxList chkNgoaiNgu = (CheckBoxList)PreviousPage.FindControl("ngoaingu");
                int bacLuong = int.Parse(Request["bacluong"]);
                int soNgayCong = int.Parse(Request["songaycong"]);
                string chucVu = Request["chucvu"];
                string ngoaiNgu = "";
                foreach(ListItem item in chkNgoaiNgu.Items)
                {
                    if (item.Selected)
                        ngoaiNgu += item.Text + ", ";
                }

                int thuong=0,phucap=0,luongcoban=800000;
                int tongluong=0;
                if (soNgayCong > 25) thuong = (soNgayCong - 25) * 200000;
                if (chucVu.Equals("truongphong")) phucap = 500000;
                if (chucVu.Equals("phophong")) phucap = 300000;
                if (chucVu.Equals("nhanvien")) phucap = 200000;
                tongluong = luongcoban * bacLuong + thuong + phucap;
                %>
            <h1>Tinh luong nhan vien</h1>
            <table border="1">
               
                 <tr>
                    <td>Ho ten: </td>
                    <td> <%= hoTen %></td>
                </tr> <tr>
                    <td>Gioi tinh: </td>
                    <td> <%=gioiTinh %></td>
                </tr> <tr>
                    <td>Ngoai ngu: </td>
                    <td> <%=ngoaiNgu %></td>
                </tr> <tr>
                    <td>Bac luong: </td>
                    <td><%=bacLuong %></td>
                </tr>
                <tr>
                    <td>Luong co ban: </td>
                    <td><%= 800000 %></td>
                </tr>
                 <tr>
                    <td>Ngay cong: </td>
                    <td>
                        <%=soNgayCong %>
                    </td>
                </tr> <tr>
                    <td>Chuc vu: </td>
                    <td> <%= chucVu %></td>
                </tr> <tr>
                    <td>Phu cap: </td>
                    <td> <%= phucap %></td>
                </tr> <tr>
                    <td>Thuong: </td>
                    <td> <%= thuong %></td>
                </tr>
                <tr>
                    <td>Tong luong: </td>
                    <td> <%=tongluong %></td>
                </tr>

            </table>
        </div>
    </form>

</body>
</html>
