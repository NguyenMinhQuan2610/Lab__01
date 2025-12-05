using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab__01
{
    public partial class DonDatHang : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlLoaiBanh.Items.Add("Hamburger");
                ddlLoaiBanh.Items.Add("Bánh Croissant Bơ");
                ddlLoaiBanh.Items.Add("Bánh bò nướng");
                ddlLoaiBanh.Items.Add("Pates chauds");
            }

        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            string Banh = ddlLoaiBanh.SelectedItem.Text;
            int soLuong = int.Parse(txtSoLuong.Text);

            bool found = false;

            for (int i = 0; i < lstBanh.Items.Count; i++)
            {
                string itemText = lstBanh.Items[i].Text;

                int index = itemText.LastIndexOf('(');

                if (index > 0)
                {
                    string OldOne = itemText.Substring(0, index).Trim();

                    if (OldOne == Banh) 
                    {
                        string OldCake = itemText.Substring(index + 1);
                        OldCake = OldCake.Replace(")", "");

                        int tong = int.Parse(OldCake) + soLuong;

                        lstBanh.Items[i].Text = $"{Banh} ({tong})";

                        found = true;
                        break;
                    }
                }
            }

            if (!found)
            {
                lstBanh.Items.Add($"{Banh} ({soLuong})");
            }
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                    lstBanh.Items.RemoveAt(i);
            }
        }

        protected void btnIn_Click(object sender, EventArgs e)
        {
            string kq = "<div style='width:420px; border:2px solid red; padding:10px'>";

            kq += "<h3 style='text-align:center; color:red; margin-top:0;'>HÓA ĐƠN ĐẶT HÀNG</h3>";

            kq += $"<p><b style='color:red;'>Khách hàng:</b> {txtKhachHang.Text}</p>";
            kq += $"<p><b style='color:red;'>Địa chỉ:</b> {txtDiaChi.Text}</p>";
            kq += $"<p><b style='color:red;'>Mã số thuế:</b> {txtMaSoThue.Text}</p>";

            kq += "<p><b style='color:red;'>Đặt các loại bánh sau:</b></p>";

            kq += "<table style='width:100%; border-collapse:collapse;'>";

            foreach (var item in lstBanh.Items)
            {
                string text = item.ToString();
                string[] tach = text.Split('(');
                string ten = tach[0].Trim();
                string sl = tach[1].Replace(")", "").Trim();

                kq += "<tr>";
                kq += $"<td style='border:1px solid red; padding:5px;'>{ten}</td>";
                kq += $"<td style='border:1px solid red; padding:5px; text-align:right;'>{sl}</td>";
                kq += "</tr>";
            }

            kq += "</table>";
            kq += "</div>";

            lbthoadon.Text = kq;
        }

        protected void lstBanh_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}