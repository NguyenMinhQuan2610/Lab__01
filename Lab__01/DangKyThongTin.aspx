<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DangKyThongTin.aspx.cs" Inherits="Lab__01.DangKyThongTin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Đăng ký thông tin</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #eef2f7;
            margin: 0;
            padding: 0;
        }

        .container {
            width: 700px;
            margin: 30px auto;
            background: #fff;
            border: 2px solid #4da6ff;
            border-radius: 6px;
            box-shadow: 0px 2px 10px rgba(0,0,0,0.1);
        }

        .header {
            background-color: #3366ff;
            color: white;
            text-align: center;
            padding: 12px;
            font-size: 22px;
            font-weight: bold;
        }

        table {
            width: 100%;
            padding: 25px ;
            border-collapse: separate;
        }

        td.label {
            width: 160px;
            font-weight: bold;
            padding: 10px 0;
            vertical-align: top;
        }

        input[type="text"],
        input[type="date"],
        select,
        textarea {
            width: 100%;
            padding: 6px;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 14px;
        }

        #FileUpImg {
            margin-bottom: 8px;
        }

        #ImageHinh {
            width: 120px;
            height: 120px;
            border: 1px solid #ccc;
            border-radius: 6px;
            object-fit: cover;
            margin-left: 10px;
        }

        .btn-green {
            background-color: #28a745;
            color: white;
            padding: 8px 30px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
            font-size: 16px;
        }

        .btn-red {
            background-color: #dc3545;
            color: white;
            padding: 8px 30px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }

        .center {
            text-align: center;
            padding-top: 15px;
        }



        #lbthongtin {
            display: block;
            padding: 20px;
            font-size: 16px;
        }

        .auto-style1 {
            text-align: left;
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
