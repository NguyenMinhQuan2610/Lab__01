<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab__01.DonDatHang" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đơn đặt hàng</title>

    <style>
        body {
            font-family: Arial;
        }

        .container {
            width: 650px;
            margin: 10px auto;
            border: 2px solid #66FF99;
            padding: 10px;
            background-color: #F6FFF6;
        }

        .header {
            text-align: center;
            background-color: #66FF99;
            color: #336600;
            font-weight: bold;
            padding: 5px;
        }

        table {
            width: 100%;
        }

        td.label {
            width: 160px;
            padding: 5px;
        }

        .col-left {
            float: left;
            width: 48%;
        }

        .col-right {
            float: left;
            width: 48%;
        }

        .clear {
            clear: both;
        }

        .btn-green {
            width: 100%;
            background-color: #66FF33;
            border: 1px solid green;
            padding: 8px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <div class="container">

            <div class="header">ĐƠN ĐẶT HÀNG</div>

            <table>
                <tr>
                    <td class="label">Khách hàng:</td>
                    <td>
                        <asp:TextBox ID="txtKhachHang" Width="300px" runat="server" /></td>
                </tr>
                <tr>
                    <td class="label">Địa chỉ:</td>
                    <td>
                        <asp:TextBox ID="txtDiaChi" Width="300px" runat="server" /></td>
                </tr>
                <tr>
                    <td class="label">Mã số thuế:</td>
                    <td>
                        <asp:TextBox ID="txtMaSoThue" Width="300px" runat="server" Height="21px" /></td>
                </tr>
            </table>

            <br />

            <div class="col-left">
                Chọn các loại bánh sau:<br />
                <asp:DropDownList ID="ddlLoaiBanh" Width="180px" runat="server">
                </asp:DropDownList>

                <br />
                <br />
                Số lượng:
            <asp:TextBox ID="txtSoLuong" Width="60px" runat="server">1</asp:TextBox>
                cái

            <br />
                <br />
                <asp:Button ID="btnThem" Text=">" Width="40px" runat="server" OnClick="btnThem_Click" />
            </div>

            <div class="col-right">
                Danh sách bánh được đặt:<br />
                <asp:ListBox ID="lstBanh" Width="250px" Height="120px" SelectionMode="Multiple" runat="server" OnSelectedIndexChanged="lstBanh_SelectedIndexChanged" />

                <br />
                <asp:Button ID="btnXoa" Text="Xóa" Width="40px" runat="server" OnClick="btnXoa_Click" />
            </div>

            <div class="clear"></div>

            <br />
            <asp:Button ID="btnIn" CssClass="btn-green" Text="In đơn đặt hàng" runat="server" OnClick="btnIn_Click" />
        </div>
        <div style="width:100%; display:flex; justify-content:center; margin-top:40px;">
            <asp:Label ID="lbthoadon" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
