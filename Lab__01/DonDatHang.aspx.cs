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
            ddlLoaiBanh.Items.Add("Hamburger");
            ddlLoaiBanh.Items.Add("Bánh Croissant Bơ");
            ddlLoaiBanh.Items.Add("Bánh bò nướng");
            ddlLoaiBanh.Items.Add("Pates chauds");  
        }

        protected void btnThem_Click(object sender, EventArgs e)
        {
            var banh = ddlLoaiBanh.SelectedItem.Text;
            var soLuong = txtSoLuong.Text;

            lstBanh.Items.Add($"{banh} ({soLuong})");
        }

        protected void btnXoa_Click(object sender, EventArgs e)
        {
            for (int i = lstBanh.Items.Count - 1; i >= 0; i--)
            {
                if (lstBanh.Items[i].Selected)
                    lstBanh.Items.RemoveAt(i);
            }
        }
    }
}