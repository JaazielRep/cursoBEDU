namespace WindowsFormsApplication1
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            this.cboCliente = new System.Windows.Forms.ComboBox();
            this.cboVendedor = new System.Windows.Forms.ComboBox();
            this.dtpFechaVuelo = new System.Windows.Forms.DateTimePicker();
            this.txtNumAsientos = new System.Windows.Forms.TextBox();
            this.lblCliente = new System.Windows.Forms.Label();
            this.lblVendedor = new System.Windows.Forms.Label();
            this.lblFechaVuelo = new System.Windows.Forms.Label();
            this.lblNumAsientos = new System.Windows.Forms.Label();
            this.btnIngresaVenta = new System.Windows.Forms.Button();
            this.baseAero210315DataSet = new WindowsFormsApplication1.BaseAero210315DataSet();
            this.baseAero210315DataSetBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.baseAero210315DataSet1 = new WindowsFormsApplication1.BaseAero210315DataSet1();
            this.baseAero210315DataSet1BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.baseAero210315DataSet2 = new WindowsFormsApplication1.BaseAero210315DataSet2();
            this.baseAero210315DataSet2BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.baseAero210315DataSet3 = new WindowsFormsApplication1.BaseAero210315DataSet3();
            this.todosClientesBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.todosClientesTableAdapter = new WindowsFormsApplication1.BaseAero210315DataSet3TableAdapters.TodosClientesTableAdapter();
            this.baseAero210315DataSet4 = new WindowsFormsApplication1.BaseAero210315DataSet4();
            this.todosVendedoresBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.todosVendedoresTableAdapter = new WindowsFormsApplication1.BaseAero210315DataSet4TableAdapters.TodosVendedoresTableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSetBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet1BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet2)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet2BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet3)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.todosClientesBindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet4)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.todosVendedoresBindingSource)).BeginInit();
            this.SuspendLayout();
            // 
            // cboCliente
            // 
            this.cboCliente.DataSource = this.todosClientesBindingSource;
            this.cboCliente.DisplayMember = "cliente";
            this.cboCliente.FormattingEnabled = true;
            this.cboCliente.Location = new System.Drawing.Point(143, 36);
            this.cboCliente.Name = "cboCliente";
            this.cboCliente.Size = new System.Drawing.Size(200, 21);
            this.cboCliente.TabIndex = 0;
            this.cboCliente.ValueMember = "clienteId";
            this.cboCliente.SelectedIndexChanged += new System.EventHandler(this.cboCliente_SelectedIndexChanged);
            // 
            // cboVendedor
            // 
            this.cboVendedor.DataSource = this.todosVendedoresBindingSource;
            this.cboVendedor.DisplayMember = "cliente";
            this.cboVendedor.FormattingEnabled = true;
            this.cboVendedor.Location = new System.Drawing.Point(143, 63);
            this.cboVendedor.Name = "cboVendedor";
            this.cboVendedor.Size = new System.Drawing.Size(200, 21);
            this.cboVendedor.TabIndex = 1;
            this.cboVendedor.ValueMember = "vendedorId";
            // 
            // dtpFechaVuelo
            // 
            this.dtpFechaVuelo.Location = new System.Drawing.Point(143, 90);
            this.dtpFechaVuelo.Name = "dtpFechaVuelo";
            this.dtpFechaVuelo.Size = new System.Drawing.Size(200, 20);
            this.dtpFechaVuelo.TabIndex = 2;
            // 
            // txtNumAsientos
            // 
            this.txtNumAsientos.Location = new System.Drawing.Point(143, 116);
            this.txtNumAsientos.Name = "txtNumAsientos";
            this.txtNumAsientos.Size = new System.Drawing.Size(100, 20);
            this.txtNumAsientos.TabIndex = 3;
            // 
            // lblCliente
            // 
            this.lblCliente.AutoSize = true;
            this.lblCliente.Location = new System.Drawing.Point(48, 39);
            this.lblCliente.Name = "lblCliente";
            this.lblCliente.Size = new System.Drawing.Size(39, 13);
            this.lblCliente.TabIndex = 4;
            this.lblCliente.Text = "Cliente";
            // 
            // lblVendedor
            // 
            this.lblVendedor.AutoSize = true;
            this.lblVendedor.Location = new System.Drawing.Point(48, 66);
            this.lblVendedor.Name = "lblVendedor";
            this.lblVendedor.Size = new System.Drawing.Size(53, 13);
            this.lblVendedor.TabIndex = 5;
            this.lblVendedor.Text = "Vendedor";
            // 
            // lblFechaVuelo
            // 
            this.lblFechaVuelo.AutoSize = true;
            this.lblFechaVuelo.Location = new System.Drawing.Point(48, 96);
            this.lblFechaVuelo.Name = "lblFechaVuelo";
            this.lblFechaVuelo.Size = new System.Drawing.Size(67, 13);
            this.lblFechaVuelo.TabIndex = 6;
            this.lblFechaVuelo.Text = "Fecha Vuelo";
            // 
            // lblNumAsientos
            // 
            this.lblNumAsientos.AutoSize = true;
            this.lblNumAsientos.Location = new System.Drawing.Point(48, 119);
            this.lblNumAsientos.Name = "lblNumAsientos";
            this.lblNumAsientos.Size = new System.Drawing.Size(47, 13);
            this.lblNumAsientos.TabIndex = 7;
            this.lblNumAsientos.Text = "Asientos";
            // 
            // btnIngresaVenta
            // 
            this.btnIngresaVenta.Location = new System.Drawing.Point(143, 197);
            this.btnIngresaVenta.Name = "btnIngresaVenta";
            this.btnIngresaVenta.Size = new System.Drawing.Size(114, 23);
            this.btnIngresaVenta.TabIndex = 8;
            this.btnIngresaVenta.Text = "Ingresa Venta";
            this.btnIngresaVenta.UseVisualStyleBackColor = true;
            this.btnIngresaVenta.Click += new System.EventHandler(this.btnIngresaVenta_Click);
            // 
            // baseAero210315DataSet
            // 
            this.baseAero210315DataSet.DataSetName = "BaseAero210315DataSet";
            this.baseAero210315DataSet.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // baseAero210315DataSetBindingSource
            // 
            this.baseAero210315DataSetBindingSource.DataSource = this.baseAero210315DataSet;
            this.baseAero210315DataSetBindingSource.Position = 0;
            // 
            // baseAero210315DataSet1
            // 
            this.baseAero210315DataSet1.DataSetName = "BaseAero210315DataSet1";
            this.baseAero210315DataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // baseAero210315DataSet1BindingSource
            // 
            this.baseAero210315DataSet1BindingSource.DataSource = this.baseAero210315DataSet1;
            this.baseAero210315DataSet1BindingSource.Position = 0;
            // 
            // baseAero210315DataSet2
            // 
            this.baseAero210315DataSet2.DataSetName = "BaseAero210315DataSet2";
            this.baseAero210315DataSet2.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // baseAero210315DataSet2BindingSource
            // 
            this.baseAero210315DataSet2BindingSource.DataSource = this.baseAero210315DataSet2;
            this.baseAero210315DataSet2BindingSource.Position = 0;
            // 
            // baseAero210315DataSet3
            // 
            this.baseAero210315DataSet3.DataSetName = "BaseAero210315DataSet3";
            this.baseAero210315DataSet3.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // todosClientesBindingSource
            // 
            this.todosClientesBindingSource.DataMember = "TodosClientes";
            this.todosClientesBindingSource.DataSource = this.baseAero210315DataSet3;
            // 
            // todosClientesTableAdapter
            // 
            this.todosClientesTableAdapter.ClearBeforeFill = true;
            // 
            // baseAero210315DataSet4
            // 
            this.baseAero210315DataSet4.DataSetName = "BaseAero210315DataSet4";
            this.baseAero210315DataSet4.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
            // 
            // todosVendedoresBindingSource
            // 
            this.todosVendedoresBindingSource.DataMember = "TodosVendedores";
            this.todosVendedoresBindingSource.DataSource = this.baseAero210315DataSet4;
            // 
            // todosVendedoresTableAdapter
            // 
            this.todosVendedoresTableAdapter.ClearBeforeFill = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(390, 262);
            this.Controls.Add(this.btnIngresaVenta);
            this.Controls.Add(this.lblNumAsientos);
            this.Controls.Add(this.lblFechaVuelo);
            this.Controls.Add(this.lblVendedor);
            this.Controls.Add(this.lblCliente);
            this.Controls.Add(this.txtNumAsientos);
            this.Controls.Add(this.dtpFechaVuelo);
            this.Controls.Add(this.cboVendedor);
            this.Controls.Add(this.cboCliente);
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load);
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSetBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet1BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet2)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet2BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet3)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.todosClientesBindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.baseAero210315DataSet4)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.todosVendedoresBindingSource)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.ComboBox cboCliente;
        private System.Windows.Forms.ComboBox cboVendedor;
        private System.Windows.Forms.DateTimePicker dtpFechaVuelo;
        private System.Windows.Forms.TextBox txtNumAsientos;
        private System.Windows.Forms.Label lblCliente;
        private System.Windows.Forms.Label lblVendedor;
        private System.Windows.Forms.Label lblFechaVuelo;
        private System.Windows.Forms.Label lblNumAsientos;
        private System.Windows.Forms.Button btnIngresaVenta;
        private System.Windows.Forms.BindingSource baseAero210315DataSet1BindingSource;
        private BaseAero210315DataSet1 baseAero210315DataSet1;
        private System.Windows.Forms.BindingSource baseAero210315DataSet2BindingSource;
        private BaseAero210315DataSet2 baseAero210315DataSet2;
        private BaseAero210315DataSet baseAero210315DataSet;
        private System.Windows.Forms.BindingSource baseAero210315DataSetBindingSource;
        private BaseAero210315DataSet3 baseAero210315DataSet3;
        private System.Windows.Forms.BindingSource todosClientesBindingSource;
        private BaseAero210315DataSet3TableAdapters.TodosClientesTableAdapter todosClientesTableAdapter;
        private BaseAero210315DataSet4 baseAero210315DataSet4;
        private System.Windows.Forms.BindingSource todosVendedoresBindingSource;
        private BaseAero210315DataSet4TableAdapters.TodosVendedoresTableAdapter todosVendedoresTableAdapter;
        
       
    }
}

