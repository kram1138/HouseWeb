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
    public partial class Defualt : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();

            dt.Columns.Add(new DataColumn("item"));
            dt.Columns.Add(new DataColumn("cost"));
            dt.Columns.Add(new DataColumn("person"));

            string [] lines = File.ReadAllLines("thing.txt");

            
            foreach (string line in lines)
            {
                string[] vals = line.Split(',');

                DataRow dr = dt.NewRow();
                dr["item"] = vals[0];
                dr["cost"] = vals[1];
                dr["person"] = vals[2];
                dt.Rows.Add(dr);
            }

            GridViewMain.DataSource = dt;
            GridViewMain.DataBind();
        }
    }
}