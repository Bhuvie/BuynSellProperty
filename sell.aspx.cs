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
    static TextBox tname; static TextBox taddr; static TextBox tphone; static TextBox temail;
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        sc = new SqlConnection("Data Source=192.169.34.32\\SQLEXPRESS,1433;Initial Catalog=catname;Integrated Security=False;User ID=xxx;Password=xxx;Trusted_Connection=False");
        sc.Open();
        if (k == 0)
        {
            k++;
            ContentPlaceHolder cp = (ContentPlaceHolder)PreviousPage.Master.FindControl("ContentPlaceHolder1");
            tname = (TextBox)cp.FindControl("txtname");
            taddr = (TextBox)cp.FindControl("txtaddress");
            tphone = (TextBox)cp.FindControl("txtphone");
            temail = (TextBox)cp.FindControl("txtemail");
        }
    }
    

    protected void rbprop_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (rbprop.SelectedValue.Equals("Plot"))
        {
            
            txtyrs.Enabled= false;
            lyrs.Enabled = false;
            rbres.Enabled = false;
            lflat.Enabled = false;
            rbnres.Enabled = false;
            txtflrs.Enabled = false;
            lfloors.Enabled = false;
            txtrooms.Enabled = false;
            lrooms.Enabled = false;
            lfurn.Enabled = false;
            rbfurn.Enabled= false;
            rbfurn0.Enabled = false;
            rbfurn1.Enabled = false;
            lfeatures.Enabled = false;
            cbfeatures.Enabled = false;
            lguide.Enabled = true;
            txtguide.Enabled = true;
            txtarea.Enabled = true;
            larea.Enabled = true;
            txtexpprice.Enabled = true;
            lprice.Enabled = true;
            RequiredFieldValidator4.Enabled = false;
            RequiredFieldValidator5.Enabled = false;
            RequiredFieldValidator6.Enabled = false;

        }


        if (rbprop.SelectedValue.Equals("Flat"))
        {
            txtyrs.Enabled = true;
            lyrs.Enabled = true;
            rbres.Enabled = true;
            lflat.Enabled = true;
            rbnres.Enabled = true;
            txtflrs.Enabled = true;
            lfloors.Enabled = true;
            txtrooms.Enabled = true;
            lrooms.Enabled = true;
            lfurn.Enabled = true;
            rbfurn.Enabled = true;
            rbfurn0.Enabled = true;
            rbfurn1.Enabled = true;
            lfeatures.Enabled = true;
            cbfeatures.Enabled = true;
            lguide.Enabled = false;
            txtguide.Enabled = false;
            txtarea.Enabled = false;
            larea.Enabled = false;
            txtexpprice.Enabled = true;
            lprice.Enabled = true;
            RequiredFieldValidator1.Enabled = false;
            RequiredFieldValidator3.Enabled = false;
           
        }


        if (rbprop.SelectedValue.Equals("House"))
        {

            txtyrs.Enabled = true;
            lyrs.Enabled = true;
            rbres.Enabled = false;
            lflat.Enabled = false;
            rbnres.Enabled = false;
            txtflrs.Enabled = false;
            lfloors.Enabled = false;
            txtrooms.Enabled = true;
            lrooms.Enabled = true;
            lfurn.Enabled = true;
            rbfurn.Enabled = true;
            rbfurn0.Enabled = true;
            rbfurn1.Enabled = true;
            lfeatures.Enabled = false;
            cbfeatures.Enabled = false;
            lguide.Enabled = false;
            txtguide.Enabled = false;
            txtarea.Enabled = true;
            larea.Enabled = true;
            txtexpprice.Enabled = true;
            lprice.Enabled = true;
            RequiredFieldValidator1.Enabled = false;
            RequiredFieldValidator5.Enabled = false;
          
        }
    }
    protected void bsell_Click(object sender, EventArgs e)
    {
        
        
        
        
        if (rbprop.SelectedValue.Equals("Plot"))
        {
            cmd = new SqlCommand("INSERT INTO propertybh (name,addres,phone,email,owntype,proptype,location,guide,area,price)  values (@n,@a,@p,@e,@o,@pro,@l,@g,@ar,@pr)", sc);
            cmd.Parameters.Add("@n", tname.Text);
            cmd.Parameters.Add("@a", taddr.Text);
            cmd.Parameters.Add("@p", tphone.Text);
            cmd.Parameters.Add("@e", temail.Text);
            cmd.Parameters.Add("@o", rbown.SelectedValue.ToString());
            cmd.Parameters.Add("@pro", rbprop.SelectedValue.ToString());
            cmd.Parameters.Add("@l", ddloc.SelectedValue.ToString());
            cmd.Parameters.Add("@g", txtguide.Text);
            cmd.Parameters.Add("@ar", txtarea.Text);
            cmd.Parameters.Add("@pr", txtexpprice.Text);
            cmd.ExecuteNonQuery();
            Response.Redirect("Default2.aspx");
        }

        if (rbprop.SelectedValue.Equals("Flat"))
        {
            cmd = new SqlCommand("INSERT INTO propertybh (name,addres,phone,email,owntype,proptype,location,price,years,flattype,floors,rooms,furn,features)  values (@n,@a,@p,@e,@o,@pro,@l,@pr,@y,@f,@flr,@r,@fu,@fe)", sc);
            cmd.Parameters.Add("@n", tname.Text);
            cmd.Parameters.Add("@a", taddr.Text);
            cmd.Parameters.Add("@p", tphone.Text);
            cmd.Parameters.Add("@e", temail.Text);
            cmd.Parameters.Add("@o", rbown.SelectedValue.ToString());
            cmd.Parameters.Add("@pro", rbprop.SelectedValue.ToString());
            cmd.Parameters.Add("@l", ddloc.SelectedValue.ToString());
            cmd.Parameters.Add("@pr", txtexpprice.Text);
            cmd.Parameters.Add("@y", txtyrs.Text);
            if(rbres.Checked)
            cmd.Parameters.Add("@f", "Residential");
            if(rbnres.Checked)
            cmd.Parameters.Add("@f", "Non-Residential");
            cmd.Parameters.Add("@flr", txtflrs.Text);
            cmd.Parameters.Add("@r", txtrooms.Text);
            if (rbfurn.Checked)
            cmd.Parameters.Add("@fu","Furnished");
            if (rbfurn0.Checked)
                cmd.Parameters.Add("@fu", "Semi-Furnished");
            if (rbfurn1.Checked)
                cmd.Parameters.Add("@fu", "No Furnishing");
            string items = string.Empty;
            foreach (ListItem i in cbfeatures.Items)
            {
                if (i.Selected == true)
                {
                    items += i.Text + ",";
                }
            }
            cmd.Parameters.Add("@fe", items);
            cmd.ExecuteNonQuery();
            Response.Redirect("Default2.aspx");
        }

        if (rbprop.SelectedValue.Equals("House"))
        {
            cmd = new SqlCommand("INSERT INTO propertybh (name,addres,phone,email,owntype,proptype,location,price,years,rooms,furn,area)  values (@n,@a,@p,@e,@o,@pro,@l,@pr,@y,@r,@fu,@ar)", sc);
            cmd.Parameters.Add("@n", tname.Text);
            cmd.Parameters.Add("@a", taddr.Text);
            cmd.Parameters.Add("@p", tphone.Text);
            cmd.Parameters.Add("@e", temail.Text);
            cmd.Parameters.Add("@o", rbown.SelectedValue.ToString());
            cmd.Parameters.Add("@pro", rbprop.SelectedValue.ToString());
            cmd.Parameters.Add("@l", ddloc.SelectedValue.ToString());
            cmd.Parameters.Add("@pr", txtexpprice.Text);
            cmd.Parameters.Add("@y", txtyrs.Text);
            cmd.Parameters.Add("@ar", txtarea.Text);
            
            cmd.Parameters.Add("@r", txtrooms.Text);
            if (rbfurn.Checked)
                cmd.Parameters.Add("@fu", "Furnished");
            if (rbfurn0.Checked)
                cmd.Parameters.Add("@fu", "Semi-Furnished");
            if (rbfurn1.Checked)
                cmd.Parameters.Add("@fu", "No Furnishing");
            
            cmd.ExecuteNonQuery();
            Response.Redirect("Default2.aspx");
        }
    }
   
}