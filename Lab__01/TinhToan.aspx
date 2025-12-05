<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="~/TinhToan.aspx.cs" Inherits="Lab__01.TinhToan" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Tính toán đơn giản</title>

    <style>
        body {
            font-family: Arial;
        }

        .container {
            width: 480px;
            margin: 0 auto;
            border: 2px solid #ccc;
            border-radius: 5px;
        }

        .header {
            background-color: #2aa7c7;
            padding: 15px 0;
            text-align: center;
            color: black;
            font-size: 24px;
            font-weight: bold;
        }

        table {
            width: 100%;
            padding: 15px;
        }

        td.label {
            width: 45%;
            text-align: right;
            padding-right: 10px;
            font-size: 16px;
        }

        .btn-blue {
            background: #007bff;
            color: white;
            padding: 6px 15px;
            border: none;
            border-radius: 4px;
        }

        .btn-red {
            background: #e74c3c;
            color: white;
            padding: 6px 15px;
            border: none;
            border-radius: 4px;
        }

        .btn-yellow {
            background: #f1c40f;
            color: black;
            padding: 6px 15px;
            border: none;
            border-radius: 4px;
        }

        .btn-gray {
            background: #7f8c8d;
            color: white;
            padding: 6px 15px;
            border: none;
            border-radius: 4px;
        }

        .result-label {
            color: red;
            font-weight: bold;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="header">Tính toán đơn giản</div>

            <table cellspacing="8">
                <tr>
                    <td class="label">
                        Nhập số 1:
                    </td>
                    <td>
                        <asp:TextBox ID="txtSo1" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td class="label">
                        Nhập số 2:
                    </td>
                    <td>
                        <asp:TextBox ID="txtSo2" runat="server"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td colspan="2" style="text-align:center; padding-top:10px;">
                        <asp:Button ID="btnCong" runat="server" Text="Cộng" CssClass="btn-blue" OnClick="btnCong_Click" />
                        <asp:Button ID="btnTru" runat="server" Text="Trừ" CssClass="btn-red" OnClick="btnTru_Click" />
                        <asp:Button ID="btnNhan" runat="server" Text="Nhân" CssClass="btn-yellow" OnClick="btnNhan_Click" />
                        <asp:Button ID="btnChia" runat="server" Text="Chia" CssClass="btn-gray" OnClick="btnChia_Click" />
                    </td>
                </tr>

                <tr>
                    <td class="label result-label">
                        Kết quả:
                    </td>
                    <td>
                        <asp:TextBox ID="txtKQ" runat="server" ReadOnly="true"></asp:TextBox>
                    </td>
                </tr>
            </table>
        </div>

    </form>
</body>
</html>
