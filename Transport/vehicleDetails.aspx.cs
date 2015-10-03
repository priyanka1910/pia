using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace TransportMangSystem
{
    public partial class vehicleDetails : System.Web.UI.Page
    {
        string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\TransportMangSystem.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // string constr = @"Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\TransportMangSystem.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(constr);
            string VNo = txtvehicleNo.Text;
            string Vname = DDLVehicleName.Text;
            string Vtype = DDLVehicleType.Text;
            string Ptype = DDLPermit.Text;
            string Pno = txtPermitNo.Text;
           /* DateTime STdate = new DateTime();
            STdate  = Convert.ToDateTime(txtStartDate.Text);
            DateTime EDdate = new DateTime();
            EDdate = Convert.ToDateTime(txtEndDate.Text);
            */
     

            try
            {
                con.Open();
                string str = "insert into VehicleDetails values('" + VNo + "','" + Vname + "','" + Vtype + "','" + Ptype + "','" + Pno + "','" + Convert.ToDateTime(txtStartDate.Text) + "','" + Convert.ToDateTime(txtEndDate.Text) + "')";
                SqlCommand cmd = new SqlCommand(str, con);
                
               cmd.Connection = con;
               cmd.ExecuteNonQuery();
               clear_field();


            }
            catch (Exception ex)
            {
                con.Close();
            }

        }

        protected void btnCancle_Click(object sender, EventArgs e)
        {

        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string VNo = txtvehicleNo.Text;
            string Vname = DDLVehicleName.Text;
            string Vtype = DDLVehicleType.Text;
            string Ptype = DDLPermit.Text;
            string Pno = txtPermitNo.Text;
            string STdate = txtStartDate.Text;
            string EDdate = txtEndDate.Text;

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update VehicleDetails set Vname='" + Vname + "',Vtype='" + Vtype + "',Ptype='" + Ptype + "',Pno='" + Pno + "',STdate='" + STdate + "',EDdate='" + EDdate + "' where VNo ='" + VNo + "'", con);
                cmd.ExecuteNonQuery();
                

            }
            catch (Exception ex)
            {

            }

        }


        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string VNo = txtvehicleNo.Text;
            string Vname = DDLVehicleName.Text;
            string Vtype = DDLVehicleType.Text;
            string Ptype = DDLPermit.Text;
            string Pno = txtPermitNo.Text;
            string STdate = txtStartDate.Text;
            string EDdate = txtEndDate.Text;

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delete from VehicleDetails where VNo='" + VNo + "'", con);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }

        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(constr);
            string VNo = txtvehicleNo.Text;
            string Vname = DDLVehicleName.Text;
            string Vtype = DDLVehicleType.Text;
            string Ptype = DDLPermit.Text;
            string Pno = txtPermitNo.Text;
            string STdate = txtStartDate.Text;
            string EDdate = txtEndDate.Text;

            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from VehicleDetails where VNo='" + VNo + "'", con);
                cmd.ExecuteNonQuery();

            }
            catch (Exception ex)
            {

            }

        }
        public void clear_field()
        {

            txtvehicleNo.Text="";
            DDLVehicleType.Text = "";
            DDLVehicleName.Text = "";
            DDLPermit.Text = "";
            txtPermitNo.Text = "";
            txtStartDate.Text = "";
            txtEndDate.Text = "";


        }
        
    }
}