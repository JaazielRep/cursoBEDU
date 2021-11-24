using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace WindowsFormsApplication1
{
    public partial class Form1 : Form
    {
        private SqlConnection MoConn ; 

        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            // TODO: This line of code loads data into the 'baseAero210315DataSet4.TodosVendedores' table. You can move, or remove it, as needed.
            this.todosVendedoresTableAdapter.Fill(this.baseAero210315DataSet4.TodosVendedores);
            // TODO: This line of code loads data into the 'baseAero210315DataSet3.TodosClientes' table. You can move, or remove it, as needed.
            this.todosClientesTableAdapter.Fill(this.baseAero210315DataSet3.TodosClientes);
            

        }

        private void btnIngresaVenta_Click(object sender, EventArgs e)
        {
            IngresaVenta();
        }

        private void IngresaVenta()
        {

            try{


            CrearConexion();
            MoConn.Open();

            SqlCommand LoCommando = MoConn.CreateCommand();
            LoCommando.CommandType = CommandType.StoredProcedure;
            LoCommando.CommandText = "IngresaVenta";
            
            //agregar paràmetros
            SqlParameter LoParam = new SqlParameter("@inIdCliente"
                                                    , cboCliente.SelectedValue);
            LoCommando.Parameters.Add(LoParam);
            LoParam = new SqlParameter("@inIdVendedor", cboVendedor.SelectedValue);
             LoCommando.Parameters.Add(LoParam);
            LoParam = new SqlParameter("@dtFechaVuelo", dtpFechaVuelo.Value.ToString("yyyyMMdd"));
             LoCommando.Parameters.Add(LoParam);
            LoParam = new SqlParameter("@inNumAsientosVender"
                                                       , txtNumAsientos.Text);
             LoCommando.Parameters.Add(LoParam);


            int i = LoCommando.ExecuteNonQuery();

            MessageBox.Show("hola");

                 }

            catch (Exception e) { MessageBox.Show(e.Message); }

            finally{ MoConn.Close();}



        }

        private void CrearConexion()
        {
            if (MoConn != null)
                return;
            MoConn = new SqlConnection();
            SqlConnectionStringBuilder LoConexion = new SqlConnectionStringBuilder();
            LoConexion.DataSource = @"AULA-E4-PC9\MSSQLSERVER2"; //servidor
            LoConexion.InitialCatalog = "BaseAero210315"; //BD
            LoConexion.UserID = "sa"; //Usuario
            LoConexion.Password = "cic" ; //password

            MoConn.ConnectionString = LoConexion.ConnectionString;
        }

        private void cboCliente_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
