<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="Lab__01.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký thông tin</title>

<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #ffffff;
        margin: 0;
        padding: 0;
    }

    .container {
        width: 900px;
        margin: 20px auto;
        border: 2px solid #cc66ff;
        padding: 0;
    }

    /* Header đỏ như hình */
    .header {
        text-align: center;
        font-size: 22px;
        font-weight: bold;
        color: red;
        padding: 10px 0;
        border-bottom: 2px solid #cc66ff;
    }

    /* Bố cục 2 cột */
    .row {
        display: flex;
    }

    .left,
    .right {
        width: 50%;
        padding: 15px;
        border-left: 1px solid #cc66ff;
    }

    .left {
        border-right: 1px solid #cc66ff;
    }

    /* Tiêu đề tím */
    .title {
        text-align: center;
        font-weight: bold;
        color: #663399;
        margin: 10px 0;
        border-bottom: 1px solid #cc66ff;
        padding-bottom: 5px;
    }

    table {
        width: 100%;
        font-size: 14px;
    }

    td {
        padding: 6px;
        vertical-align: middle;
    }

    td.label {
        width: 150px;
    }

    input[type="text"],
    input[type="password"],
    select,
    textarea {
        width: 95%;
        padding: 4px;
        border: 1px solid #999;
        font-size: 14px;
    }

    /* Nút giống hình */
    .btn {
        padding: 5px 18px;
        background-color: #ddd;
        border: 1px solid #aaa;
        cursor: pointer;
        margin-top: 10px;
    }

    .btn:hover {
        background-color: #ccc;
    }

    /* Khu vực hồ sơ khách hàng */
    .info-item {
        padding: 4px 0;
        font-size: 14px;
    }

    .info-item span {
        font-weight: bold;
    }

    /* Gạch chấm list */
    .dot {
        color: purple;
        font-size: 18px;
        margin-right: 5px;
    }
</style>

</head>

<body>
    <form id="form1" runat="server">

        <div class="container">
            <div class="header">ĐĂNG KÝ THÔNG TIN</div>

            <table>
                <tr>
                    <td class="label">Họ và tên:</td>
                    <td>
                        <asp:TextBox ID="txtHoten" runat="server" /></td>
                </tr>

                <tr>
                    <td class="label">Ngày sinh:</td>
                    <td>
                        <asp:TextBox ID="txtNgaysinh" runat="server" TextMode="Date" /></td>
                </tr>

                <tr>
                    <td class="label">Giới tính:</td>
                    <td>
                        <asp:RadioButton ID="rdNam" runat="server" Text="Nam" GroupName="GT" Checked="true" />
                        <asp:RadioButton ID="rdNu" runat="server" Text="Nữ" GroupName="GT" />
                    </td>
                </tr>

                <tr>
                    <td class="label">Trình độ:</td>
                    <td>
                        <asp:DropDownList ID="ddlTrinhDo" runat="server"></asp:DropDownList></td>
                </tr>

                <tr>
                    <td class="label">Nghề nghiệp:</td>
                    <td>
                        <asp:ListBox ID="lbNgheNghiep" runat="server" Height="100px"></asp:ListBox></td>
                </tr>

                <tr>
                    <td class="label">Hình:</td>
                    <td>
                        <asp:FileUpload ID="FileUpImg" runat="server" />
                        <asp:Image ID="ImageHinh" runat="server" />
                    </td>
                </tr>

                <tr>
                    <td class="label">Sở thích:</td>
                    <td class="auto-style1">
                        <asp:CheckBoxList ID="cblSoThich" runat="server"></asp:CheckBoxList></td>
                </tr>

                <tr>
                    <td colspan="2" class="center">
                        <asp:Button ID="btnGui" runat="server" Text="Gửi" CssClass="btn-green" OnClick="btnGui_Click" />
                        <asp:Button ID="btnLamlai" runat="server" Text="Làm lại" CssClass="btn-red" OnClick="btnLamlai_Click" />
                    </td>
                </tr>
            </table>
        </div>
        <div class="container">
            <div class="header">KẾT QUẢ ĐĂNG KÝ</div>
            <table cellpadding="4" cellspacing="0" class="auto-style1">
                <tr>
                    <td style="text-align: left">
                        <asp:Label ID="lbthongtin" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
