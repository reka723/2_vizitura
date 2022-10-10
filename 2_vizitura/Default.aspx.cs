using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2_vizitura
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void b_jelentkezes_Click(object sender, EventArgs e)
        {
            l_uzenet.Text = "Ön az " + rb_list.SelectedValue + "t választotta, melyen " + dd_list.SelectedValue + "kal vesz részt " + cal_datum.SelectedDate.ToString();
            string kieg = "";
            foreach (ListItem item in cb_list.Items)
            {
                if (item.Selected)
                {
                    kieg += item.ToString() + ", ";
                }
            }
            if (kieg.Length>0)
            {
                //utolso 2 karakter ',' kivagasa
                kieg = kieg.Remove(kieg.Length-2);
            }
            l_uzenet.Text += kieg;
        }
    }
}