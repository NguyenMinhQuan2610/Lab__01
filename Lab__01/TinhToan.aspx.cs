using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab__01
{
    public partial class TinhToan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCong_Click(object sender, EventArgs e)
        {
            double so1 = double.Parse(txtSo1.Text);
            double so2 = double.Parse(txtSo2.Text);
            double kq = so1 + so2;

            txtKQ.Text = kq.ToString();
        }

        protected void btnTru_Click(object sender, EventArgs e)
        {
            double so1 = double.Parse(txtSo1.Text);
            double so2 = double.Parse(txtSo2.Text);
            double kq = so1 - so2;

            txtKQ.Text = kq.ToString();
        }

        protected void btnNhan_Click(object sender, EventArgs e)
        {
            double so1 = double.Parse(txtSo1.Text);
            double so2 = double.Parse(txtSo2.Text);
            double kq = so1 * so2;

            txtKQ.Text = kq.ToString();
        }

        protected void btnChia_Click(object sender, EventArgs e)
        {
            double so1 = double.Parse(txtSo1.Text);
            double so2 = double.Parse(txtSo2.Text);
            double kq = so1 / so2;

            txtKQ.Text = kq.ToString();
        }
    }
}