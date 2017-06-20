using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TestWeb
{
    public partial class Food : System.Web.UI.Page
    {
        DataTable dt;
        protected void Page_Load(object sender, EventArgs e)
        {
            dt = new DataTable();

            dt.Columns.Add(new DataColumn("item"));
            dt.Columns.Add(new DataColumn("tobuy"));

            string[] lines = File.ReadAllLines("food.txt");


            foreach (string line in lines)
            {
                string[] val = line.Split(',');
                DataRow dr = dt.NewRow();
                dr["item"] = val[0];
                dr["tobuy"] = val[1];
                dt.Rows.Add(dr);
            }

            GridViewMain.DataSource = dt;
            GridViewMain.DataBind();
        }

        protected void GridViewMain_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            Button b = (Button)e.Row.FindControl("ButtonAdd");
            if (b != null)
            {
                string tobuy = ((Label)e.Row.FindControl("ToBuy")).Text;
                if (tobuy == "have")
                {
                    b.CssClass = "button_disabled";
                    b.Text = "On List";
                    b.Enabled = false;
                }
            }
        }

        protected void ButtonNew_Click(object sender, EventArgs e)
        {
            DataRow dr = dt.NewRow();
            dr["item"] = TextNewItem.Text;
            dr["tobuy"] = "need";
            dt.Rows.Add(dr);

            GridViewMain.DataBind();
        }

        protected void AddToList(object sender, EventArgs e)
        {
            Button b = (Button)sender;
            GridViewRow row = (GridViewRow)b.NamingContainer;
            
            if (b != null)
            {
                b.CssClass = "button_disabled";
                b.Text = "On List";
                b.Enabled = false;
            }
        }
    }
}