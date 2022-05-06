using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspDotNetWebsites
{
    public partial class FileUpload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string Filenm = FileUpload1.FileName;
            string strpath = System.IO.Path.GetExtension(FileUpload1.FileName);
            Label1.Text = "Uploaded File Extension: " + strpath;

            if (strpath == ".jpg")
            {
                FileUpload1.SaveAs(Server.MapPath("~/Images/") + Filenm);
                Label1.Text = "File Uploaded SuccessFully";
                Image1.ImageUrl = "~/Images/" + Filenm;
                float x = FileUpload1.FileBytes.Length;
                float fsize = x / 1024;
                string size = fsize.ToString("0.00");
                float mbsize = fsize / 1024;
                string MBsize = mbsize.ToString("0.00");
                Label2.Text = "File Size in KB: " + size + " KB";
                Label3.Text = "File Size in MB: " + MBsize + " MB";
            }
            else
            {
                Label1.Text = "Sorry Only .jpg files are allowed............... :)";
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {

        }
    }
}