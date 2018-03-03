using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static int i = 0, j = 0,k=0, r; SqlConnection sc;
    SqlCommand cmd;
    DataTable dt;
    protected void Page_Load(object sender, EventArgs e)
    {
         this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
         sc = new SqlConnection("Data Source=192.169.34.32\\SQLEXPRESS,1433;Initial Catalog=catname;Integrated Security=False;User ID=xxx;Password=xxx;Trusted_Connection=False");
         sc.Open();
         if (k == 0)
         {
             k++;
             ContentPlaceHolder cp = (ContentPlaceHolder)PreviousPage.Master.FindControl("ContentPlaceHolder1");
             TextBox tname = (TextBox)cp.FindControl("txtname");
             TextBox taddr = (TextBox)cp.FindControl("txtaddress");
             TextBox tphone = (TextBox)cp.FindControl("txtphone");
             TextBox temail = (TextBox)cp.FindControl("txtemail");
         }
    }
    protected void rbprop_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbprop.SelectedValue.Equals("Plot"))
        {

          
            rbres.Enabled = false;
            lflat.Enabled = false;
            rbnres.Enabled = false;
            txtflrs.Enabled = false;
            lfloors.Enabled = false;
            txtrooms.Enabled = false;
            lrooms.Enabled = false;
          
            //lfeatures.Enabled = false;
            //cbfeatures.Enabled = false;
            //lguide.Enabled = true;
            //txtguide.Enabled = true;
            txtarea.Enabled = true;
            larea.Enabled = true;
            txtexpprice.Enabled = true;
            lprice.Enabled = true;
            RequiredFieldValidator3.Enabled = false;
            RequiredFieldValidator4.Enabled = false;
        }


        if (rbprop.SelectedValue.Equals("Flat"))
        {
            
            rbres.Enabled = true;
            lflat.Enabled = true;
            rbnres.Enabled = true;
            txtflrs.Enabled = true;
            lfloors.Enabled = true;
            txtrooms.Enabled = true;
            lrooms.Enabled = true;
           
            //lfeatures.Enabled = true;
            //cbfeatures.Enabled = true;
            //lguide.Enabled = false;
            //txtguide.Enabled = false;
            txtarea.Enabled = false;
            larea.Enabled = false;
            txtexpprice.Enabled = true;
            lprice.Enabled = true;
            RequiredFieldValidator2.Enabled = false; 
        }


        if (rbprop.SelectedValue.Equals("House"))
        {

            
            rbres.Enabled = false;
            lflat.Enabled = false;
            rbnres.Enabled = false;
            txtflrs.Enabled = false;
            lfloors.Enabled = false;
            txtrooms.Enabled = true;
            lrooms.Enabled = true;
           
            //lfeatures.Enabled = false;
            //cbfeatures.Enabled = false;
            //lguide.Enabled = false;
            //txtguide.Enabled = false;
            txtarea.Enabled = true;
            larea.Enabled = true;
            txtexpprice.Enabled = true;
            lprice.Enabled = true;
          RequiredFieldValidator4.Enabled = false;

        }
    }
    protected void bbuy_Click(object sender, EventArgs e)
    {
            String inputft="";
              if(rbres.Checked)
                inputft="Residential";
            if(rbnres.Checked)
                inputft="Non-Residential";
        if (rbprop.SelectedValue.Equals("Plot"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select name,addres,phone,email,owntype,proptype,location,guide,price,area from dbo.propertybh", sc);
         dt = new DataTable();
         sda.Fill(dt);
         r = dt.Rows.Count;
            for(i=0;i<r;i++)
            {
             String n   = dt.Rows[i][j++].ToString();
            String a= dt.Rows[i][j++].ToString();
            String p= dt.Rows[i][j++].ToString();
            String em= dt.Rows[i][j++].ToString();
            String o= dt.Rows[i][j++].ToString();
            String pro= dt.Rows[i][j++].ToString();
            String loc= dt.Rows[i][j++].ToString();
            String g = dt.Rows[i][j++].ToString();
            String pr= dt.Rows[i][j++].ToString();
                String ar=dt.Rows[i][j++].ToString();
                j = 0;
                if (loc == ddloc.SelectedValue.ToString())
                {
                    if (int.Parse(txtarea.Text) > (int.Parse(ar) - 500) && int.Parse(txtarea.Text) <( int.Parse(ar) + 500))
                    {
                        if (int.Parse(txtexpprice.Text) > int.Parse(pr) - 50000 && int.Parse(txtexpprice.Text) < int.Parse(pr) + 50000)
                        {
                            
                            Label1.Text = "Owner Type:" + o;
                            Label2.Text = "Name:" + n;
                            Label3.Text = "Address:" + a;
                            Label4.Text = "Phone:" + p;
                            HyperLink1.NavigateUrl = "tel:" + Label4.Text;
                            HyperLink1.Visible = true;
                            Label5.Text = "Email:" + em;
                            HyperLink2.NavigateUrl = "mailto:" + Label5.Text;
                            HyperLink2.Visible = true;
                            Label6.Text = "GuideLine Value:" + g;
                            Label7.Text = "Price:" + pr;
                            Label8.Text = "Area:" + ar;
                        }
                    }
                }
            }

           
        }

         if (rbprop.SelectedValue.Equals("Flat"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select name,addres,phone,email,owntype,proptype,location,price,rooms,flattype,floors,furn,features from dbo.propertybh", sc);
            dt = new DataTable();
            sda.Fill(dt);
            r = dt.Rows.Count;
            for (i = 0; i < r; i++)
            {
                String n = dt.Rows[i][j++].ToString();
                String a = dt.Rows[i][j++].ToString();
                String p = dt.Rows[i][j++].ToString();
                String em = dt.Rows[i][j++].ToString();
                String o = dt.Rows[i][j++].ToString();
                String pro = dt.Rows[i][j++].ToString();
                String loc = dt.Rows[i][j++].ToString();
                String pr = dt.Rows[i][j++].ToString();
                String ro = dt.Rows[i][j++].ToString();
                String ft = dt.Rows[i][j++].ToString();
                String fl = dt.Rows[i][j++].ToString();
                String fu = dt.Rows[i][j++].ToString();
                String fe = dt.Rows[i][j++].ToString();

                j = 0;
                if (loc == ddloc.SelectedValue.ToString())
                {
                    if (txtrooms.Text==ro)
                    {
                        if (int.Parse(txtexpprice.Text) > int.Parse(pr) - 50000 && int.Parse(txtexpprice.Text) < int.Parse(pr) + 50000)
                        {
                            if (ft == inputft)
                            {
                                if (int.Parse(txtflrs.Text) <= int.Parse(fl))
                                {
                                    Label1.Text = "Owner Type:" + o;
                                    Label2.Text = "Name:" + n;
                                    Label3.Text = "Address:" + a;
                                    Label4.Text = "Phone:" + p;
                                    HyperLink1.NavigateUrl = "tel:" + Label4.Text;
                                    HyperLink1.Visible = true;
                                    Label5.Text = "Email:" + em;
                                    HyperLink2.NavigateUrl = "mailto:" + Label5.Text;
                                    HyperLink2.Visible = true;
                                    Label6.Text = "Rooms:" + ro;
                                    Label7.Text = "Price:" + pr;
                                    Label8.Text = "Furnishing Condition:" + fu;
                                    Label9.Text = "Features:" + fe;
                                    Label10.Text = "Floor No: " + fl + " available";
                                }
                            }
                        }
                    }
                }
            }


        }

        if (rbprop.SelectedValue.Equals("House"))
        {
            SqlDataAdapter sda = new SqlDataAdapter("select name,addres,phone,email,owntype,proptype,location,price,rooms,furn,area from dbo.propertybh", sc);
            dt = new DataTable();
            sda.Fill(dt);
            r = dt.Rows.Count;
            for (i = 0; i < r; i++)
            {
                String n = dt.Rows[i][j++].ToString();
                String a = dt.Rows[i][j++].ToString();
                String p = dt.Rows[i][j++].ToString();
                String em = dt.Rows[i][j++].ToString();
                String o = dt.Rows[i][j++].ToString();
                String pro = dt.Rows[i][j++].ToString();
                String loc = dt.Rows[i][j++].ToString();
                String pr = dt.Rows[i][j++].ToString();
                String ro = dt.Rows[i][j++].ToString();
                String fu = dt.Rows[i][j++].ToString();
                String ar = dt.Rows[i][j++].ToString();
               

                j = 0;
                if (loc == ddloc.SelectedValue.ToString())
                {
                    if (txtrooms.Text == ro)
                    {
                        if (int.Parse(txtexpprice.Text) > int.Parse(pr) - 50000 && int.Parse(txtexpprice.Text) < int.Parse(pr) + 50000)
                        {

                            if (int.Parse(txtarea.Text) > int.Parse(ar) - 500 && int.Parse(txtarea.Text) < int.Parse(ar) + 500)
                            {
                                Label1.Text = "Owner Type:" + o;
                                Label2.Text = "Name:" + n;
                                Label3.Text = "Address:" + a;
                                Label4.Text = "Phone:" + p;
                                HyperLink1.NavigateUrl = "tel:" + Label4.Text;
                                HyperLink1.Visible = true;
                                Label5.Text = "Email:" + em;
                                HyperLink2.NavigateUrl = "mailto:" + Label5.Text;
                                HyperLink2.Visible = true;
                                Label6.Text = "Rooms" + ro;
                                Label7.Text = "Price:" + pr;
                                Label8.Text = "Furnishing Condition:" + fu;
                            }
                        }
                    }
                }
            }

        }
    }
}
