using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Demo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //---PHAN CHÍ TRUNG
        [WebMethod]
        public static string GetValues(string value)
        {
            // DateTime.Now thay vì UtcNow để lấy ngày giờ trực tiếp của máy tính (Máy của bạn)

            value = value + " " + DateTime.Now.ToLongTimeString();
            return value;
        }
    }
}