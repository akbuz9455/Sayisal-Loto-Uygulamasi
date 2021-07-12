using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace milliPiyango
{
    public partial class millipiyango : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                for (int i = 1; i < 50; i++)
                {
                      CheckBoxList1.Items.Add(i.ToString());
                 
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            ListBox1.Items.Clear();
             for (int i = 0; i < CheckBoxList1.Items.Count; i++)
             {
             if (CheckBoxList1.Items[i].Selected)
             {
             ListBox1.Items.Add(CheckBoxList1.Items[i].Value);
            }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            int[] dizim = new int[6];
            ListBox2.Items.Clear();
            Random rastgele = new Random();
                  for (int i = 0; i < 6; i++)

               {

            int sayi = rastgele.Next(1, 50);
                dizim[i] = sayi;


                }

            Array.Sort(dizim);
            for (int i = 0; i < 6; i++)
            {
                ListBox2.Items.Add(dizim[i].ToString());
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            int sayac = 0;

            if (ListBox1.Items.Count  ==6)
            {
                for (int i = 0; i < ListBox1.Items.Count; i++)
                {
                    for (int j = 0; j < ListBox2.Items.Count; j++)
                    {
                        if (ListBox1.Items[i].ToString() == ListBox2.Items[j].ToString())
                        { 
                         

                            sayac++;
                        }
                    }
                }
                Label1.Text = sayac.ToString() + " Rakam Buldunuz.";
             
               
            }
            else if (ListBox1.Items.Count>6)
            {
                string script = "<script type=\"text/javascript\">alert('6dan Fazla Sayı Seçilmemeli');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }
            else if (ListBox1.Items.Count < 6)
            {
                string script = "<script type=\"text/javascript\">alert('6dan Az Sayı Seçilmemeli');</script>";
                ClientScript.RegisterClientScriptBlock(this.GetType(), "Alert", script);
            }
        }
    }
}