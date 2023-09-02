using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebSiteApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /*protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                int c = int.Parse(TextBox1.Text);
                TemperatureConversion.ServiceClient tempService = new TemperatureConversion.ServiceClient();
                TextBox2.Text = tempService.c2f(c).ToString();
            }
            catch (Exception ex)
            {
                TextBox2.Text = "Please eneter valid Integer!!";
            }
        }*/

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            // TextBox2.Text = "yup";

            try
            {
                int c = int.Parse(TextBox1.Text);
                TemperatureConversion.ServiceClient tempService = new TemperatureConversion.ServiceClient();
                TextBox2.Text = tempService.c2f(c).ToString();
            }
            catch (Exception ex)
            {
                TextBox1.Text = "Please eneter valid Integer!!";
            }


        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

            try
            {
                int c = int.Parse(TextBox2.Text);
                TemperatureConversion.ServiceClient tempService = new TemperatureConversion.ServiceClient();
                TextBox1.Text = tempService.f2c(c).ToString();
            }
            catch (Exception ex)
            {
                TextBox2.Text = "Please eneter valid Integer!!";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                NumberSorting.ServiceClient sortService = new NumberSorting.ServiceClient();
                TextBox4.Text = sortService.sort(TextBox3.Text);
            }
            catch (Exception ex)
            {
                TextBox4.Text = "Please eneter valid Input Array like 3,1,2!!";
            }
        }
    }
}