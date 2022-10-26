using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

namespace DHRWebForms
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\LocalDB;Initial Catalog=PatientSurvey;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            RadioButtonList1.RepeatLayout = RepeatLayout.Table;
            RadioButtonList1.RepeatDirection = RepeatDirection.Horizontal;
            RadioButtonList2.RepeatLayout = RepeatLayout.Table;
            RadioButtonList2.RepeatDirection = RepeatDirection.Horizontal;
            RadioButtonList3.RepeatLayout = RepeatLayout.Table;
            RadioButtonList3.RepeatDirection = RepeatDirection.Horizontal;
            RadioButtonList4.RepeatLayout = RepeatLayout.Table;
            RadioButtonList4.RepeatDirection = RepeatDirection.Horizontal;
            RadioButtonList5.RepeatLayout = RepeatLayout.Table;
            RadioButtonList5.RepeatDirection = RepeatDirection.Horizontal;

            
        }

        protected void butnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                con.Open();
                SqlCommand command = con.CreateCommand();
                command.CommandType = System.Data.CommandType.Text;
                command.CommandText = "Insert into PatientSurveys(FirstName,LastName,staff,clean,food,nurses,noise)Values('" + textBox1.Text + "','" + textBox2.Text + "','" + RadioButtonList1.SelectedValue + "' , '" + RadioButtonList2.SelectedValue + "' , '" + RadioButtonList3.SelectedValue + "' , '" + RadioButtonList4.SelectedValue + "' , '" + RadioButtonList5.SelectedValue + "')";
                command.ExecuteNonQuery();
                con.Close();
                Response.Redirect("Default2.aspx");
            }
            else
            {
               
            }


        }

    }
}