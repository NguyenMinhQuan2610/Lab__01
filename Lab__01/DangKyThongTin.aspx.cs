using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Lab__01
{
    public partial class DangKyThongTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ImageHinh.Visible = false;

            if (!IsPostBack)
            {

                ddlTrinhDo.Items.Add("Trung cấp");
                ddlTrinhDo.Items.Add("Cao đẳng");
                ddlTrinhDo.Items.Add("Đại học");
                ddlTrinhDo.Items.Add("Trên đại học");

                lbNgheNghiep.Items.Add("Kỹ sư");
                lbNgheNghiep.Items.Add("Bác sĩ");
                lbNgheNghiep.Items.Add("Công nhân");
                lbNgheNghiep.Items.Add("Lập trình viên");

                cblSoThich.Items.Add("Chơi game");
                cblSoThich.Items.Add("Nghe nhạc");
                cblSoThich.Items.Add("Xem phim");
                cblSoThich.Items.Add("Du lịch");
                cblSoThich.Items.Add("Mua Sắm");
            }

        }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnGui_Click(object sender, EventArgs e)
        {
            string kq = "<ul>";
            string gioitinh = rdNam.Checked ? rdNam.Text : rdNam.Text;
            kq += $"<li> Họ tên: {txtHoten.Text}";
            kq += $"<li> Ngày Sinh: {txtNgaysinh.Text}";
            kq += $"<li> Giới tính: {gioitinh}";
            kq += $"<li> Trình độ: {ddlTrinhDo.SelectedItem.Text}";
            kq += $"<li> Nghề Nghiệp: {lbNgheNghiep.SelectedItem.Text}";
            if (FileUpImg.HasFile)
            {
                string fileName = FileUpImg.FileName;
                string folder = Server.MapPath("~/Img/");

                string savePath = folder + fileName;
                FileUpImg.SaveAs(savePath);

                kq += $"<li> Hình: <img src='Img/{fileName}' width='120px' />";
            }
            else
            {
                ImageHinh.ImageUrl = "";
                kq += "<li> Hình: (chưa chọn)";
            }
            string sothich = "";
            foreach (ListItem item in cblSoThich.Items)
            {
                if (item.Selected)
                {
                    sothich += item.Text + ", ";
                }
            }

            if (sothich.EndsWith(", "))
                sothich = sothich.Substring(0, sothich.Length - 2);
            kq += $"<li> Sở thích: {sothich}" ;
            kq += "</ul>";

            lbthongtin.Text = kq.ToString();
        }

        protected void btnLamlai_Click(object sender, EventArgs e)
        {
            txtHoten.Text = "";
            txtNgaysinh.Text = "";

            rdNam.Checked = true;
            rdNu.Checked = false;

            ddlTrinhDo.SelectedIndex = 0;

            lbNgheNghiep.ClearSelection();

            foreach (ListItem item in cblSoThich.Items)
            {
                item.Selected = false;
            }

            ImageHinh.Visible = false;
            ImageHinh.ImageUrl = "";

            lbthongtin.Text = "";

            FileUpImg.Attributes.Clear();  
        }
    }
}