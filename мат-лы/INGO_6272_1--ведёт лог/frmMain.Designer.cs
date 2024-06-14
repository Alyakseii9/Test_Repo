namespace PCComm
{
    partial class frmMain
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
            this.label4 = new System.Windows.Forms.Label();
            this.cmdClose = new System.Windows.Forms.Button();
            this.cboStop = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cboParity = new System.Windows.Forms.ComboBox();
            this.Label1 = new System.Windows.Forms.Label();
            this.cboBaud = new System.Windows.Forms.ComboBox();
            this.cboPort = new System.Windows.Forms.ComboBox();
            this.cmdOpen = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.groupBox4 = new System.Windows.Forms.GroupBox();
            this.label36 = new System.Windows.Forms.Label();
            this.GroupBox1 = new System.Windows.Forms.GroupBox();
            this.radioButton10 = new System.Windows.Forms.RadioButton();
            this.rdoText = new System.Windows.Forms.RadioButton();
            this.textBox33 = new System.Windows.Forms.TextBox();
            this.textBox24 = new System.Windows.Forms.TextBox();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.label30 = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.rdoHex = new System.Windows.Forms.RadioButton();
            this.label17 = new System.Windows.Forms.Label();
            this.label16 = new System.Windows.Forms.Label();
            this.label15 = new System.Windows.Forms.Label();
            this.label14 = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.textBox12 = new System.Windows.Forms.TextBox();
            this.textBox11 = new System.Windows.Forms.TextBox();
            this.textBox10 = new System.Windows.Forms.TextBox();
            this.textBox9 = new System.Windows.Forms.TextBox();
            this.textBox8 = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.cboData = new System.Windows.Forms.ComboBox();
            this.timer1 = new System.Windows.Forms.Timer(this.components);
            this.rtbDisplay = new System.Windows.Forms.RichTextBox();
            this.groupBox2.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.groupBox4.SuspendLayout();
            this.GroupBox1.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // label4
            // 
            this.label4.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label4.Location = new System.Drawing.Point(0, -59);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(31, 22);
            this.label4.TabIndex = 18;
            this.label4.Text = "Стоп биты";
            this.label4.Visible = false;
            // 
            // cmdClose
            // 
            this.cmdClose.BackColor = System.Drawing.Color.LightYellow;
            this.cmdClose.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.cmdClose.Location = new System.Drawing.Point(15, 157);
            this.cmdClose.Name = "cmdClose";
            this.cmdClose.Size = new System.Drawing.Size(111, 32);
            this.cmdClose.TabIndex = 5;
            this.cmdClose.Text = "Закрыть порт";
            this.cmdClose.UseVisualStyleBackColor = false;
            this.cmdClose.Click += new System.EventHandler(this.cmdClose_Click);
            // 
            // cboStop
            // 
            this.cboStop.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cboStop.FormattingEnabled = true;
            this.cboStop.Location = new System.Drawing.Point(104, -29);
            this.cboStop.Name = "cboStop";
            this.cboStop.Size = new System.Drawing.Size(5, 24);
            this.cboStop.TabIndex = 13;
            this.cboStop.Visible = false;
            // 
            // label3
            // 
            this.label3.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.label3.Location = new System.Drawing.Point(93, -55);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(10, 10);
            this.label3.TabIndex = 17;
            this.label3.Text = "Паритет";
            this.label3.Visible = false;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.cboStop);
            this.groupBox2.Controls.Add(this.label3);
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.cboParity);
            this.groupBox2.Controls.Add(this.Label1);
            this.groupBox2.Controls.Add(this.cboBaud);
            this.groupBox2.Controls.Add(this.cboPort);
            this.groupBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.groupBox2.Location = new System.Drawing.Point(6, 6);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(121, 106);
            this.groupBox2.TabIndex = 6;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Опции";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 58);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(69, 16);
            this.label2.TabIndex = 16;
            this.label2.Text = "Скорость";
            // 
            // cboParity
            // 
            this.cboParity.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cboParity.FormattingEnabled = true;
            this.cboParity.Location = new System.Drawing.Point(104, -45);
            this.cboParity.Name = "cboParity";
            this.cboParity.Size = new System.Drawing.Size(5, 24);
            this.cboParity.TabIndex = 12;
            this.cboParity.Visible = false;
            // 
            // Label1
            // 
            this.Label1.AutoSize = true;
            this.Label1.Location = new System.Drawing.Point(6, 18);
            this.Label1.Name = "Label1";
            this.Label1.Size = new System.Drawing.Size(92, 16);
            this.Label1.TabIndex = 15;
            this.Label1.Text = "Выбор порта";
            // 
            // cboBaud
            // 
            this.cboBaud.FormattingEnabled = true;
            this.cboBaud.Items.AddRange(new object[] {
            "300",
            "600",
            "1200",
            "2400",
            "4800",
            "9600",
            "14400",
            "28800",
            "36000",
            "115000"});
            this.cboBaud.Location = new System.Drawing.Point(9, 74);
            this.cboBaud.Name = "cboBaud";
            this.cboBaud.Size = new System.Drawing.Size(89, 24);
            this.cboBaud.TabIndex = 11;
            // 
            // cboPort
            // 
            this.cboPort.FormattingEnabled = true;
            this.cboPort.Location = new System.Drawing.Point(9, 34);
            this.cboPort.Name = "cboPort";
            this.cboPort.Size = new System.Drawing.Size(89, 24);
            this.cboPort.TabIndex = 10;
            // 
            // cmdOpen
            // 
            this.cmdOpen.BackColor = System.Drawing.Color.LightYellow;
            this.cmdOpen.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.cmdOpen.Location = new System.Drawing.Point(15, 118);
            this.cmdOpen.Name = "cmdOpen";
            this.cmdOpen.Size = new System.Drawing.Size(112, 33);
            this.cmdOpen.TabIndex = 8;
            this.cmdOpen.Text = "Открыть порт";
            this.cmdOpen.UseVisualStyleBackColor = false;
            this.cmdOpen.Click += new System.EventHandler(this.cmdOpen_Click);
            // 
            // button1
            // 
            this.button1.BackColor = System.Drawing.Color.LightYellow;
            this.button1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.button1.Location = new System.Drawing.Point(15, 203);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(116, 30);
            this.button1.TabIndex = 9;
            this.button1.Text = "Выход";
            this.button1.UseVisualStyleBackColor = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // tabControl1
            // 
            this.tabControl1.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.tabControl1.Location = new System.Drawing.Point(1, 93);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(777, 310);
            this.tabControl1.TabIndex = 10;
            // 
            // tabPage1
            // 
            this.tabPage1.AutoScrollMinSize = new System.Drawing.Size(800, 280);
            this.tabPage1.BackColor = System.Drawing.Color.LemonChiffon;
            this.tabPage1.Controls.Add(this.groupBox4);
            this.tabPage1.Controls.Add(this.cboData);
            this.tabPage1.Controls.Add(this.button1);
            this.tabPage1.Controls.Add(this.groupBox2);
            this.tabPage1.Controls.Add(this.label4);
            this.tabPage1.Controls.Add(this.cmdClose);
            this.tabPage1.Controls.Add(this.cmdOpen);
            this.tabPage1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.tabPage1.Location = new System.Drawing.Point(4, 27);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(769, 279);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "6272--INGO";
            // 
            // groupBox4
            // 
            this.groupBox4.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)
                        | System.Windows.Forms.AnchorStyles.Left)
                        | System.Windows.Forms.AnchorStyles.Right)));
            this.groupBox4.BackColor = System.Drawing.Color.LemonChiffon;
            this.groupBox4.Controls.Add(this.label36);
            this.groupBox4.Controls.Add(this.GroupBox1);
            this.groupBox4.Controls.Add(this.textBox33);
            this.groupBox4.Controls.Add(this.textBox24);
            this.groupBox4.Controls.Add(this.textBox2);
            this.groupBox4.Controls.Add(this.label30);
            this.groupBox4.Controls.Add(this.groupBox3);
            this.groupBox4.Controls.Add(this.label17);
            this.groupBox4.Controls.Add(this.label16);
            this.groupBox4.Controls.Add(this.label15);
            this.groupBox4.Controls.Add(this.label14);
            this.groupBox4.Controls.Add(this.label13);
            this.groupBox4.Controls.Add(this.label6);
            this.groupBox4.Controls.Add(this.textBox12);
            this.groupBox4.Controls.Add(this.textBox11);
            this.groupBox4.Controls.Add(this.textBox10);
            this.groupBox4.Controls.Add(this.textBox9);
            this.groupBox4.Controls.Add(this.textBox8);
            this.groupBox4.Controls.Add(this.textBox1);
            this.groupBox4.Controls.Add(this.label7);
            this.groupBox4.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.groupBox4.Location = new System.Drawing.Point(137, 3);
            this.groupBox4.Name = "groupBox4";
            this.groupBox4.Size = new System.Drawing.Size(624, 275);
            this.groupBox4.TabIndex = 20;
            this.groupBox4.TabStop = false;
            // 
            // label36
            // 
            this.label36.AutoSize = true;
            this.label36.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label36.Location = new System.Drawing.Point(189, 68);
            this.label36.Name = "label36";
            this.label36.Size = new System.Drawing.Size(83, 18);
            this.label36.TabIndex = 58;
            this.label36.Text = "версия ПО";
            // 
            // GroupBox1
            // 
            this.GroupBox1.AutoSize = true;
            this.GroupBox1.Controls.Add(this.radioButton10);
            this.GroupBox1.Controls.Add(this.rdoText);
            this.GroupBox1.Location = new System.Drawing.Point(507, 137);
            this.GroupBox1.Name = "GroupBox1";
            this.GroupBox1.Size = new System.Drawing.Size(76, 93);
            this.GroupBox1.TabIndex = 4;
            this.GroupBox1.TabStop = false;
            this.GroupBox1.Visible = false;
            // 
            // radioButton10
            // 
            this.radioButton10.AutoSize = true;
            this.radioButton10.Location = new System.Drawing.Point(6, 44);
            this.radioButton10.Name = "radioButton10";
            this.radioButton10.Size = new System.Drawing.Size(52, 22);
            this.radioButton10.TabIndex = 3;
            this.radioButton10.TabStop = true;
            this.radioButton10.Text = "Hex";
            this.radioButton10.UseVisualStyleBackColor = true;
            // 
            // rdoText
            // 
            this.rdoText.AutoSize = true;
            this.rdoText.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.rdoText.Location = new System.Drawing.Point(6, 18);
            this.rdoText.Name = "rdoText";
            this.rdoText.Size = new System.Drawing.Size(64, 20);
            this.rdoText.TabIndex = 2;
            this.rdoText.TabStop = true;
            this.rdoText.Text = "Текст";
            this.rdoText.UseVisualStyleBackColor = true;
            // 
            // textBox33
            // 
            this.textBox33.BackColor = System.Drawing.SystemColors.Window;
            this.textBox33.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox33.Location = new System.Drawing.Point(304, 233);
            this.textBox33.Name = "textBox33";
            this.textBox33.ReadOnly = true;
            this.textBox33.Size = new System.Drawing.Size(89, 24);
            this.textBox33.TabIndex = 53;
            // 
            // textBox24
            // 
            this.textBox24.Location = new System.Drawing.Point(304, 205);
            this.textBox24.Name = "textBox24";
            this.textBox24.Size = new System.Drawing.Size(89, 24);
            this.textBox24.TabIndex = 51;
            // 
            // textBox2
            // 
            this.textBox2.BackColor = System.Drawing.SystemColors.Window;
            this.textBox2.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox2.Location = new System.Drawing.Point(304, 37);
            this.textBox2.Name = "textBox2";
            this.textBox2.ReadOnly = true;
            this.textBox2.Size = new System.Drawing.Size(89, 24);
            this.textBox2.TabIndex = 1;
            // 
            // label30
            // 
            this.label30.AutoSize = true;
            this.label30.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label30.Location = new System.Drawing.Point(95, 96);
            this.label30.Name = "label30";
            this.label30.Size = new System.Drawing.Size(177, 18);
            this.label30.TabIndex = 47;
            this.label30.Text = "состояние обнаружения";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.rdoHex);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.groupBox3.Location = new System.Drawing.Point(635, 51);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(11, 13);
            this.groupBox3.TabIndex = 7;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Режим";
            this.groupBox3.Visible = false;
            // 
            // rdoHex
            // 
            this.rdoHex.AutoSize = true;
            this.rdoHex.Enabled = false;
            this.rdoHex.Location = new System.Drawing.Point(6, 37);
            this.rdoHex.Name = "rdoHex";
            this.rdoHex.Size = new System.Drawing.Size(50, 20);
            this.rdoHex.TabIndex = 0;
            this.rdoHex.TabStop = true;
            this.rdoHex.Text = "Hex";
            this.rdoHex.UseVisualStyleBackColor = true;
            this.rdoHex.Visible = false;
            // 
            // label17
            // 
            this.label17.AutoSize = true;
            this.label17.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label17.Location = new System.Drawing.Point(131, 236);
            this.label17.Name = "label17";
            this.label17.Size = new System.Drawing.Size(141, 18);
            this.label17.TabIndex = 29;
            this.label17.Text = "состояние датчика";
            // 
            // label16
            // 
            this.label16.AutoSize = true;
            this.label16.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label16.Location = new System.Drawing.Point(143, 205);
            this.label16.Name = "label16";
            this.label16.Size = new System.Drawing.Size(129, 18);
            this.label16.TabIndex = 28;
            this.label16.Text = "высота 3-го слоя";
            // 
            // label15
            // 
            this.label15.AutoSize = true;
            this.label15.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label15.Location = new System.Drawing.Point(143, 180);
            this.label15.Name = "label15";
            this.label15.Size = new System.Drawing.Size(129, 18);
            this.label15.TabIndex = 27;
            this.label15.Text = "высота 2-го слоя";
            // 
            // label14
            // 
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label14.Location = new System.Drawing.Point(148, 124);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(124, 18);
            this.label14.TabIndex = 26;
            this.label14.Text = "предупреждения";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label13.Location = new System.Drawing.Point(143, 152);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(129, 18);
            this.label13.TabIndex = 25;
            this.label13.Text = "высота 1-го слоя";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label6.Location = new System.Drawing.Point(73, 12);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(199, 18);
            this.label6.TabIndex = 18;
            this.label6.Text = "идентификатор сообщения";
            // 
            // textBox12
            // 
            this.textBox12.BackColor = System.Drawing.SystemColors.Window;
            this.textBox12.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox12.Location = new System.Drawing.Point(304, 177);
            this.textBox12.Name = "textBox12";
            this.textBox12.ReadOnly = true;
            this.textBox12.Size = new System.Drawing.Size(89, 24);
            this.textBox12.TabIndex = 11;
            // 
            // textBox11
            // 
            this.textBox11.BackColor = System.Drawing.SystemColors.Window;
            this.textBox11.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox11.Location = new System.Drawing.Point(304, 149);
            this.textBox11.Name = "textBox11";
            this.textBox11.ReadOnly = true;
            this.textBox11.Size = new System.Drawing.Size(89, 24);
            this.textBox11.TabIndex = 10;
            // 
            // textBox10
            // 
            this.textBox10.BackColor = System.Drawing.SystemColors.Window;
            this.textBox10.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox10.Location = new System.Drawing.Point(304, 121);
            this.textBox10.Name = "textBox10";
            this.textBox10.ReadOnly = true;
            this.textBox10.Size = new System.Drawing.Size(89, 24);
            this.textBox10.TabIndex = 9;
            // 
            // textBox9
            // 
            this.textBox9.BackColor = System.Drawing.SystemColors.Window;
            this.textBox9.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox9.Location = new System.Drawing.Point(304, 93);
            this.textBox9.Name = "textBox9";
            this.textBox9.ReadOnly = true;
            this.textBox9.Size = new System.Drawing.Size(89, 24);
            this.textBox9.TabIndex = 8;
            // 
            // textBox8
            // 
            this.textBox8.BackColor = System.Drawing.SystemColors.Window;
            this.textBox8.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox8.Location = new System.Drawing.Point(304, 65);
            this.textBox8.Name = "textBox8";
            this.textBox8.ReadOnly = true;
            this.textBox8.Size = new System.Drawing.Size(89, 24);
            this.textBox8.TabIndex = 7;
            // 
            // textBox1
            // 
            this.textBox1.BackColor = System.Drawing.SystemColors.Window;
            this.textBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.textBox1.Location = new System.Drawing.Point(304, 9);
            this.textBox1.Name = "textBox1";
            this.textBox1.ReadOnly = true;
            this.textBox1.Size = new System.Drawing.Size(89, 24);
            this.textBox1.TabIndex = 0;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.label7.Location = new System.Drawing.Point(73, 40);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(199, 18);
            this.label7.TabIndex = 19;
            this.label7.Text = "идентификатор устройства";
            // 
            // cboData
            // 
            this.cboData.Anchor = System.Windows.Forms.AnchorStyles.None;
            this.cboData.FormattingEnabled = true;
            this.cboData.Items.AddRange(new object[] {
            "7",
            "8",
            "9"});
            this.cboData.Location = new System.Drawing.Point(38, 40);
            this.cboData.Name = "cboData";
            this.cboData.Size = new System.Drawing.Size(14, 26);
            this.cboData.TabIndex = 19;
            this.cboData.Visible = false;
            // 
            // timer1
            // 
            this.timer1.Interval = 1000;
            this.timer1.Tick += new System.EventHandler(this.Timer1_Tick);
            // 
            // rtbDisplay
            // 
            this.rtbDisplay.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.rtbDisplay.ForeColor = System.Drawing.SystemColors.WindowText;
            this.rtbDisplay.Location = new System.Drawing.Point(1, 1);
            this.rtbDisplay.Name = "rtbDisplay";
            this.rtbDisplay.Size = new System.Drawing.Size(765, 86);
            this.rtbDisplay.TabIndex = 13;
            this.rtbDisplay.Text = "";
            // 
            // frmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(777, 403);
            this.Controls.Add(this.rtbDisplay);
            this.Controls.Add(this.tabControl1);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
            this.Name = "frmMain";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.FormClosing += new System.Windows.Forms.FormClosingEventHandler(this.frmMain_FormClosing);
            this.Load += new System.EventHandler(this.frmMain_Load);
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.groupBox4.ResumeLayout(false);
            this.groupBox4.PerformLayout();
            this.GroupBox1.ResumeLayout(false);
            this.GroupBox1.PerformLayout();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button cmdClose;
        private System.Windows.Forms.ComboBox cboStop;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cboParity;
        private System.Windows.Forms.Label Label1;
        private System.Windows.Forms.ComboBox cboBaud;
        private System.Windows.Forms.ComboBox cboPort;
        private System.Windows.Forms.Button cmdOpen;
        private System.Windows.Forms.Button button1;
        //private System.IO.Ports.SerialPort serialPort2;
        //private System.IO.Ports.SerialPort serialPort3;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.Timer timer1;
        private System.Windows.Forms.RichTextBox rtbDisplay;
        private System.Windows.Forms.ComboBox cboData;
        private System.Windows.Forms.GroupBox groupBox4;
        private System.Windows.Forms.Label label36;
        private System.Windows.Forms.GroupBox GroupBox1;
        private System.Windows.Forms.RadioButton radioButton10;
        private System.Windows.Forms.RadioButton rdoText;
        private System.Windows.Forms.TextBox textBox33;
        private System.Windows.Forms.TextBox textBox24;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.Label label30;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.RadioButton rdoHex;
        private System.Windows.Forms.Label label17;
        private System.Windows.Forms.Label label16;
        private System.Windows.Forms.Label label15;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox textBox12;
        private System.Windows.Forms.TextBox textBox11;
        private System.Windows.Forms.TextBox textBox10;
        private System.Windows.Forms.TextBox textBox9;
        private System.Windows.Forms.TextBox textBox8;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label7;
    }
}