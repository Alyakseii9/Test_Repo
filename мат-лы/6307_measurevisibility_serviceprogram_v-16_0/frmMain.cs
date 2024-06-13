using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using PCComm;
using System.Threading;
using System.IO.Ports;
using System.Configuration;
using System.Windows;
using NLog;
using NLog.Targets;
using NLog.Config;

namespace PCComm
{
    public partial class frmMain : Form, IDrawCharts
    {
        //      diagram childForm = null;
        //       public diagram diagr;
        // public Matr ma;

        private const int Hours = 6; // number of hours in charts
        public byte[] comBuffer { get; set; }
        public byte[] comBuffeer { get; set; }
        public byte[] commBuffer { get; set; }
        //public byte[] ommBu { get; set; }//--------------------��� �������

        public byte[] commBuf { get; set; }
        public int bytes { get; set; }
        public double summatrix { get; set; }
        //public int rangmatr { get; set; }
        public int labelread = 0;
        public string sa { get; set; }
        //public string sasa { get; set; }
        public int flag_peredatchi = 0, schetchiktimer = 0;
        public int mattrr,flagcolor = 0,label63marker=0;
        public double plus = 160;

        public string commBufferr { get; set; }
        public string msg { get; set; }
        public string mglobal { get; set; }

        public string packet_string { get; set; }
        //private SerialPort port;
        CommunicationManager comm;
        Shag_engine shaeng = new Shag_engine();
        string transType = string.Empty;

        
       // System.Threading.Timer sendTimer;//************************************************************
        public frmMain()
        {
            comm = new CommunicationManager(this);
            Logger logger = LogManager.GetCurrentClassLogger();//----���----���----���----���----���----���----���----���----���----���----���----���
            InitializeComponent();
            this.IsMdiContainer = true;
            fotoizlutchatel.Checked = true;
            izlutchatel.Checked = true;
            ystizluradbat.Checked = true;
            radioButton1.Checked = true;
            matrixbox.Checked = true;
            transmit_engine.Checked = true;
          }
        //*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*----������ �� ����-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
    /*    private static readonly NLog.Logger Logger = NLog.LogManager.GetCurrentClassLogger();

        public void Main()
        {          
            // Step 1. Create configuration object 
            var config = new LoggingConfiguration();

            // Step 2. Create targets
            var consoleTarget = new ColoredConsoleTarget("target1")
            {
                Layout = @"${date:format=HH\:mm\:ss} ${level} ${message} ${exception}"
            };
            config.AddTarget(consoleTarget);
            var fileTarget = new FileTarget("target2")
            {
                FileName = "${basedir}/file.txt",
                Layout = "${longdate} ${level} ${message}  ${exception}"
            };
            config.AddTarget(fileTarget);


            // Step 3. Define rules
            config.AddRuleForOneLevel(LogLevel.Error, fileTarget); // only errors to file
            config.AddRuleForAllLevels(consoleTarget); // all to console

            // Step 4. Activate the configuration
            LogManager.Configuration = config;

            // Example usage
            Logger logger = LogManager.GetLogger("Example");
            logger.Trace("trace log message");
            logger.Debug("debug log message");
            logger.Info("info log message");
            logger.Warn("warn log message");
            logger.Error("error log message");
            logger.Fatal("fatal log message");

            //Example of logging exceptions

            try
            {

            }
            catch (Exception ex)
            {
                logger.Error(ex, "ow noos!");
                throw;
            }
            
            try
            {
                Logger.Info("Hello world");
                System.Console.ReadKey();
            }
            catch (Exception ex)
            {
                Logger.Error(ex, "Goodbye cruel world");
            }
        }
        */
        //*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-*-
        public byte[] HexToByte(string msg)
        {
            //remove any spaces from the string           
            byte[] comBuffer = new byte[msg.Length];
            int[] comBufferr = new int[msg.Length];
            //loop through the length of the provided string

            for (int i = 0; i < msg.Length; i += 1)
                comBuffer[i] = (byte)Convert.ToByte(msg.Substring(i, 1), 16);
            for (int i = 0; i < msg.Length; i += 1)
                comBuffer[i] = (byte)Convert.ToByte(comBuffer[i] + 30);

            return comBuffer;
        }

        public void LoadSettings()
        {
            ToolStripManager.LoadSettings(this);

            this.cboPort.Text = Properties.Settings.Default.PortName;
            this.cboBaud.Text = Properties.Settings.Default.BaudRate;
            this.Width = Properties.Settings.Default.FormWidth;      
            this.Height = Properties.Settings.Default.FormHeight;    
            this.textBox49.Text = Properties.Settings.Default.userstringSetting;
        }

        public void SaveSettings()               
        {                                        
            // Save the location of the ToolStrip
            ToolStripManager.SaveSettings(this); 

            // Save changed settings
            Properties.Settings.Default.Save();  
        }                                        

        private void Timer1_Tick(object Sender, EventArgs e)
        {
            comm.tchastotatoka = textBox49.Text;
            // Set the caption to the current time.  
            Label1.Text = DateTime.Now.ToString();
            //  cmdSend_Click_1 += new EventHandler(cmdSend_Click_1);
            schetchiktimer += 1;
            if (schetchiktimer == 120 & comm.flag_priema!=1) 
            { textBox1.BackColor = Color.Yellow;
              textBox2.BackColor = Color.Yellow;
              textBox3.BackColor = Color.Yellow;
              textBox4.BackColor = Color.Yellow;
              textBox5.BackColor = Color.Yellow;
              textBox6.BackColor = Color.Yellow;
              textBox7.BackColor = Color.Yellow;
              textBox8.BackColor = Color.Yellow;
              textBox9.BackColor = Color.Yellow;
              textBox10.BackColor = Color.Yellow;
              textBox11.BackColor = Color.Yellow;
              textBox12.BackColor = Color.Yellow;
              textBox13.BackColor = Color.Yellow;
              textBox15.BackColor = Color.Yellow;
              textBox16.BackColor = Color.Yellow;
              textBox17.BackColor = Color.Yellow;
              textBox18.BackColor = Color.Yellow;
              textBox19.BackColor = Color.Yellow;
              textBox20.BackColor = Color.Yellow;
              textBox21.BackColor = Color.Yellow;
              textBox22.BackColor = Color.Yellow;
              textBox23.BackColor = Color.Yellow;
              textBox24.BackColor = Color.Yellow;
              textBox27.BackColor = Color.Yellow;//---��� �����������
              textBox28.BackColor = Color.Yellow;//---��� �����������
              textBox29.BackColor = Color.Yellow;//---��� �����������
              textBox30.BackColor = Color.Yellow;//---��� �����������
              textBox31.BackColor = Color.Yellow;
              textBox33.BackColor = Color.Yellow;
              textBox34.BackColor = Color.Yellow;
              textBox35.BackColor = Color.Yellow;
              textBox36.BackColor = Color.Yellow;
              textBox37.BackColor = Color.Yellow;//---��� �����������
              textBox38.BackColor = Color.Yellow;
              textBox39.BackColor = Color.Yellow;
              textBox40.BackColor = Color.Yellow;
              textBox42.BackColor = Color.Yellow;
              textBox43.BackColor = Color.Yellow;
              textBox44.BackColor = Color.Yellow;
              textBox45.BackColor = Color.Yellow;
              textBox48.BackColor = Color.Yellow;
              textBox50.BackColor = Color.Yellow;//---��� �����������
              textBox51.BackColor = Color.Yellow;
                textBox61.BackColor = Color.Yellow;
                textBox62.BackColor = Color.Yellow;
                textBox63.BackColor = Color.Yellow;
                textBox64.BackColor = Color.Yellow;
                textBox65.BackColor = Color.Yellow;
                cboPort.BackColor = Color.Yellow;
              cboBaud.BackColor = Color.Yellow;
              schetchiktimer = 0;
              comm.flag_priema = 0;
            };
            if (comm.flag_priema == 1 & schetchiktimer < 120)
            {
                textBox1.BackColor = Color.White;
                textBox2.BackColor = Color.White;
                textBox3.BackColor = Color.White;
                textBox4.BackColor = Color.White;
                textBox5.BackColor = Color.White;
                textBox6.BackColor = Color.White;
                textBox7.BackColor = Color.White;
                textBox8.BackColor = Color.White;
                textBox9.BackColor = Color.White;
                textBox10.BackColor = Color.White;
                textBox11.BackColor = Color.White;
                textBox12.BackColor = Color.White;
                textBox13.BackColor = Color.White;
                textBox15.BackColor = Color.White;
                textBox16.BackColor = Color.White;
                textBox17.BackColor = Color.White;
                textBox18.BackColor = Color.White;
                textBox19.BackColor = Color.White;
                textBox20.BackColor = Color.White;
                textBox21.BackColor = Color.White;
                textBox22.BackColor = Color.White;
                textBox23.BackColor = Color.White;
                textBox24.BackColor = Color.White;
                textBox27.BackColor = Color.White;//---��� �����������
                textBox28.BackColor = Color.White;//---��� �����������
                textBox29.BackColor = Color.White;//---��� �����������
                textBox30.BackColor = Color.White;//---��� �����������
                textBox31.BackColor = Color.White;
                textBox33.BackColor = Color.White;
                textBox34.BackColor = Color.White;
                textBox35.BackColor = Color.White;
                textBox36.BackColor = Color.White;
                textBox37.BackColor = Color.White;//---��� �����������
                textBox38.BackColor = Color.White;
                textBox39.BackColor = Color.White;
                textBox40.BackColor = Color.White;
                textBox42.BackColor = Color.White;
                textBox43.BackColor = Color.White;
                textBox44.BackColor = Color.White;
                textBox45.BackColor = Color.White;
                textBox48.BackColor = Color.White;
                textBox50.BackColor = Color.White;//---��� �����������
                textBox51.BackColor = Color.White;
                textBox61.BackColor = Color.White;
                textBox62.BackColor = Color.White;
                textBox63.BackColor = Color.White;
                textBox64.BackColor = Color.White;
                textBox65.BackColor = Color.White;
                cboPort.BackColor = Color.White;
                cboBaud.BackColor = Color.White;
                comm.flag_priema = 0;
                schetchiktimer = 0;
            };
            if (schetchiktimer == 120) { schetchiktimer = 0; } 
        }

        private void TimerProcessor(Object stateInfo)
        {
        }

        public void frmMain_Load(object sender, EventArgs e)
        {
            LoadValues();
            SetDefaults();
            SetControlState();//!!!
            LoadSettings();
        }

        public void cmdOpen_Click(object sender, EventArgs e)
        {
            comm.Parity = cboParity.Text;
            comm.StopBits = cboStop.Text;
            comm.DataBits = cboData.Text;
            comm.BaudRate = cboBaud.Text;
            comm.PortName = cboPort.Text;//***********************************************!!!!!!!!!!!!!!!!!!!!!!!!!
            comm.DisplayWindow = rtbDisplay;//!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!11
            comm.DisplayWindow_1 = rtbDisplayport;
            comm.OpenPort();
            comm.DisplayWind_1 = textBox1;//�-***
            comm.DisplayWind_2 = textBox2;
            comm.DisplayWind_3 = textBox3;
            comm.DisplayWind_4 = textBox4;
            comm.DisplayWind_5 = textBox5;
            comm.DisplayWind_6 = textBox6;
            comm.DisplayWind_7 = textBox7;
            comm.DisplayWind_8 = textBox8;
            comm.DisplayWind_9 = textBox9;
            comm.DisplayWind_10 = textBox10;
            comm.DisplayWind_11 = textBox11;
            comm.DisplayWind_12 = textBox12;
            comm.DisplayWind_13 = textBox13;
            comm.DisplayWind_14 = textBox14;
            comm.DisplayWind_15 = textBox15;
            comm.DisplayWind_16 = textBox16;
            comm.DisplayWind_17 = textBox17;
            comm.DisplayWind_18 = textBox18;
            comm.DisplayWind_19 = textBox19;
            comm.DisplayWind_20 = textBox20;
            comm.DisplayWind_21 = textBox21;
            comm.DisplayWind_22 = textBox22;
            comm.DisplayWind_23 = textBox23;
            comm.DisplayWind_24 = textBox24;
            comm.DisplayWind_26 = textBox26;
            comm.DisplayWind_27 = textBox27;//---��� �����������
            comm.DisplayWind_28 = textBox28;//---��� �����������//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            comm.DisplayWind_29 = textBox29;//---��� �����������
            comm.DisplayWind_30 = textBox30;//---��� �����������
            comm.DisplayWind_31 = textBox31;
            comm.DisplayWind_32 = textBox32;
            comm.DisplayWind_33 = textBox33;
            comm.DisplayWind_34 = textBox34;
            comm.DisplayWind_35 = textBox35;
            comm.DisplayWind_36 = textBox36;
            comm.DisplayWind_37 = textBox37;//---��� �����������
            comm.DisplayWind_38 = textBox38;
            comm.DisplayWind_39 = textBox39;
            comm.DisplayWind_40 = textBox40;
            comm.DisplayWind_41 = textBox41;
            comm.DisplayWind_42 = textBox42;
            comm.DisplayWind_43 = textBox43;
            comm.DisplayWind_44 = textBox44;
            comm.DisplayWind_45 = textBox45;
            comm.DisplayWind_48 = textBox48;//---��� �����������
            comm.DisplayWind_49 = textBox49;//---��� �����������
            comm.DisplayWind_50 = textBox50;//---��� �����������
            comm.DisplayWind_51 = textBox51;//---��� �����������
            comm.DisplayWind_52 = textBox52;//---��� �����������
            comm.DisplayWind_53 = textBox53;//---��� �����������
            comm.DisplayWind_55 = textBox55;//---��� �����������
            comm.DisplayWind_56 = textBox56;
            comm.DisplayWind_57 = textBox57;
            comm.DisplayWind_58 = textBox58;
            comm.DisplayWind_59 = textBox59;
            comm.DisplayWind_60 = textBox60;
            comm.DisplayWind_61 = textBox61;
            comm.DisplayWind_62 = textBox62;
            comm.DisplayWind_63 = textBox63;
            comm.DisplayWind_64 = textBox64;
            comm.DisplayWind_65 = textBox65;
            comm.DisplayWind_66 = textBox66;
            comm.DisplayWind_67 = textBox67;
            comm.DisplayWind_515 = textBox54;
            comm.DisplayWind_517 = textBox54;
            comm.DisplayWind_518 = textBox54;
            comm.DisplayWind_519 = textBox54;
            comm.DisplayWind_610 = textBox54;
            comm.DisplayWind_616 = textBox54;
            comm.DisplayWind_617 = textBox54;
       //     comm.DisplayWind_618 = textBox54;
            cmdOpen.Enabled = false;
            cmdClose.Enabled = true;
            comm.tchastotatoka = textBox49.Text;
            timer1.Start();
            label56.Text = " ";
        }

        /// <summary>
        /// Method to initialize serial port
        /// values to standard defaults
        /// </summary>
        public void SetDefaults()
        {
            cboPort.SelectedIndex = 0;
            cboBaud.SelectedText = "9600";
            cboParity.SelectedIndex = 0;
            cboStop.SelectedIndex = 1;
            cboData.SelectedIndex = 1;
        }

        /// <summary>
        /// methos to load our serial
        /// port option values
        /// </summary>
        public void LoadValues()
        {
            comm.SetPortNameValues(cboPort);
            comm.SetParityValues(cboParity);
            comm.SetStopBitValues(cboStop);
        }

        /// <summary>
        /// method to set the state of controls
        /// when the form first loads
        /// </summary>
        public void SetControlState()
        {
            rdoText.Checked = true;
            // cmdSend.Enabled = false;
            cmdClose.Enabled = false;
        }

        private void cmdSend_Click(object sender, EventArgs e)//-��������� �����-->������
        {
            byte[] svetotodi = new byte[10];

            svetotodi[0] = 0x54;
            svetotodi[1] = 0x5F;
            svetotodi[2] = 0x36; //-��������� ������� ��������,�� ������ 2 -��� ���� ���������� ���� ���������

            svetotodi[3] = 0x31;//����� ������

            svetotodi[4] = 0x30;
            svetotodi[5] = 0x30;
            svetotodi[6] = 0x30;
            svetotodi[7] = 0x30;
            svetotodi[8] = 0x30;
            svetotodi[9] = 0x30;
            //-----------------------------------------��� ����-------------------------------------------------------------------------------------------
            try
            {
                SendPacket(svetotodi, 1);
            }
            catch (Exception ex)
            {
                label31.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label31.Text = "                             ";
            label31.Text = DateTime.Now.ToLongTimeString() + "  " + "��� ���������� -- " + sa;
        }

        public void rdoHex_CheckedChanged(object sender, EventArgs e)
        {
            if (rdoHex.Checked == true)
            {
                comm.CurrentTransmissionType = PCComm.CommunicationManager.TransmissionType.Hex;
            }
            else
            {
                comm.CurrentTransmissionType = PCComm.CommunicationManager.TransmissionType.Text;
            }
        }

        public void cmdClose_Click(object sender, EventArgs e)
        {
            cmdOpen.Enabled = true;
            cmdClose.Enabled = false;
            comm.ClosePort();
            label31.Text = "                 ";
            // comm.DisplayWindow.Clear();//????????????����� � ������������????????????????????????????????
            // cmdClose.Enabled = true;//????????????����� � ������������????????????????????????????????
            timer1.Stop();
            {
                textBox1.BackColor = Color.White;
                textBox2.BackColor = Color.White;
                textBox3.BackColor = Color.White;
                textBox4.BackColor = Color.White;
                textBox5.BackColor = Color.White;
                textBox6.BackColor = Color.White;
                textBox7.BackColor = Color.White;
                textBox8.BackColor = Color.White;
                textBox9.BackColor = Color.White;
                textBox10.BackColor = Color.White;
                textBox11.BackColor = Color.White;
                textBox12.BackColor = Color.White;
                textBox13.BackColor = Color.White;
                textBox15.BackColor = Color.White;
                textBox16.BackColor = Color.White;
                textBox17.BackColor = Color.White;
                textBox18.BackColor = Color.White;
                textBox19.BackColor = Color.White;
                textBox20.BackColor = Color.White;
                textBox21.BackColor = Color.White;
                textBox22.BackColor = Color.White;
                textBox23.BackColor = Color.White;
                textBox24.BackColor = Color.White;
                textBox27.BackColor = Color.White;//---��� �����������
                textBox28.BackColor = Color.White;//---��� �����������
                textBox29.BackColor = Color.White;//---��� �����������
                textBox30.BackColor = Color.White;//---��� �����������
                textBox31.BackColor = Color.White;
                textBox33.BackColor = Color.White;
                textBox34.BackColor = Color.White;
                textBox35.BackColor = Color.White;
                textBox36.BackColor = Color.White;
                textBox37.BackColor = Color.White;//---��� �����������
                textBox38.BackColor = Color.White;
                textBox39.BackColor = Color.White;
                textBox40.BackColor = Color.White;
                textBox42.BackColor = Color.White;
                textBox43.BackColor = Color.White;
                textBox44.BackColor = Color.White;
                textBox45.BackColor = Color.White;
                textBox48.BackColor = Color.White;//---��� �����������
                textBox49.BackColor = Color.White;//---��� �����������
                textBox50.BackColor = Color.White;//---��� �����������
                textBox51.BackColor = Color.White;//---��� �����������
                textBox55.BackColor = Color.White;//---��� �����������
                textBox61.BackColor = Color.White; 
                textBox62.BackColor = Color.White;
                textBox63.BackColor = Color.White;
                textBox64.BackColor = Color.White;
                textBox65.BackColor = Color.White;
                cboPort.BackColor = Color.White;
                cboBaud.BackColor = Color.White;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
         Application.Exit();
        }


        public byte[] GetBytes()
        {
            String line = Text.Replace(" ", "").Replace("\n", "").Replace("\r", "");

            if (line.Length % 2 != 0) line += "0";

            byte[] hex = new byte[line.Length / 2];

            for (int i = 0; i < hex.Length; i++)
            {
                hex[i] = Convert.ToByte(line.Substring(2 * i, 2), 0x10);
            }

            return hex;
        }


        public string ByteToHex(byte[] comByte)
        {
            //create a new StringBuilder object
            StringBuilder builder = new StringBuilder(comByte.Length * 3);
            //loop through each byte in the array
            foreach (byte data in comByte)
                //convert the byte to a string and add to the stringbuilder
                builder.Append(Convert.ToString(data, 10).PadLeft(2, '0').PadRight(3, ' '));
            //return the converted value
            return builder.ToString().ToUpper();
        }

        public void SendPacket(byte[] data, int ch)
        {
            byte[] pack = data;
            try
            {
                //  if (serialPort.BaudRate == 1200)
                //  {
                int crc = Custom.CRC(pack);

                Array.Resize(ref pack, pack.Length + 2);

                pack[pack.Length - 2] = (byte)(((crc & 0xF0) >> 4) + 0x40);
                pack[pack.Length - 1] = (byte)(((crc & 0x0F) >> 0) + 0x40);

                pack = Custom.Concat(new byte[] { 0x20 }, pack, new byte[] { 0x0D });
                commBuffer = pack;

            }
            catch (Exception ex)
            {
                MessageBox.Show("������ ��� ������������ �������,� ������ ��� ��������� �� ������� � ���������� CRC");
            }

                sa = /*"���� ����������" + */ " " + ByteeToHexx(pack);

//----------------------------------------------
                if (comm.OpenPort())//-##############################
                {
                    try
                    {
                        comm.WriteData(commBuffer);
                    }
                    catch (Exception ex)
                    {
                        rtbDisplay.Text = ex.Message;
                    }
                }
//-=----------------------------------------------------------------------------------------------------------------------------------------
                // if (serialPort.BaudRate == 1200)
                //  {
                //pack = Custom.Concat(pack, new byte[] { (byte)(ch + 0x30) });//!!!!��� 31 �������� ����� ������ � ��������� ASCII
                // }
                //packet_string = new string(Masresult);
                //serialPort.Write(pack, 0, pack.Length);
                //statusLabel.Text = "";
            //}
        }

        private string commBufferToCharArray()
        {
            throw new NotImplementedException();
        }
        //-----------��������� ������//-----------��������� ������//-----------��������� ������//-----------��������� ������//-----------��������� ������
        public void button3_Click_1(object sender, EventArgs e)//-----------��������� ������//-----------��������� ������//-----------��������� ������//
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label31.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            string sfoto = textBox47.Text;
            double cvt = Convert.ToDouble(sfoto) * 10;
            sfoto = cvt.ToString();

            byte[] svetodiod = new byte[10];

            svetodiod[0] = 0x54;
            svetodiod[1] = 0x5F;
            svetodiod[2] = 0x36; //-��������� ������� ���������,�� ������ 6 -��� ���� ���������� ���� ����������

            svetodiod[3] = 0x30;//����� ������
            svetodiod[4] = 0x30;
            svetodiod[5] = 0x30;

            byte[] fuf = new byte[4];

            for (int i = 0; i < 4; i += 1)
                fuf[i] = (byte)Convert.ToByte(sfoto.Substring(i, 1), 16);
            int p = 4;

            for (int i = 9; i >= 5; i -= 1)
            {
                p = p - 1;
                if (0 <= p) svetodiod[i] = (byte)Convert.ToByte(fuf[p] + 48);
                if (0 > p) svetodiod[i] = (byte)Convert.ToByte(48);
            }
            //-----------------------------------------��� ����-------------------------------------------------------------------------------------------
            try
            {
                SendPacket(svetodiod, 1);//-----------���� ��� �������
            }
            catch (Exception ex)
            {
                label31.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label31.Text = DateTime.Now.ToLongTimeString() + "  " + "��� ���������� -- " + sa;
        }
        //--------------------------------------------------------------------------------------------------------------------------------------------
        public byte[] HexxToByte(string ms)
        {
                        //remove any spaces from the string
              ms = ms.Replace(" ", "");
            byte[] comBuffeer = new byte[ms.Length / 2];
            //loop through the length of the provided string
            for (int i = 0; i < ms.Length; i += 2)
                comBuffeer[i / 2] = (byte)Convert.ToByte(ms.Substring(i, 2), 16);
            //return the array
            return comBuffeer;  
        }

        public string ByteeToHexx(byte[] comByte)
        {
            //create a new StringBuilder object
            StringBuilder builder = new StringBuilder(comByte.Length * 3);
            //loop through each byte in the array
            foreach (byte data in comByte)
                //convert the byte to a string and add to the stringbuilder
                builder.Append(Convert.ToString(data, 16).PadLeft(2, '0').PadRight(3, ' '));//<-10 � ������ ������� ������ ������� 10-������ ������
            //return the converted value
            return builder.ToString().ToUpper();
        }
//----------------------------------------------------------------------------------------------------------------------------------------------------------
        private string WriteLine(string p)
        {
            throw new NotImplementedException();
        }


        private byte[] CommuSendPacket(byte[] comBuffer, int p)
        {
            throw new NotImplementedException();
        }

        //------------------------����������� ������ //------------------------����������� ������ //------------------------����������� ������ 
        private void button4_Click(object sender, EventArgs e)//------------------------����������� ������  
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label40.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            byte[] coBu = new byte[10];
            if (izlutchatel.Checked == true) { coBu[0] = 0x54 ;};
            if (priemnik.Checked == true) { coBu[0] = 0x52 ;};
            coBu[1] = 0x5F;
            coBu[2] = 0x31; //-��������� ������� T,��,�� ������ 31-��� ���� ���������� �����������

            coBu[3] = 0x30;

            int tb = 0;
            string stoto = textBox46.Text;
            rtbDisplayport.Clear();

            try
            {
                tb = int.Parse(stoto);
            }
            catch (Exception ex)
            {
                label40.Text = "������� ���������� ������ ����������� (�� 0 �� 20000)!!!";// ex.Message;
                return;
            }

            if (tb > 20000)
            {
                label40.Text = "������� ���������� ������ ����������� �� ����� 20.000";
                return;
            }


            byte[] fuf = new byte[stoto.Length];



            for (int i = 0; i < stoto.Length; i += 1)
                fuf[i] = (byte)Convert.ToByte(stoto.Substring(i, 1), 16);
            int p = stoto.Length;

            for (int i = 9; i >= 3; i -= 1)
            {
                p = p - 1;
                if (0 <= p) coBu[i] = (byte)Convert.ToByte(fuf[p] + 48);
                if (0 > p) coBu[i] = (byte)Convert.ToByte(48);
            } 
//-----------------------------------------��� ����-------------------------------------------------------------------------------------------
            try
            {
                SendPacket(coBu, 1);
            }
            catch (Exception ex)
            {
                label40.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label40.Text = DateTime.Now.ToLongTimeString() + "   " + "��������� ����������� -- " + sa;    
 //---------------------------------------------------------------------------------------------------------------------------------------------
 //-------------------------------------�� ��� �� �����----------------------------------------------------------------------------------------------------
      /*      if (comm.OpenPort())
                try
                {
                    //serialPort.Write(comBuffer, 0, comBuffer.Length);
                    comm.WriteData(coBu);
                    label40.Text = "                             ";
                    label40.Text = "��������� ����������� -- " + sa + "--" + DateTime.Now.ToLongTimeString(); 
                }
                catch (Exception ex)
                {
                    MessageBox.Show("���� ��� �������� ������ � ����!");
                }   */
        }

//-------------------------------------------------------------------------------------------------------------------------------------------------
        private void textBox25_KeyPress(object sender, KeyPressEventArgs e)
        {
            char number = e.KeyChar;

            if (!Char.IsDigit(number) && number != 8) 
            {
                e.Handled = true;
            }
        }

        private void textBox59_KeyPress(object sender, KeyPressEventArgs e)
        {
            char number = e.KeyChar;
                                                      
            if (!Char.IsDigit(number) && number != 8 && number != 44) //
            {
                e.Handled = true;
            }
        }
        //------------------------����������� ������//------------------------����������� ������//------------------------����������� ������//------------------------����������� ������
        private void button6_Click(object sender, EventArgs e)//------------------------����������� ������
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label40.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            if (izlutchatel.Checked == true) comm._displayWind_36.Clear();/*comm.tte_36 = " ";  */ //-��� ��� ������� ���� ����� ������ ����� ������
            if (priemnik.Checked == true) comm._displayWind_38.Clear();/* comm.tte_38 = " "; */    //-��� ��� ������� ���� ����� ������ ����� ������
           byte[] coBu = new byte[10];
            if (izlutchatel.Checked == true) { coBu[0] = 0x54; };
            if (priemnik.Checked == true) { coBu[0] = 0x52; };
            coBu[1] = 0x5F;
            coBu[2] = 0x31;//-��������� ������� T,��,�� ������ 31-��� ���� ���������� �����������
            coBu[3] = 0x31;//����� ������

            coBu[4] = 0x30;
            coBu[5] = 0x30;
            coBu[6] = 0x30;
            coBu[7] = 0x30;
            coBu[8] = 0x30;
            coBu[9] = 0x30;

            try
            {
                SendPacket(coBu, 1);
            }
            catch (Exception ex)
            {
                label40.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label40.Text = "                             ";
            label40.Text = DateTime.Now.ToLongTimeString() + "  " + "��������� ����������� -- " + sa;
        }
        //----------------��������� ��������----------------��������� ��������----------------��������� ��������----------------��������� ��������
        public void button5_Click_1(object sender, EventArgs e)//----------------��������� ��������
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label26.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            int aaa,b,bb,ak;
            rtbDisplayport.Clear();
            label26.Text = "                               ";
            string mgm = " ",mg = textBox25.Text;

            try
            {
                //int aa = Convert.ToInt32(mg);
                int aa = int.Parse(mg);
                // aa = int.TryParse(mg,out aa);
            }
            catch (Exception ex)
            {
                label26.Text = "������� ���������� ������ ��������� ��������� (� �����)!!!";// ex.Message;
                //MessageBox.Show("������� ���������� ��������� ��������� (� �����)!!!");
                return;
            }
            ak = int.Parse(mg);
            if ((ak > 500000) | (ak == 0))
            {
                label26.Text = "������� ������ ��������� ��������� (� �����) �� ����� 500.000";
                return;
            }

            mg = textBox26.Text;

            try
            {
                aaa = Convert.ToInt32(textBox26.Text);
            }
            catch (Exception ex)
            {
                label26.Text = "������� ���������� ������ ����������� ����� ���������!!!";
                return;
            }

            try
            {
                aaa = int.Parse(mg);
                if (aaa % 2 == 0)
                {
                    mgm = "����������� ����� ��������� ������ ���� �������� ������� �������� ������� � ��������� ��������          ";
                    //label26.Text = "����������� ����� ��������� ������ ���� �������� ������� �������� ������� � ��������� ��������";
                    aaa = aaa + 1;
                }
            }
            catch (Exception ex)
            {
                label26.Text = "������� ���������� ������ ����������� ����� ���������!!!";
                return;
            }

            comm.matrica = aaa;
            mattrr = aaa;
            bb = aaa;
            if (bb < 3)
            {
                label26.Text = "������� ���������� ������ ����������� ����� ���������!!!";
                return;
            } 


            mg = textBox25.Text;
            byte[] comb = new byte[13];
 
            if (ystizluradbat.Checked == true) { comb[0] = 0x54; };
            if (ystpriemnikradbat.Checked == true) { comb[0] = 0x52; };
            comb[1] = 0x5F;
            comb[2] = 0x39;//��� ���� 39
            comb[3] = 0x30;//����� ������ ������

            byte[] cuf = new byte[mg.Length];

                for (int i = 0; i < mg.Length; i += 1)
                    cuf[i] = (byte)Convert.ToByte(mg.Substring(i, 1), 16);
                int p = mg.Length;
                int t = 0;

          for (int i = 9; i >= 3; i -= 1)
          {
          p = p - 1;
          if (0 <= p)  comb[i] = (byte)Convert.ToByte(cuf[p] + 48);
          if (0 > p)   comb[i] = (byte)Convert.ToByte(48);
       
          }    
            
            if (bb > 9)
                {
                    b = bb / 10;     
                    comb[10] = (byte)Convert.ToByte(b + 48);
                    b = bb % 10;
                    comb[11] = (byte)Convert.ToByte(b + 48);
                };

            if (bb < 10)             
                {
                    comb[10] = (byte)Convert.ToByte(48);
                    b = bb;
                    comb[11] = (byte)Convert.ToByte(b + 48);
                };

                if (matrixbox.Checked == true) comb[12] = 49;
                if (matrixbox.Checked == false) comb[12] = 48;

            SendPacket(comb, 1);
            label26.Text = "                 ";
            label26.Text = mgm + sa;
            label34.Visible = true;
            textBox14.Visible = true;
            textBox14.Text = (aaa * aaa).ToString();
            GC.Collect();
        }
        //-----------------������� ���������� ���� ���������-----------------������� ���������� ���� ���������-----------------������� ���������� ���� ���������
        private void button2_Click(object sender, EventArgs e)
        {
            rtbDisplayport.Clear();
            label34.Visible = false;
            textBox14.Visible = false;
            label26.Text = "  ";
            comm.matrica = 0;
            comm.Tte_26 = "";
            GC.Collect();
        }
        //---------------�������� ������---------------�������� ������---------------�������� ������---------------�������� ������---------------�������� ������
        private void button8_Click(object sender, EventArgs e)//--�������� ������
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label32.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            ////////////////ommBu = new byte[] { 0x54, 0x5F, 0x39, 0x30, 0x31, 0x38, 0x35, 0x34, 0x33, 0x31, 0x38, 0x31, 0x31, 0x32, 0x37, 0x38 };//-��� �������
            int fb=0;
            string sfoto = textBox32.Text;
            rtbDisplayport.Clear();

            try
            {
                fb = int.Parse(sfoto);
            }
            catch (Exception ex)
            {
                label32.Text = "������� ���������� ������ ���� ��������� (�� 0 �� 20000)!!!";// ex.Message;
                return;
            }

            if (fb > 20000)
            {
                label32.Text = "������� ���������� ������ ���� ��������� (� ����) �� ����� 20.000";
                return;
            }

            byte[] fotodiod = new byte[10];//��� ������� ��� ���������� ���� ���������

            if (fotoizlutchatel.Checked == true) { fotodiod[0] = 0x54; };
            if (fotopriemnik.Checked == true) { fotodiod[0] = 0x52; };
            fotodiod[1] = 0x5F;
            fotodiod[2] = 0x32; //-��������� ������� ��������,�� ������ 2 -��� ���� ���������� ���� ���������

            fotodiod[3] = 0x30;//����� ������

            byte[] fuf = new byte[sfoto.Length];



            for (int i = 0; i < sfoto.Length; i += 1)
                fuf[i] = (byte)Convert.ToByte(sfoto.Substring(i, 1), 16);
            int p = sfoto.Length;

            for (int i = 9; i >= 3; i -= 1)
            {
                p = p - 1;
                if (0 <= p) fotodiod[i] = (byte)Convert.ToByte(fuf[p] + 48);
                if (0 > p)  fotodiod[i] = (byte)Convert.ToByte(48);
            }  
            //-----------------------------------------��� ����-------------------------------------------------------------------------------------------
            try
            {
                SendPacket(fotodiod, 1);//-----------���� ��� �������
            }
            catch (Exception ex)
            {
                label32.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label32.Text = DateTime.Now.ToLongTimeString() + "  " +  "��������� ���� ��������� -- " + sa;
        }
        //------------------�������� ������//------------------�������� ������//------------------�������� ������//------------------�������� ������
        private void button7_Click(object sender, EventArgs e)//------------------�������� ������
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label32.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            if (fotoizlutchatel.Checked == true) comm._displayWind_39.Clear();
            if (fotopriemnik.Checked == true) comm._displayWind_40.Clear();   
            byte[] fotodi = new byte[10];//��� ������� ��� ���������� ���� ���������

            if (fotoizlutchatel.Checked == true) { fotodi[0] = 0x54; };
            if (fotopriemnik.Checked == true) { fotodi[0] = 0x52; };
            fotodi[1] = 0x5F;
            fotodi[2] = 0x32; //-��������� ������� ��������,�� ������ 2 -��� ���� ���������� ���� ���������

            fotodi[3] = 0x31;//����� ������

            fotodi[4] = 0x30;
            fotodi[5] = 0x30;
            fotodi[6] = 0x30;
            fotodi[7] = 0x30;
            fotodi[8] = 0x30;
            fotodi[9] = 0x30;
            //-----------------------------------------��� ����-------------------------------------------------------------------------------------------
            try
            {
                SendPacket(fotodi, 1);
            }
            catch (Exception ex)
            {
                label32.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label32.Text = "                             ";
            label32.Text = DateTime.Now.ToLongTimeString() + "  " + "��������� ���� ��������� -- " + sa;
        }

//------------------------�������� ��������� �����---------------�������� ��������� �����---------------�������� ��������� �����---------------�������� ��������� �����
        private void button_left_Click(object sender, EventArgs e)
        {
            shaeng.xy_vvod = textBox41.Text;
            shaeng.XYmax = textBox43.Text;
            shaeng.XY_tekysth = textBox42.Text;
            comm.sat = textBox41.Text;

            rtbDisplayport.Clear();
            try
            {
                shaeng.xyvvodint = int.Parse(shaeng.xy_vvod);
                shaeng.xytekystchint = int.Parse(shaeng.XY_tekysth);
                shaeng.xymaxint = int.Parse(shaeng.XYmax);
            }
            catch (Exception ex)
            {
                label53.Text = "������� ���������� ������ ��� �������� ���������!";// ex.Message;
                return;
            }

            if ((shaeng.xyvvodint > 450000) | (shaeng.xyvvodint == 0))
            {
                label53.Text = "������� ���������� ������ ��� �������� ���������: �� ����� 450.000";
                return;
            }

            if (shaeng.xytekystchint < shaeng.xyvvodint)
            {
                label53.Text = "������� �� ������ �������� ��� �, ������� ������ ��������� �������� ��������.";
                return;
            }

            shaeng.xytekystchint = shaeng.xytekystchint - shaeng.xyvvodint;
            textBox42.Text = shaeng.xytekystchint.ToString();//-----------------------������ �������� �� ����� � ������������ � ��������
           
            byte[] fengl = new byte[13];
            fengl = shaeng.Move(shaeng.xy_vvod, 13);//��� ������ ������ ���,� �� ����--����� �� ��� ����������� ���� ����� 0 (�����!!!!!!)
            if (transmit_engine.Checked == true) { fengl[0] = 0x54; };
            if (reciver_engine.Checked == true) { fengl[0] = 0x52; };
            fengl[1] = 0x5F;
            fengl[2] = 0x33; //-��������� ������� "����������������",� �������� �� �,�� 3 (33)
            fengl[3] = 0x30;//����� ������
            fengl[4] = 0x32;//�������� �����           
            fengl[11] = 0x30;//����/��� ������ � EEPROM
            fengl[12] = 0x30;//���������������
            SendPacket(fengl, 1);
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            comm.mark_engine = 3;
            textBox41.BackColor = Color.Orange;
            panel_left.BackColor = Color.Orange;
            GC.Collect();
        }
//--------����� x--------����� x--------����� x--------����� x--------����� x--------����� x--------����� x--------����� x--------����� x--------����� x--------����� x
        private void X_engine_CheckedChanged(object sender, EventArgs e)
        {
            if (X_engine.Checked == true)
            {
                button_left.Visible = true;
                button_stop_left.Visible = true;
                button_riht.Visible = true;
                button_riht_stop.Visible = true;
                button_up.Visible = false;
                button_up_stop.Visible = false;
                button_down.Visible = false;
                button_down_stop.Visible = false;
                label53.Text = "     ";
            }

        }
//--------����� Y--------����� Y--------����� Y--------����� Y--------����� Y--------����� Y--------����� Y--------����� Y--------����� Y--------����� Y--------����� Y
        private void Y_engine_CheckedChanged(object sender, EventArgs e)
        {
            if (Y_engine.Checked == true)
            {
                button_left.Visible = false;
                button_stop_left.Visible = false;
                button_riht.Visible = false;
                button_riht_stop.Visible = false;
                button_up.Visible = true;
                button_up_stop.Visible = true;
                button_down.Visible = true;
                button_down_stop.Visible = true;
                label53.Text = "     ";
            }

        }
        //-------------�������� ��������� � ������ �� �-------------�������� ��������� � ������ �� �-------------�������� ��������� � ������ �� �
        private void button_stop_left_Click(object sender, EventArgs e)
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label53.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            rtbDisplayport.Clear();

            byte[] fengl = new byte[13];

            if (transmit_engine.Checked == true) { fengl[0] = 0x54; };
            if (reciver_engine.Checked == true) { fengl[0] = 0x52; };
            fengl[1] = 0x5F;
            fengl[2] = 0x33; //-��������� ������� "����������������",� �������� �� �,�� 3 (33)
            fengl[3] = 0x30;//����� ������
            fengl[4] = 0x30;//�������� � ������ �� �
            fengl[5] = 0x30;
            fengl[6] = 0x30;
            fengl[7] = 0x30;
            fengl[8] = 0x30;
            fengl[9] = 0x30;
            fengl[10] = 0x30;
            fengl[11] = 0x30;//����/��� ������ � EEPROM
            fengl[12] = 0x30;//���������������
            try
            {
                SendPacket(fengl, 1);
            }
            catch (Exception ex)
            {
                label53.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            comm.mark_engine = 3;
            textBox41.Text = "  ";
            textBox41.BackColor = Color.Orange;
            panel_stop_left.BackColor = Color.Orange;
            GC.Collect();
        }
        //----------�������� ��������� ������----------�������� ��������� ������----------�������� ��������� ������----------�������� ��������� ������------
        private void button_riht_Click(object sender, EventArgs e)
        {
            shaeng.xy_vvod = textBox41.Text;
            shaeng.XYmax = textBox43.Text;
            shaeng.XY_tekysth = textBox42.Text;
            comm.sat = textBox41.Text;

            rtbDisplayport.Clear();

            try
            {
                shaeng.xyvvodint = int.Parse(shaeng.xy_vvod);
                shaeng.xytekystchint = int.Parse(shaeng.XY_tekysth);
                shaeng.xymaxint = int.Parse(shaeng.XYmax);
            }
            catch (Exception ex)
            {
                label53.Text = "������� ���������� ������ ��� �������� ���������!";// ex.Message;
                return;
            }

            if ((shaeng.xyvvodint > 450000) | (shaeng.xyvvodint == 0))
            {
                label53.Text = "������� ���������� ������ ��� �������� ���������: �� ����� 450.000";
                return;
            }

            if ((shaeng.xytekystchint + shaeng.xyvvodint) > shaeng.xymaxint)
            {
                label53.Text = "������� �� ������ �������� ��� �, ������� ������� �� ������ ����������� ���������.";
                return;
            }

            shaeng.xytekystchint = shaeng.xytekystchint + shaeng.xyvvodint;
            textBox42.Text = shaeng.xytekystchint.ToString();

            byte[] fengl = new byte[13];
            fengl = shaeng.Move(shaeng.xy_vvod, 13);//��� ������ ������ ���,� �� ����--����� �� ��� ����������� ���� ����� 0 (�����!!!!!!)

            if (transmit_engine.Checked == true) { fengl[0] = 0x54; };
            if (reciver_engine.Checked == true) { fengl[0] = 0x52; };
            fengl[1] = 0x5F;
            fengl[2] = 0x33; //-��������� ������� "����������������",� �������� �� �,�� 3 (33)
            fengl[3] = 0x30;//����� ������
            fengl[4] = 0x33;//�������� ������ �� �
            fengl[11] = 0x30;//����/��� ������ � EEPROM
            fengl[12] = 0x30;//���������������
            SendPacket(fengl, 1);
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            comm.mark_engine = 3;
            textBox41.BackColor = Color.Orange;
            panel_riht.BackColor = Color.Orange;
            GC.Collect();
        }
        //-------�������� ��������� � ����� �� �-----�������� ��������� � ����� �� �-----�������� ��������� � ����� �� �----�������� ��������� � ����� �� �
        private void button_riht_stop_Click(object sender, EventArgs e)
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label53.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            rtbDisplayport.Clear();
            //panel_left.BackColor.R =(2;55);// = 255;

            byte[] fengl = new byte[13];

            if (transmit_engine.Checked == true) { fengl[0] = 0x54; };
            if (reciver_engine.Checked == true) { fengl[0] = 0x52; };
            fengl[1] = 0x5F;
            fengl[2] = 0x33; //-��������� ������� "����������������",� �������� �� �,�� 3 (33)
            fengl[3] = 0x30;//����� ������
            fengl[4] = 0x31;//�������� � ����� �� �
            fengl[5] = 0x30;
            fengl[6] = 0x30;
            fengl[7] = 0x30;
            fengl[8] = 0x30;
            fengl[9] = 0x30;
            fengl[10] = 0x30;
            fengl[11] = 0x30;//����/��� ������ � EEPROM
            fengl[12] = 0x30;//���������������
            try
            {
                SendPacket(fengl, 1);
            }
            catch (Exception ex)
            {
                label53.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            comm.mark_engine = 3;
            textBox41.Text = "  ";
            textBox41.BackColor = Color.Orange;
            panel_riht_stop.BackColor = Color.Orange;
            GC.Collect();
        }
        //--------�������� � ����� �� Y--------�������� � ����� �� Y--------�������� � ����� �� Y-------�������� � ����� �� Y---------�������� � ����� �� Y
        private void button_down_stop_Click(object sender, EventArgs e)
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label53.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            rtbDisplayport.Clear();

            byte[] fengl = new byte[13];

            if (transmit_engine.Checked == true) { fengl[0] = 0x54; };
            if (reciver_engine.Checked == true) { fengl[0] = 0x52; };
            fengl[1] = 0x5F;
            fengl[2] = 0x34; //-��������� ������� "����������������",� �������� �� Y,�� 4 (34)
            fengl[3] = 0x30;//����� ������
            fengl[4] = 0x30;//�������� � ������ �� Y
            fengl[5] = 0x30;
            fengl[6] = 0x30;
            fengl[7] = 0x30;
            fengl[8] = 0x30;
            fengl[9] = 0x30;
            fengl[10] = 0x30;
            fengl[11] = 0x30;//����/��� ������ � EEPROM
            fengl[12] = 0x30;//���������������
            try
            {
                SendPacket(fengl, 1);
            }
            catch (Exception ex)
            {
                label53.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            comm.mark_engine = 3;
            textBox41.Text = "  ";
            textBox41.BackColor = Color.Orange;
            panel_down_stop.BackColor = Color.Orange;
        }

        //--------�������� � ������ �� Y--------�������� � ������ �� Y---------�������� � ������ �� Y--------�������� � ������ �� Y--------�������� � ������ �� Y

        private void button_up_stop_Click(object sender, EventArgs e)
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label53.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            rtbDisplayport.Clear();

            byte[] fengl = new byte[13];//��� ������� ��� ������� ����������

            if (transmit_engine.Checked == true) { fengl[0] = 0x54; };
            if (reciver_engine.Checked == true) { fengl[0] = 0x52; };
            fengl[1] = 0x5F;
            fengl[2] = 0x34; //-��������� ������� "����������������",� �������� �� Y,�� 4 (34)
            fengl[3] = 0x30;//����� ������
            fengl[4] = 0x31;//�������� � ����� �� Y
            fengl[5] = 0x30;
            fengl[6] = 0x30;
            fengl[7] = 0x30;
            fengl[8] = 0x30;
            fengl[9] = 0x30;
            fengl[10] = 0x30;
            fengl[11] = 0x30;//����/��� ������ � EEPROM
            fengl[12] = 0x30;//���������������
            try
            {
                SendPacket(fengl, 1);
            }
            catch (Exception ex)
            {
                label53.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            comm.mark_engine = 3;
            textBox41.Text = "  ";
            textBox41.BackColor = Color.Orange;
            panel_up_stop.BackColor = Color.Orange;
            GC.Collect();
        }
        //--------�������� ��������� ����--------�������� ��������� ����--------�������� ��������� ����--------�������� ��������� ����--------�������� ��������� ����
        private void button_down_Click(object sender, EventArgs e)
        {
            shaeng.xy_vvod = textBox41.Text;
            shaeng.XYmax = textBox45.Text;
            shaeng.XY_tekysth = textBox44.Text;
            comm.sat = textBox41.Text;

            rtbDisplayport.Clear();
            try
            {
                shaeng.xyvvodint = int.Parse(shaeng.xy_vvod);
                shaeng.xytekystchint = int.Parse(shaeng.XY_tekysth);
                shaeng.xymaxint = int.Parse(shaeng.XYmax);
            }
            catch (Exception ex)
            {
                label53.Text = "������� ���������� ������ ��� �������� ���������!";// ex.Message;
                return;
            }

            if ((shaeng.xyvvodint > 450000) | (shaeng.xyvvodint == 0))
            {
                label53.Text = "������� ���������� ������ ��� �������� ���������: �� ����� 450.000";
                return;
            }

            if ((shaeng.xytekystchint + shaeng.xyvvodint) > shaeng.xymaxint)
            {
                label53.Text = "������� �� ������ �������� ��� Y, ������� ������� �� ������ ����������� ���������.";
                return;
            }

            shaeng.xytekystchint = shaeng.xytekystchint + shaeng.xyvvodint;
            textBox44.Text = shaeng.xytekystchint.ToString();//-----------------------������ �������� �� ����� � ������������ � ��������

            byte[] fengl = new byte[13];//��� ������� ��� ������� ����������
            fengl = shaeng.Move(shaeng.xy_vvod, 13);
            if (transmit_engine.Checked == true) { fengl[0] = 0x54; };
            if (reciver_engine.Checked == true) { fengl[0] = 0x52; };
            fengl[1] = 0x5F;
            fengl[2] = 0x34; //-��������� ������� "����������������",� �������� �� Y,�� 4 (34)
            fengl[3] = 0x30;//����� ������
            fengl[4] = 0x33;//�������� ����
            fengl[11] = 0x30;//����/��� ������ � EEPROM
            fengl[12] = 0x30;//���������������
            SendPacket(fengl, 1);
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            comm.mark_engine = 3;
            textBox41.BackColor = Color.Orange;
            panel_down.BackColor = Color.Orange;
            GC.Collect();//-������� ��� 14.10.2020
        }
        //-------�������� ��������� �����-------�������� ��������� �����-------�������� ��������� �����-------�������� ��������� �����-------�������� ��������� �����
        private void button_up_Click(object sender, EventArgs e)
        {
            shaeng.xy_vvod = textBox41.Text;
            shaeng.XYmax = textBox45.Text;
            shaeng.XY_tekysth = textBox44.Text;
            comm.sat = textBox41.Text;

            rtbDisplayport.Clear();
            //panel_left.BackColor.R =(2;55);// = 255;

            try
            {
                shaeng.xyvvodint = int.Parse(shaeng.xy_vvod);
                shaeng.xytekystchint = int.Parse(shaeng.XY_tekysth);
                shaeng.xymaxint = int.Parse(shaeng.XYmax);
            }
            catch (Exception ex)
            {
                label53.Text = "������� ���������� ������ ��� �������� ���������!";// ex.Message;
                return;
            }

            if ((shaeng.xyvvodint > 450000) | (shaeng.xyvvodint == 0))
            {
                label53.Text = "������� ���������� ������ ��� �������� ���������: �� ����� 450.000";
                return;
            }

            if (shaeng.xytekystchint < shaeng.xyvvodint)
            {
                label53.Text = "������� �� ������ �������� ��� Y, ������� ������ ��������� �������� ��������.";
                return;
            }

            shaeng.xytekystchint = shaeng.xytekystchint - shaeng.xyvvodint;
            textBox44.Text = shaeng.xytekystchint.ToString();//-----------------------������ �������� �� ����� � ������������ � ��������

            byte[] fengl = new byte[13];//��� ������� ��� ������� ����������
            fengl = shaeng.Move(shaeng.xy_vvod, 13);
            if (transmit_engine.Checked == true) { fengl[0] = 0x54; };
            if (reciver_engine.Checked == true) { fengl[0] = 0x52; };
            fengl[1] = 0x5F;
            fengl[2] = 0x34; //-��������� ������� "����������������",� �������� �� Y,�� 4 (34)
            fengl[3] = 0x30;//����� ������
            fengl[4] = 0x32;//�������� �����
            fengl[11] = 0x30;//����/��� ������ � EEPROM
            fengl[12] = 0x30;//���������������
            SendPacket(fengl, 1);
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            comm.mark_engine = 3;//����� ������� ���������� ������� ����������
            textBox41.BackColor = Color.Orange;
            panel_up.BackColor = Color.Orange;
            GC.Collect();
        }
        //---------------������---------------������---------------������---------------������---------------������---------------������---------------������
        private void button13_Click(object sender, EventArgs e)
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label53.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            if ((X_engine.Checked == false) & (Y_engine.Checked == false))
            {
                label53.Text = "�������� ���������� X ��� Y";//ex.Message;
                return;
            }
            byte[] xyxy = new byte[10];//��� ������� ������� ����������
            //comm.mark_engine = 2;
            if (transmit_engine.Checked == true) { xyxy[0] = 0x54; };
            if (reciver_engine.Checked == true) { xyxy[0] = 0x52; };
            xyxy[1] = 0x5F;
            if (X_engine.Checked == true) { xyxy[2] = 0x33; };//�������� �� �
            if (Y_engine.Checked == true) { xyxy[2] = 0x34; };//�������� �� �
            xyxy[3] = 0x31;//����� ������
            xyxy[4] = 0x30;
            xyxy[5] = 0x30;
            xyxy[6] = 0x30;
            xyxy[7] = 0x30;
            xyxy[8] = 0x30;
            xyxy[9] = 0x30;
            try
            {
                SendPacket(xyxy, 1);
            }
            catch (Exception ex)
            {
                label53.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + sa;
            GC.Collect();//-������� ��� 14.10.2020
        }
        //-------������� X/Y-------������� X/Y-------������� X/Y-------������� X/Y-------������� X/Y-------������� X/Y-------������� X/Y-------������� X/Y
        private void button11_Click(object sender, EventArgs e)
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                label53.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            } 
            byte[] xyx = new byte[14];
            xyx[0] = 0x20;
            if (transmit_engine.Checked == true) { xyx[1] = 0x54; };
            if (reciver_engine.Checked == true) { xyx[1] = 0x52; };
            xyx[2] = 0x5F;                    //20 54 5F 38 30 30 30 30 30 30 30 43 4D 0D ---TRANSMIT
            xyx[3] = 0x38;//����� ������      //20 52 5F 38 30 30 30 30 30 30 30 43 4B 0D ---resiver                                       
            xyx[4] = 0x30;
            xyx[5] = 0x30;
            xyx[6] = 0x30;
            xyx[7] = 0x30;
            xyx[8] = 0x30;
            xyx[9] = 0x30;
            xyx[10] = 0x30;
            xyx[11] = 0x43;
            if (transmit_engine.Checked == true) { xyx[12] = 0x4D; };
            if (reciver_engine.Checked == true) { xyx[12] = 0x4B; };
            xyx[13] = 0x0D;
            try
            {
            if (comm.OpenPort())
                    comm.WriteData(xyx);
                    if (transmit_engine.Checked == true) label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + "20 54 5F 38 30 30 30 30 30 30 30 43 4D 0D";
                    if (reciver_engine.Checked == true) label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� ��������� -- " + "20 52 5F 38 30 30 30 30 30 30 30 43 4B 0D";
                }
                catch (Exception ex)
                {
                    label53.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                    return;
                }
            GC.Collect();//-������� ��� 14.10.2020
        }

        public void textBox41_TextChanged(object sender, EventArgs e)
        {
            comm.sat = textBox41.Text;
            textBox41.BackColor = Color.White; //Color.Yellow;//����� ���� �� �����           
            textBox41.Text = comm.sat;
            panel_left.BackColor = Color.Bisque;
            panel_stop_left.BackColor = Color.Bisque;
            panel_riht.BackColor = Color.Bisque;
            panel_riht_stop.BackColor = Color.Bisque;
            panel_up.BackColor = Color.Bisque;
            panel_up_stop.BackColor = Color.Bisque;
            panel_down.BackColor = Color.Bisque;
            panel_down_stop.BackColor = Color.Bisque;
        }

        public void textBox42_TextChanged(object sender, EventArgs e)
        {
           //if (textBox41.Text == "") {textBox41.BackColor = Color.White;} else textBox41.BackColor = Color.Lime;
           textBox41.BackColor = Color.Lime;
           panel_left.BackColor = Color.Bisque;
           panel_stop_left.BackColor = Color.Bisque;
           panel_riht.BackColor = Color.Bisque;
           panel_riht_stop.BackColor = Color.Bisque;
           panel_up.BackColor = Color.Bisque;
           panel_up_stop.BackColor = Color.Bisque;
           panel_down.BackColor = Color.Bisque;
           panel_down_stop.BackColor = Color.Bisque;
        }   

        public void textBox44_TextChanged(object sender, EventArgs e)
        {
           // if (textBox41.Text == "") { textBox41.BackColor = Color.White; } else textBox41.BackColor = Color.Lime;
            textBox41.BackColor = Color.Lime;
            panel_left.BackColor = Color.Bisque;
            panel_stop_left.BackColor = Color.Bisque;
            panel_riht.BackColor = Color.Bisque;
            panel_riht_stop.BackColor = Color.Bisque;
            panel_up.BackColor = Color.Bisque;
            panel_up_stop.BackColor = Color.Bisque;
            panel_down.BackColor = Color.Bisque;
            panel_down_stop.BackColor = Color.Bisque;
        }

        public void textBox49_TextChanged(object sender, EventArgs e)
        {
            comm.tchastotatoka = textBox49.Text;
        }

        public void textBox56_TextChanged(object sender, EventArgs e)//---��� ����������/��������� ������ "������������� �� �����������"
        {
            if (textBox56.Text == "1") button15.Visible = true; else button15.Visible = false;
        }

        public void textBox54_TextChanged(object sender, EventArgs e)//---��� xkpd
        {
            label71.Visible = false;
            label62.Visible = true;
            label62.Text = comm.tte_515;
         }

        public void textBox517_TextChanged(object sender, EventArgs e)//---��� mdv_Def
        {
                label67.Visible = false;
                label63.Visible = true;
                label63.Text = comm.tte_517; 
        }

        public void textBox518_TextChanged(object sender, EventArgs e)//---��� offset
        {
            label68.Visible = false;
            label64.Visible = true;
            label64.Text = comm.tte_518;
        }

        public void textBox519_TextChanged(object sender, EventArgs e)//---��� delta_pnt
        {
            label69.Visible = false;
            label65.Visible = true;
            label65.Text = comm.tte_519;
        }

        public void textBox610_TextChanged(object sender, EventArgs e)//---��� delta_vsbl
        {
            label70.Visible = false;
            label66.Visible = true;
            label66.Text = comm.tte_610;
        }

        public void textBox617_TextChanged(object sender, EventArgs e)//---��� ���������� ������������ ������ --kglass
        {
            label80.Visible = false;
            label81.Visible = true;
            label81.Text = comm.tte_617;
        }

        public void textBox616_TextChanged(object sender, EventArgs e)//---��� ���������� ����������� ���  --kpzs
        {
            label83.Visible = false;
            label84.Visible = true;
            label84.Text = comm.tte_616;
        }
        public void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {          
           Properties.Settings.Default.BaudRate = cboBaud.Text;
           Properties.Settings.Default.PortName = cboPort.Text;
           Properties.Settings.Default.FormWidth = this.Width;
           Properties.Settings.Default.FormHeight = this.Height;
           Properties.Settings.Default.userstringSetting = textBox49.Text;
           SaveSettings();                        
      Application.Exit();
  }

       private void button14_Click_1(object sender, EventArgs e)
       {
           plus = plus + 6.4;
           if (plus > 288) plus = 288;
           textBox47.Text = plus.ToString();
       }

       private void button12_Click_1(object sender, EventArgs e)
       {
           plus = plus - 6.4;
           if (plus < 160) plus = 160;
           textBox47.Text = plus.ToString();
       }

       //-------������� � �����-------������� � �����-------������� � �����-------������� � �����-------������� � �����-------������� � �����
       private void button9_Click(object sender, EventArgs e)
       {
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
               label53.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           } 
           byte[] xxy = new byte[14];
           xxy[0] = 0x20;
           if (transmit_engine.Checked == true) { xxy[1] = 0x54; };
           if (reciver_engine.Checked == true) { xxy[1] = 0x52; };
           xxy[2] = 0x5F;                    //20 54 5F 3B 30 30 30 30 30 30 30 44 40 0D ---TRANSMIT
           xxy[3] = 0x3B;//������� � �����   //20 52 5F 3B 30 30 30 30 30 30 30 43 4E 0D ---resiver                                       
           xxy[4] = 0x30;
           xxy[5] = 0x30;
           xxy[6] = 0x30;
           xxy[7] = 0x30;
           xxy[8] = 0x30;
           xxy[9] = 0x30;
           xxy[10] = 0x30;
           if (transmit_engine.Checked == true) { xxy[11] = 0x44; }
           if (transmit_engine.Checked == true) { xxy[12] = 0x40; }
           if (reciver_engine.Checked == true) { xxy[11] = 0x43; }
           if (reciver_engine.Checked == true) { xxy[12] = 0x4E; }
           xxy[13] = 0x0D;
           try
           {
               if (comm.OpenPort() == true)
                   comm.WriteData(xxy);
               if (transmit_engine.Checked == true) label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� � ����� ����������";
               if (reciver_engine.Checked == true) label53.Text = DateTime.Now.ToLongTimeString() + "  " + "������� � ����� ��������";
           }
           catch (Exception ex)
           {
               label53.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           GC.Collect();//-������� ��� 14.10.2020
       }

       //-------����� � ��������� ����������-------����� � ��������� ����������-------����� � ��������� ����������-------����� � ��������� ����������
       private void button10_Click(object sender, EventArgs e)
       {
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
               label53.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           } 
           byte[] yxy = new byte[14];
           yxy[0] = 0x20;
           if (transmit_engine.Checked == true) { yxy[1] = 0x54; };
           if (reciver_engine.Checked == true) { yxy[1] = 0x52; };
           yxy[2] = 0x5F;
           yxy[3] = 0x3F;
           yxy[4] = 0x30;
           yxy[5] = 0x30;
           yxy[6] = 0x30;
           yxy[7] = 0x30;
           yxy[8] = 0x30;
           yxy[9] = 0x30;
           yxy[10] = 0x30;
           if (transmit_engine.Checked == true) { yxy[11] = 0x44; }
           if (transmit_engine.Checked == true) { yxy[12] = 0x44; }
           if (reciver_engine.Checked == true) { yxy[11] = 0x44; }
           if (reciver_engine.Checked == true) { yxy[12] = 0x42; }
           yxy[13] = 0x0D;
           MessageBox.Show("�� ������������� ������ ��������� � ��������� ����������?");
           if (MessageBox.Show(" �������� -- ��� ��������� ����� �������� � ���������!", "    ", MessageBoxButtons.OKCancel, MessageBoxIcon.Information) != DialogResult.Cancel)
           {
               try
               {
                   if (comm.OpenPort())
                       comm.WriteData(yxy);
               }
               catch (Exception ex)
               {
                   label53.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                   return;
               }
               if (transmit_engine.Checked == true)
               {
                   yxy[1] = 0x54;
                   label53.Text = DateTime.Now.ToLongTimeString() + "  " + "����� � ��������� ���������� ����������";
               }
               if (reciver_engine.Checked == true)
               {
                   yxy[1] = 0x52;
                   label53.Text = DateTime.Now.ToLongTimeString() + "  " + "����� � ��������� ���������� ��������";
               }

           }
           GC.Collect();
       }
//---------������ �������������---------������ �������������---------������ �������������---------������ �������������---------������ �������������
       private void button16_Click(object sender, EventArgs e)
       {                 //20 30 31 30 30 31 30 30 30 30 4B 43 0D 
          if (comm.marker_openport == 0)
          {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
              label62.Text = " ";
              label63.Text = " ";
              label64.Text = " ";
              label65.Text = " ";
              label66.Text = " ";
              label67.Text = " "; 
              label68.Text = " ";
              label69.Text = " ";
              label70.Text = " ";
              label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
              return;
          }
           comm.marker_komand = 21;
           byte[] nefel = new byte[9];//��� ������� �3 + �������������� ����� ���������� ����������� DD1
           nefel[0] = 0x30;//-��������� ������� ���������,�� 30-��� ����� �����������
           nefel[1] = 0x31;
           nefel[2] = 0x30;
           nefel[3] = 0x30;
           int tb = 0;
           string toto = textBox55.Text;
           rtbDisplayport.Clear();

           try
           {
               tb = int.Parse(toto);
           }
           catch (Exception ex)
           {
               label62.Visible = false;
               label71.Visible = true;
               label71.Text = "������� ���������� ������ �������� ��� (�� 0 �� 50.000)!!!";// ex.Message;
               return;
           }

           if (tb > 50000)
           {
               label62.Visible = false;
               label71.Visible = true;
               label71.Text = "������� ���������� ������ �������� ��� �� ����� 50.000";
               return;
           }

           byte[] fufl = new byte[toto.Length];

           for (int i = 0; i < toto.Length; i += 1)
               fufl[i] = (byte)Convert.ToByte(toto.Substring(i, 1), 16);
           int p = toto.Length;

           for (int i = 8; i >= 3; i -= 1)
           {
               p = p - 1;
               if (0 <= p) nefel[i] = (byte)Convert.ToByte(fufl[p] + 48);
               if (0 > p) nefel[i] = (byte)Convert.ToByte(48);
           }
           try
           {
               SendPacket(nefel, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label63.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label62.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label62.Visible = false;
           label71.Visible = true;
           label71.Text = DateTime.Now.ToLongTimeString() + "  " + "������ �������� ��� -- " + sa;
           GC.Collect();
       }
       //-----------������������� �� �����������-----------������������� �� �����������----------������������� �� �����������----------������������� �� �����������
       private void button15_Click(object sender, EventArgs e)
       {
           textBox55.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           } 
           //30 31 30 30 31 30 30 30 30 
           comm.marker_komand = 21;
           byte[] nefell = new byte[9];
           nefell[0] = 0x30;
           nefell[1] = 0x31;
           nefell[2] = 0x30;
           nefell[3] = 0x31;
           nefell[4] = 0x30;
           nefell[5] = 0x30;
           nefell[6] = 0x30;
           nefell[7] = 0x30;
           nefell[8] = 0x30;
           try
           {
               SendPacket(nefell, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label63.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label62.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label62.Visible = false;
           label71.Visible = true;
           label71.Text = DateTime.Now.ToLongTimeString() + "  " + "������������� �� ����������� -- " + sa;
           GC.Collect();
       }
       //-------������ xkpd-------������ xkpd-------������ xkpd-------������ xkpd-------������ xkpd-------������ xkpd-------������ xkpd-------������ xkpd
       private void button17_Click(object sender, EventArgs e)
       {
           textBox55.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 21;
           //20 30 31 31 30 30 30 30 30 30 4B 43 0D � ������ xkpd, ����������� � EEPROM.
           byte[] nefell = new byte[9];
           nefell[0] = 0x30;
           nefell[1] = 0x31;
           nefell[2] = 0x31;
           nefell[3] = 0x30;
           nefell[4] = 0x30;
           nefell[5] = 0x30;
           nefell[6] = 0x30;
           nefell[7] = 0x30;
           nefell[8] = 0x30;
           try
           {
               SendPacket(nefell, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            //label56.Text = DateTime.Now.ToLongTimeString() + "  " + "������ xkpd -- " + sa;
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label63.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label62.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label62.Visible = false;
           label71.Visible = true;
           label71.Text = DateTime.Now.ToLongTimeString() + "  " + "������ xkpd -- " + sa;
           GC.Collect();
       }
       //-------����� xkpd-------����� xkpd-------����� xkpd-------����� xkpd-------����� xkpd-------����� xkpd-------����� xkpd-------����� xkpd
       private void button18_Click(object sender, EventArgs e)
       {
           textBox55.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 21;
           //20 30 31 3F 30 30 30 30 30 30 4C 41 0D � ����� xkpd, ����������� � EEPROM.
           byte[] nefell = new byte[9];
           nefell[0] = 0x30;
           nefell[1] = 0x31;
           nefell[2] = 0x3F;
           nefell[3] = 0x30;
           nefell[4] = 0x30;
           nefell[5] = 0x30;
           nefell[6] = 0x30;
           nefell[7] = 0x30;
           nefell[8] = 0x30;
           try
           {
               SendPacket(nefell, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label63.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label62.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label62.Visible = false;
           label71.Visible = true;
           label71.Text = DateTime.Now.ToLongTimeString() + "  " + "����� xkpd -- " + sa;
           GC.Collect();
       }
       //-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def
       private void button22_Click(object sender, EventArgs e)
       {
           textBox57.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 22;
           //20 30 3A 31 30 30 30 30 30 30 4B 4C 0D � ������ mdv_Def, ����������� � EEPROM.
           byte[] mdvdef = new byte[9];
           mdvdef[0] = 0x30;
           mdvdef[1] = 0x3A;
           mdvdef[2] = 0x31;
           mdvdef[3] = 0x30;
           mdvdef[4] = 0x30;
           mdvdef[5] = 0x30;
           mdvdef[6] = 0x30;
           mdvdef[7] = 0x30;
           mdvdef[8] = 0x30;
           try
           {
               SendPacket(mdvdef, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label63.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label63.Visible = false;
           label67.Visible = true;
           label67.Text = DateTime.Now.ToLongTimeString() + "  " + "������ Mdv_Def -- " + sa;
           GC.Collect();
       }
       //-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def-------������ Mdv_Def
       private void button20_Click(object sender, EventArgs e)
       {
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 22;
           byte[] zapmdvdef = new byte[9];
           zapmdvdef[0] = 0x30;//-��������� ������� ���������,�� 30-��� ����� �����������
           zapmdvdef[1] = 0x3A;
           zapmdvdef[2] = 0x30;
           zapmdvdef[3] = 0x30;
           int tb = 0;
           string toto = textBox57.Text;
           rtbDisplayport.Clear();

           try
           {
               tb = int.Parse(toto);
           }
           catch (Exception ex)
           {
               label63.Visible = false;
               label67.Visible = true;
               label67.Text = "������� ���������� ������ �������� ������ (mdv_Def)!!!";// ex.Message;
               return;
           }

           if (tb > 30000)
           {
               label63.Visible = false;
               label67.Visible = true;
               label67.Text = "������� ���������� ������ �������� ������ (mdv_Def)�� ����� 30.000";
               return;
           }   

           byte[] fufl = new byte[toto.Length];

           for (int i = 0; i < toto.Length; i += 1)
               fufl[i] = (byte)Convert.ToByte(toto.Substring(i, 1), 16);
           int p = toto.Length;

           for (int i = 8; i >= 3; i -= 1)
           {
               p = p - 1;
               if (0 <= p) zapmdvdef[i] = (byte)Convert.ToByte(fufl[p] + 48);
               if (0 > p) zapmdvdef[i] = (byte)Convert.ToByte(48);
           }
           try
           {
               SendPacket(zapmdvdef, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label63.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label63.Visible = false;
           label67.Visible = true;
           label67.Text = DateTime.Now.ToLongTimeString() + "  " + "������ Mdv_Def -- " + sa;
           GC.Collect();
       }
       //-------����� Mdv_Def-------����� Mdv_Def-------����� Mdv_Def-------����� Mdv_Def-------����� Mdv_Def-------����� Mdv_Def-------����� Mdv_Def
       private void button21_Click(object sender, EventArgs e)
       {
           textBox57.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 22;
           //20 30 3A 3F 30 30 30 30 30 30 4C 4A 0D � ����� mdv_Def � ��������� ���������� (10000)
           byte[] sbrosmdvdef = new byte[9];
           sbrosmdvdef[0] = 0x30;
           sbrosmdvdef[1] = 0x3A;
           sbrosmdvdef[2] = 0x3F;
           sbrosmdvdef[3] = 0x30;
           sbrosmdvdef[4] = 0x30;
           sbrosmdvdef[5] = 0x30;
           sbrosmdvdef[6] = 0x30;
           sbrosmdvdef[7] = 0x30;
           sbrosmdvdef[8] = 0x30;
           try
           {
               SendPacket(sbrosmdvdef, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label63.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label63.Visible = false;
           label67.Visible = true;
           label67.Text = DateTime.Now.ToLongTimeString() + "  " + "����� Mdv_Def -- " + sa;
           GC.Collect();
       }
       //-------������ offset-------������ offset-------������ offset-------������ offset-------������ offset-------������ offset-------������ offset
       private void button25_Click(object sender, EventArgs e)
       {
           textBox58.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 23;
           //20 30 3B 31 30 30 30 30 30 30 4B 4D 0D � ������ offset, ����������� � EEPROM.
           byte[] tchtenieoffset = new byte[9];
           tchtenieoffset[0] = 0x30;
           tchtenieoffset[1] = 0x3B;
           tchtenieoffset[2] = 0x31;
           tchtenieoffset[3] = 0x30;
           tchtenieoffset[4] = 0x30;
           tchtenieoffset[5] = 0x30;
           tchtenieoffset[6] = 0x30;
           tchtenieoffset[7] = 0x30;
           tchtenieoffset[8] = 0x30;
           try
           {
               SendPacket(tchtenieoffset, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label64.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label64.Visible = false;
           label68.Visible = true;
           label68.Text = DateTime.Now.ToLongTimeString() + "  " + "������ offset -- " + sa;
           GC.Collect();
       }
       //--------������ offset--------������ offset--------������ offset--------������ offset--------������ offset--------������ offset--------������ offset
       private void button23_Click(object sender, EventArgs e)
       {
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 23;
           byte[] zapisoffset = new byte[9];//��� ������� �3 + �������������� ����� ���������� ����������� DD1
           zapisoffset[0] = 0x30;//-��������� ������� ���������,�� 30-��� ����� �����������
           zapisoffset[1] = 0x3B;
           zapisoffset[2] = 0x30;
           zapisoffset[3] = 0x30;
           int tb = 0;
           string toto = textBox58.Text;
           rtbDisplayport.Clear();

           try
           {
               tb = int.Parse(toto);
           }
           catch (Exception ex)
           {
               label64.Visible = false;
               label68.Visible = true;
               label68.Text = "������� ���������� ������ ���������� ����� (offset)!!!";// ex.Message;
               return;
           }

           if (tb > 500000)
           {
               label64.Visible = false;
               label68.Visible = true;
               label68.Text = "������� ���������� ������ ���������� ����� (offset)";
               return;
           }    

           byte[] fufl = new byte[toto.Length];

           for (int i = 0; i < toto.Length; i += 1)
               fufl[i] = (byte)Convert.ToByte(toto.Substring(i, 1), 16);
           int p = toto.Length;

           for (int i = 8; i >= 3; i -= 1)
           {
               p = p - 1;
               if (0 <= p) zapisoffset[i] = (byte)Convert.ToByte(fufl[p] + 48);
               if (0 > p) zapisoffset[i] = (byte)Convert.ToByte(48);
           }
           try
           {
               SendPacket(zapisoffset, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label64.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label64.Visible = false;
           label68.Visible = true;
           label68.Text = DateTime.Now.ToLongTimeString() + "  " + "������ offset -- " + sa;
           GC.Collect();
       }
       //-------����� offset-------����� offset-------����� offset-------����� offset-------����� offset-------����� offset-------����� offset-------����� offset
       private void button24_Click(object sender, EventArgs e)
       {
           textBox58.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 23;
           //20 30 3B 3F 30 30 30 30 30 30 4C 4B 0D � ����� �������� offset � ��������� ���������� (2000).
           byte[] sbrosoffset = new byte[9];
           sbrosoffset[0] = 0x30;
           sbrosoffset[1] = 0x3B;
           sbrosoffset[2] = 0x3F;
           sbrosoffset[3] = 0x30;
           sbrosoffset[4] = 0x30;
           sbrosoffset[5] = 0x30;
           sbrosoffset[6] = 0x30;
           sbrosoffset[7] = 0x30;
           sbrosoffset[8] = 0x30;
           try
           {
               SendPacket(sbrosoffset, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label65.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label69.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label64.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label64.Visible = false;
           label68.Visible = true;
           label68.Text = DateTime.Now.ToLongTimeString() + "  " + "����� offset -- " + sa;
           GC.Collect();
       }
       //-------������ Delta_pnt-------������ Delta_pnt-------������ Delta_pnt-------������ Delta_pnt-------������ Delta_pnt-------������ Delta_pnt
       private void button28_Click(object sender, EventArgs e)
       {
           textBox59.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 24;
           //20 30 3C 31 30 30 30 30 30 30 4B 4E 0D � ������ delta_pnt, ����������� � EEPROM.
           byte[] tchteniedeltapnt = new byte[9];
           tchteniedeltapnt[0] = 0x30;
           tchteniedeltapnt[1] = 0x3C;
           tchteniedeltapnt[2] = 0x31;
           tchteniedeltapnt[3] = 0x30;
           tchteniedeltapnt[4] = 0x30;
           tchteniedeltapnt[5] = 0x30;
           tchteniedeltapnt[6] = 0x30;
           tchteniedeltapnt[7] = 0x30;
           tchteniedeltapnt[8] = 0x30;
           try
           {
               SendPacket(tchteniedeltapnt, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label64.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label65.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label65.Visible = false;
           label69.Visible = true;
           label69.Text = DateTime.Now.ToLongTimeString() + "  " + "������ delta_pnt -- " + sa;
           GC.Collect();
       }
       //-------������ Delta_pnt-------������ Delta_pnt-------������ Delta_pnt-------������ Delta_pnt-------������ Delta_pnt-------������ Delta_pnt
       private void button26_Click(object sender, EventArgs e)
       {
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 24;
           byte[] zapisdeltapnt = new byte[9];//��� ������� �3 + �������������� ����� ���������� ����������� DD1
           zapisdeltapnt[0] = 0x30;//-��������� ������� ���������,�� 30-��� ����� �����������
           zapisdeltapnt[1] = 0x3C;
           zapisdeltapnt[2] = 0x30;
           zapisdeltapnt[3] = 0x30;
           float tb = 0;
           string toto = textBox59.Text;
           rtbDisplayport.Clear();

           try
           {
               tb = float.Parse(toto);
           }
           catch (Exception ex)
           {
               label65.Visible = false;
               label69.Visible = true;
               label69.Text = "������� ���������� ������ �������� ������ ������������ ��� �������� � ����� ����� ����� ��������!!!";// ex.Message;
               return;
           }

           if (tb > 100)
           {
               label65.Visible = false;
               label69.Visible = true;
               label69.Text = "������� ���������� ������ �������� ������ ������������ ��� �������� � ����� ����� ����� ��������. ������ 100";
               return;
           }

           if (tb < 100) tb = tb * 1000; else tb = tb * 100;
           string tteemp = tb.ToString();
           if (tteemp.Length == 1)
           {
               zapisdeltapnt[4] = 0x30;
               zapisdeltapnt[5] = 0x30;
               zapisdeltapnt[6] = 0x30;
               zapisdeltapnt[7] = 0x30;
               zapisdeltapnt[8] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
           }

           if (tteemp.Length == 2)
           {
               zapisdeltapnt[4] = 0x30;
               zapisdeltapnt[5] = 0x30;
               zapisdeltapnt[6] = 0x30;
               zapisdeltapnt[7] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
               zapisdeltapnt[8] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
           }

           if (tteemp.Length == 3)
           {
               zapisdeltapnt[4] = 0x30;
               zapisdeltapnt[5] = 0x30;
               zapisdeltapnt[6] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
               zapisdeltapnt[7] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
               zapisdeltapnt[8] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
           }

           if (tteemp.Length == 4)
           {
               zapisdeltapnt[4] = 0x30;
               zapisdeltapnt[5] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
               zapisdeltapnt[6] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
               zapisdeltapnt[7] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
               zapisdeltapnt[8] = (byte)Convert.ToByte(3 + tteemp.Substring(3, 1), 16);
           }

           if (tteemp.Length == 5)
           {
               zapisdeltapnt[4] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
               zapisdeltapnt[5] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
               zapisdeltapnt[6] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
               zapisdeltapnt[7] = (byte)Convert.ToByte(3 + tteemp.Substring(3, 1), 16);
               zapisdeltapnt[8] = (byte)Convert.ToByte(3 + tteemp.Substring(4, 1), 16);
           }

           try
           {
               SendPacket(zapisdeltapnt, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label64.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label65.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label65.Visible = false;
           label69.Visible = true;
           label69.Text = DateTime.Now.ToLongTimeString() + "  " + "������ Delta_pnt -- " + sa;
           GC.Collect();
       }
       //-------����� Delta_pnt-------����� Delta_pnt-------����� Delta_pnt-------����� Delta_pnt-------����� Delta_pnt-------����� Delta_pnt-------����� Delta_pnt
       private void button27_Click(object sender, EventArgs e)
       {
           textBox59.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 24;
           //20 30 3C 3F 30 30 30 30 30 30 4C 4C 0D � C���� Delta_pnt, ����������� � EEPROM.
           byte[] sbrosdeltapnt = new byte[9];
           sbrosdeltapnt[0] = 0x30;
           sbrosdeltapnt[1] = 0x3C;
           sbrosdeltapnt[2] = 0x3F;
           sbrosdeltapnt[3] = 0x30;
           sbrosdeltapnt[4] = 0x30;
           sbrosdeltapnt[5] = 0x30;
           sbrosdeltapnt[6] = 0x30;
           sbrosdeltapnt[7] = 0x30;
           sbrosdeltapnt[8] = 0x30;
           try
           {
               SendPacket(sbrosdeltapnt, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           }
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label64.Text = " ";
           label66.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label70.Text = " ";
           label71.Text = " ";
           label65.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label65.Visible = false;
           label69.Visible = true;
           label69.Text = DateTime.Now.ToLongTimeString() + "  " + "����� Delta_pnt -- " + sa;
           GC.Collect();
       }
       //---------������ Delta_vsbl---------������ Delta_vsbl---------������ Delta_vsbl---------������ Delta_vsbl---------������ Delta_vsbl---------������ Delta_vsbl
       private void button31_Click(object sender, EventArgs e)
       {
           textBox60.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 25;
           //20 30 3D 31 30 30 30 30 30 30 4B 4F 0D � ������ Delta_vsbl, ����������� � EEPROM.
           byte[] tchteniedeltavsbl = new byte[9];
           tchteniedeltavsbl[0] = 0x30;
           tchteniedeltavsbl[1] = 0x3D;
           tchteniedeltavsbl[2] = 0x31;
           tchteniedeltavsbl[3] = 0x30;
           tchteniedeltavsbl[4] = 0x30;
           tchteniedeltavsbl[5] = 0x30;
           tchteniedeltavsbl[6] = 0x30;
           tchteniedeltavsbl[7] = 0x30;
           tchteniedeltavsbl[8] = 0x30;
           try
           {
               SendPacket(tchteniedeltavsbl, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           } 
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label71.Text = " ";
           label66.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label66.Visible = false;
           label70.Visible = true;
           label70.Text = DateTime.Now.ToLongTimeString() + "  " + "������ Delta_vsbl -- " + sa;
           GC.Collect();
       }
       //-------������ Delta_vsbl-------������ Delta_vsbl-------������ Delta_vsbl-------������ Delta_vsbl-------������ Delta_vsbl-------������ Delta_vsbl
       private void button29_Click(object sender, EventArgs e)
       {
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 25;
           byte[] zapisdeltavsbl = new byte[9];//��� ������� �3 + �������������� ����� ���������� ����������� DD1
           zapisdeltavsbl[0] = 0x30;//-��������� ������� ���������,�� 30-��� ����� �����������
           zapisdeltavsbl[1] = 0x3D;
           zapisdeltavsbl[2] = 0x30;
           zapisdeltavsbl[3] = 0x30;
           zapisdeltavsbl[4] = 0x30;
           zapisdeltavsbl[5] = 0x30;
           zapisdeltavsbl[6] = 0x30;
           int tb = 0;
           string toto = textBox60.Text;
           rtbDisplayport.Clear();
           //------------------------------------------------------------------------------------------------------------------
           try
           {
               tb = int.Parse(toto);
           }
           catch (Exception ex)
           {
               label66.Visible = false;
               label70.Visible = true;
               label70.Text = "������� ���������� ������ �������a ������ ������������ ��� ������� � ���������� ��������� (����������� ����� MOR � MDV)!!!";// ex.Message;
               return;
           }

           if (tb > 99)
           {
               label66.Visible = false;
               label70.Visible = true;
               label70.Text = "������� ���������� ������ �������a ������ ������������ ��� ������� � ���������� ��������� (����������� ����� MOR � MDV). ������ 100";
               return;
           }

           string tteemp = tb.ToString();
           if (tteemp.Length == 1)
           {
               zapisdeltavsbl[7] = 0x30;
               zapisdeltavsbl[8] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
           }

           if (tteemp.Length == 2)
           {
               zapisdeltavsbl[7] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
               zapisdeltavsbl[8] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
           }

           try
           {
               SendPacket(zapisdeltavsbl, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           } 
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label71.Text = " ";
           label66.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label66.Visible = false;
           label70.Visible = true;
           label70.Text = DateTime.Now.ToLongTimeString() + "  " + "������ Delta_vsbl -- " + sa;
           GC.Collect();
       }
       //--------����� Delta_vsbl--------����� Delta_vsbl--------����� Delta_vsbl--------����� Delta_vsbl--------����� Delta_vsbl--------����� Delta_vsbl
       private void button30_Click(object sender, EventArgs e)
       {
           textBox60.Clear();
           if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
               return;
           }
           comm.marker_komand = 25;
           //20 30 3D 3F 30 30 30 30 30 30 4C 4D 0D � ����� �������� Delta_vsbl � ��������� ���������� (2).
           byte[] sbrosdeltavsbl = new byte[9];
           sbrosdeltavsbl[0] = 0x30;
           sbrosdeltavsbl[1] = 0x3D;
           sbrosdeltavsbl[2] = 0x3F;
           sbrosdeltavsbl[3] = 0x30;
           sbrosdeltavsbl[4] = 0x30;
           sbrosdeltavsbl[5] = 0x30;
           sbrosdeltavsbl[6] = 0x30;
           sbrosdeltavsbl[7] = 0x30;
           sbrosdeltavsbl[8] = 0x30;
           try
           {
               SendPacket(sbrosdeltavsbl, 1);
           }
           catch (Exception ex)
           {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
               label62.Text = " ";
               label63.Text = " ";
               label64.Text = " ";
               label65.Text = " ";
               label66.Text = " ";
               label67.Text = " ";
               label68.Text = " ";
               label69.Text = " ";
               label70.Text = " ";
               label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
               return;
           } 
           label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
           label62.Text = " ";
           label63.Text = " ";
           label64.Text = " ";
           label65.Text = " ";
           label67.Text = " ";
           label68.Text = " ";
           label69.Text = " ";
           label71.Text = " ";
           label66.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label66.Visible = false;
           label70.Visible = true;
           label70.Text = DateTime.Now.ToLongTimeString() + "  " + "����� Delta_vsbl -- " + sa;
           GC.Collect();
       }

       public ThreadExceptionEventHandler Application_Exception { get; set; }

       private void label59_Click(object sender, EventArgs e)
       {

       }
        #region Draw Charts
        public void AddPointToFrequencyAmperageEmitterChart(int frequency)
        {

            this.BeginInvoke((Action)(()=> {
                this.chartAmperageFrequencyEmitter.Series[0].Points.AddXY(DateTime.Now, frequency);

                if (this.chartAmperageFrequencyEmitter.Series[0].Points.Count > 1)
                {
                    this.chartAmperageFrequencyEmitter.ResetAutoValues();

                    while (true)
                    {
                        int count = chartAmperageFrequencyEmitter.Series[0].Points.Count;
                        TimeSpan timeSpan = DateTime.FromOADate(chartAmperageFrequencyEmitter.Series[0].Points[count - 1].XValue) -
                            DateTime.FromOADate(chartAmperageFrequencyEmitter.Series[0].Points[0].XValue);
                        if (timeSpan.TotalHours > Hours)
                        {
                            this.chartAmperageFrequencyEmitter.Series[0].Points.RemoveAt(0);
                        }
                        else
                        {
                            break;
                        }
                    }
                }
                {
                    this.chartAmperageFrequencyEmitter.Series[0].Points.AddXY(DateTime.Now + new TimeSpan(10_000), frequency);
                }
            }));
          
        }

        public void AddPointToFrequencyAmperageReceiverChart(int frequency)
        {
            this.BeginInvoke((Action)(()=> {
                this.chartAmperageFrequencyReceiver.Series[0].Points.AddXY(DateTime.Now, frequency);

                if (this.chartAmperageFrequencyReceiver.Series[0].Points.Count > 1)
                {
                    this.chartAmperageFrequencyReceiver.ResetAutoValues();

                    while (true)
                    {
                        int count = chartAmperageFrequencyReceiver.Series[0].Points.Count;
                        TimeSpan timeSpan = DateTime.FromOADate(chartAmperageFrequencyReceiver.Series[0].Points[count - 1].XValue) -
                            DateTime.FromOADate(chartAmperageFrequencyReceiver.Series[0].Points[0].XValue);
                        if (timeSpan.TotalHours > Hours)
                        {
                            this.chartAmperageFrequencyReceiver.Series[0].Points.RemoveAt(0);
                        }
                        else
                        {
                            break;
                        }
                    }
                }
                {
                    this.chartAmperageFrequencyReceiver.Series[0].Points.AddXY(DateTime.Now + new TimeSpan(10_000), frequency);
                }
            }));
          
        }

        public void AddPointToEfficiencyChart(double efficiency)
        {
            this.BeginInvoke((Action)(() =>
            {
                this.chartEff.Series[0].Points.AddXY(DateTime.Now, efficiency);

                if (this.chartEff.Series[0].Points.Count > 1)
                {
                    this.chartEff.ResetAutoValues();

                    while (true)
                    {
                        int count = chartEff.Series[0].Points.Count;
                        TimeSpan timeSpan = DateTime.FromOADate(chartEff.Series[0].Points[count - 1].XValue) -
                            DateTime.FromOADate(chartEff.Series[0].Points[0].XValue);
                        if (timeSpan.TotalHours > Hours)
                        {
                            this.chartEff.Series[0].Points.RemoveAt(0);
                        }
                        else
                        {
                            break;
                        }
                    }
                }
                {
                    this.chartEff.Series[0].Points.AddXY(DateTime.Now + new TimeSpan(10_000), efficiency);
                }
            }));
        }

        //-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass
        private void button19_Click(object sender, EventArgs e)
        {
            textBox67.Clear();
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            }
            comm.marker_komand = 26;//--������ ������ ����������� �� 26
                                    //20 30 31 31 30 30 30 30 30 30 4B 43 0D � ������ kglass, ����������� � EEPROM.
            byte[] nefell = new byte[9];
            nefell[0] = 0x30;
            nefell[1] = 0x32;
            nefell[2] = 0x31;
            nefell[3] = 0x30;
            nefell[4] = 0x30;
            nefell[5] = 0x30;
            nefell[6] = 0x30;
            nefell[7] = 0x30;
            nefell[8] = 0x30;
            try
            {
                SendPacket(nefell, 1);
            }
            catch (Exception ex)
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label56.Text = " ";
            //label56.Text = DateTime.Now.ToLongTimeString() + "  " + "������ kglass -- " + sa;
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
            label62.Text = " ";
            label63.Text = " ";
            label64.Text = " ";
            label65.Text = " ";
            label66.Text = " ";
            label67.Text = " ";
            label68.Text = " ";
            label69.Text = " ";
            label70.Text = " ";
            label71.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label80.Text = " ";
            label81.Visible = false;
            label80.Visible = true;
            label80.Text = DateTime.Now.ToLongTimeString() + "  " + "������ ���������� ������ kglass -- " + sa;
        }
        //-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass

        //------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass
        private void button34_Click(object sender, EventArgs e)
        {
            textBox67.Clear();
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            }
            comm.marker_komand = 26;//--������ ������ ����������� �� 26
                                    //20 30 31 31 30 30 30 30 30 30 4B 43 0D � ������ kglass, ����������� � EEPROM.
            byte[] nefell = new byte[9];
            nefell[0] = 0x30;
            nefell[1] = 0x32;
            nefell[2] = 0x3F;
            nefell[3] = 0x30;
            nefell[4] = 0x30;
            nefell[5] = 0x30;
            nefell[6] = 0x30;
            nefell[7] = 0x30;
            nefell[8] = 0x30;
            try
            {
                SendPacket(nefell, 1);
            }
            catch (Exception ex)
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label56.Text = " ";
            //label56.Text = DateTime.Now.ToLongTimeString() + "  " + "������ kglass -- " + sa;
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
            label62.Text = " ";
            label63.Text = " ";
            label64.Text = " ";
            label65.Text = " ";
            label66.Text = " ";
            label67.Text = " ";
            label68.Text = " ";
            label69.Text = " ";
            label70.Text = " ";
            label71.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label80.Text = " ";
            label81.Visible = false;
            label80.Visible = true;
            label80.Text = DateTime.Now.ToLongTimeString() + "  " + "����� ����������� ������ kglass -- " + sa;
        }
        //------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass------����� kglass
        //-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass
        private void button32_Click(object sender, EventArgs e)
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            }
            comm.marker_komand = 26;//--������ ������ ����������� �� 26
            byte[] zapiskglass = new byte[9];//��� ������� �3 + �������������� ����� ���������� ����������� DD1
            zapiskglass[0] = 0x30;//-��������� ������� ���������,�� 30-��� ����� �����������
            zapiskglass[1] = 0x3C;
            zapiskglass[2] = 0x30;
            zapiskglass[3] = 0x30;
            float tb = 0;
            string toto = textBox67.Text;
            rtbDisplayport.Clear();

            try
            {
                tb = float.Parse(toto);
            }
            catch (Exception ex)
            {
                /*   label63.Text = " ";
                   label64.Text = " ";
                   label65.Text = " ";
                   label66.Text = " ";
                   label56.Text = " ";  */ //--������� ����������
                label81.Visible = false;
                label80.Visible = true;
                label80.Text = "������� ���������� ������ ������������ ������!!!";// ex.Message;
                return;
            }

            if (tb > 10)
            {
                /*    label63.Text = " ";
                    label64.Text = " ";
                    label65.Text = " ";
                    label66.Text = " ";
                    label56.Text = " ";   */ //---������� ����������
                label81.Visible = false;
                label80.Visible = true;
                label80.Text = "������� ���������� ������ ������������ ������. ������ 10";
                return;
            }

            if (tb < 1) tb = tb * 10000; else tb = tb * 10;
            string tteemp = tb.ToString();
            if (tteemp.Length == 1)
            {
                zapiskglass[4] = 0x30;
                zapiskglass[5] = 0x30;
                zapiskglass[6] = 0x30;
                zapiskglass[7] = 0x30;
                zapiskglass[8] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
            }

            if (tteemp.Length == 2)
            {
                zapiskglass[4] = 0x30;
                zapiskglass[5] = 0x30;
                zapiskglass[6] = 0x30;
                zapiskglass[7] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
                zapiskglass[8] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
            }

            if (tteemp.Length == 3)
            {
                zapiskglass[4] = 0x30;
                zapiskglass[5] = 0x30;
                zapiskglass[6] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
                zapiskglass[7] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
                zapiskglass[8] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
            }

            if (tteemp.Length == 4)
            {
                zapiskglass[4] = 0x30;
                zapiskglass[5] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
                zapiskglass[6] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
                zapiskglass[7] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
                zapiskglass[8] = (byte)Convert.ToByte(3 + tteemp.Substring(3, 1), 16);
            }

            if (tteemp.Length == 5)
            {
                zapiskglass[4] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
                zapiskglass[5] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
                zapiskglass[6] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
                zapiskglass[7] = (byte)Convert.ToByte(3 + tteemp.Substring(3, 1), 16);
                zapiskglass[8] = (byte)Convert.ToByte(3 + tteemp.Substring(4, 1), 16);
            }

            try
            {
                SendPacket(zapiskglass, 1);
            }
            catch (Exception ex)
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
            label62.Text = " ";
            label63.Text = " ";
            label64.Text = " ";
            label66.Text = " ";
            label67.Text = " ";
            label68.Text = " ";
            label70.Text = " ";
            label71.Text = " ";
            label65.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label81.Visible = false;
            label80.Visible = true;
            label80.Text = DateTime.Now.ToLongTimeString() + "  " + "������ ����������� ������ -- " + sa;
        }

        //-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass-----������ kglass
        //------������ ���������� ����������� ���=kpzs---������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs
        private void button35_Click(object sender, EventArgs e)
        {
            textBox66.Clear();
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            }
            comm.marker_komand = 27;//--������ ������ ����������� �� 26
                                    //20 30 31 31 30 30 30 30 30 30 4B 43 0D � ������ kglass, ����������� � EEPROM.
            byte[] nefell = new byte[9];
            nefell[0] = 0x30;
            nefell[1] = 0x32;
            nefell[2] = 0x31;
            nefell[3] = 0x30;
            nefell[4] = 0x30;
            nefell[5] = 0x30;
            nefell[6] = 0x30;
            nefell[7] = 0x30;
            nefell[8] = 0x30;
            try
            {
                SendPacket(nefell, 1);
            }
            catch (Exception ex)
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
            label62.Text = " ";
            label63.Text = " ";
            label64.Text = " ";
            label65.Text = " ";
            label66.Text = " ";
            label67.Text = " ";
            label68.Text = " ";
            label69.Text = " ";
            label70.Text = " ";
            label71.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label80.Text = " ";
            label84.Visible = false;
            label83.Visible = true;
            label83.Text = DateTime.Now.ToLongTimeString() + "  " + "������ ���������� ����������� ��� -- " + sa;
        }
        //--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs-������ ���������� ����������� ���=kpzs
        //--����� ���������� ����������� ���=kpzs--����� ���������� ����������� ���=kpzs--����� ���������� ����������� ���=kpzs--����� ���������� ����������� ���=kpzs--����� ���������� ����������� ���=kpzs
        private void button38_Click(object sender, EventArgs e)
        {
            textBox66.Clear();
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label84.Text = " ";
                label83.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            }
            comm.marker_komand = 27;//--������ ������ ����������� �� 26
                                    //20 30 31 31 30 30 30 30 30 30 4B 43 0D � ������ kglass, ����������� � EEPROM.
            byte[] nefell = new byte[9];
            nefell[0] = 0x30;
            nefell[1] = 0x32;
            nefell[2] = 0x3F;
            nefell[3] = 0x30;
            nefell[4] = 0x30;
            nefell[5] = 0x30;
            nefell[6] = 0x30;
            nefell[7] = 0x30;
            nefell[8] = 0x30;
            try
            {
                SendPacket(nefell, 1);
            }
            catch (Exception ex)
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label56.Text = " ";
            //label56.Text = DateTime.Now.ToLongTimeString() + "  " + "������ kglass -- " + sa;
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
            label62.Text = " ";
            label63.Text = " ";
            label64.Text = " ";
            label65.Text = " ";
            label66.Text = " ";
            label67.Text = " ";
            label68.Text = " ";
            label69.Text = " ";
            label70.Text = " ";
            label71.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label80.Text = " ";
            label84.Visible = false;
            label83.Visible = true;
            label83.Text = DateTime.Now.ToLongTimeString() + "  " + "����� '���������� ����������� ���' -- " + sa;
        }
        //-����� ���������� ����������� ���=kpzs--����� ���������� ����������� ���=kpzs--����� ���������� ����������� ���=kpzs--����� ���������� ����������� ���=kpzs--����� ���������� ����������� ���=kpzs
        //-������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs
        private void button33_Click(object sender, EventArgs e)
        {
            if (comm.marker_openport == 0)//--������� �� 7.08.2019 ��� �������� try ���� 
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "���-���� ������.�������� ���.";//ex.Message;
                return;
            }
            comm.marker_komand = 27;//--������ ������ ����������� �� 26
            byte[] zapiskop = new byte[9];//��� ������� �3 + �������������� ����� ���������� ����������� DD1
            zapiskop[0] = 0x30;//-��������� ������� ���������,�� 30-��� ����� �����������
            zapiskop[1] = 0x3C;
            zapiskop[2] = 0x30;
            zapiskop[3] = 0x30;
            float tb = 0;
            string toto = textBox66.Text;
            rtbDisplayport.Clear();

            try
            {
                tb = float.Parse(toto);
            }
            catch (Exception ex)
            {
                /*   label63.Text = " ";
                   label64.Text = " ";
                   label65.Text = " ";
                   label66.Text = " ";
                   label56.Text = " ";  */ //--������� ����������
                label84.Visible = false;
                label83.Visible = true;
                label83.Text = "������� ���������� ������ ��� '���������� ����������� ���'!!!";// ex.Message;
                return;
            }

            if (tb > 10)
            {
                /*    label63.Text = " ";
                    label64.Text = " ";
                    label65.Text = " ";
                    label66.Text = " ";
                    label56.Text = " ";   */ //---������� ����������
                label84.Visible = false;
                label83.Visible = true;
                label83.Text = "������� ���������� ������ ��� '���������� ����������� ���'. ������ 10";
                return;
            }

            if (tb < 1) tb = tb * 10000; else tb = tb * 10;
            string tteemp = tb.ToString();
            if (tteemp.Length == 1)
            {
                zapiskop[4] = 0x30;
                zapiskop[5] = 0x30;
                zapiskop[6] = 0x30;
                zapiskop[7] = 0x30;
                zapiskop[8] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
            }

            if (tteemp.Length == 2)
            {
                zapiskop[4] = 0x30;
                zapiskop[5] = 0x30;
                zapiskop[6] = 0x30;
                zapiskop[7] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
                zapiskop[8] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
            }

            if (tteemp.Length == 3)
            {
                zapiskop[4] = 0x30;
                zapiskop[5] = 0x30;
                zapiskop[6] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
                zapiskop[7] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
                zapiskop[8] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
            }

            if (tteemp.Length == 4)
            {
                zapiskop[4] = 0x30;
                zapiskop[5] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
                zapiskop[6] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
                zapiskop[7] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
                zapiskop[8] = (byte)Convert.ToByte(3 + tteemp.Substring(3, 1), 16);
            }

            if (tteemp.Length == 5)
            {
                zapiskop[4] = (byte)Convert.ToByte(3 + tteemp.Substring(0, 1), 16);
                zapiskop[5] = (byte)Convert.ToByte(3 + tteemp.Substring(1, 1), 16);
                zapiskop[6] = (byte)Convert.ToByte(3 + tteemp.Substring(2, 1), 16);
                zapiskop[7] = (byte)Convert.ToByte(3 + tteemp.Substring(3, 1), 16);
                zapiskop[8] = (byte)Convert.ToByte(3 + tteemp.Substring(4, 1), 16);
            }

            try
            {
                SendPacket(zapiskop, 1);
            }
            catch (Exception ex)
            {
                comm.tte_515 = " ";
                comm.tte_517 = " ";
                comm.tte_518 = " ";
                comm.tte_519 = " ";
                comm.tte_610 = " ";
                comm.tte_616 = " ";
                comm.tte_617 = " ";
                label62.Text = " ";
                label63.Text = " ";
                label64.Text = " ";
                label65.Text = " ";
                label66.Text = " ";
                label67.Text = " ";
                label68.Text = " ";
                label69.Text = " ";
                label70.Text = " ";
                label71.Text = " ";
                label80.Text = " ";
                label81.Text = " ";
                label83.Text = " ";
                label84.Text = " ";
                label56.Text = "������ ��� �������� ������� � ���-����. �������� ������ �� ��.";//ex.Message;
                return;
            }
            label56.Text = " ";
            comm.tte_515 = " ";
            comm.tte_517 = " ";
            comm.tte_518 = " ";
            comm.tte_519 = " ";
            comm.tte_610 = " ";
            comm.tte_616 = " ";
            comm.tte_617 = " ";
            label62.Text = " ";
            label63.Text = " ";
            label64.Text = " ";
            label66.Text = " ";
            label67.Text = " ";
            label68.Text = " ";
            label70.Text = " ";
            label71.Text = " ";
            label65.Text = " ";
            label80.Text = " ";
            label81.Text = " ";
            label83.Text = " ";
            label84.Text = " ";
            label84.Visible = false;
            label83.Visible = true;
            label83.Text = DateTime.Now.ToLongTimeString() + "  " + "������ '���������� ����������� ���' -- " + sa;
        }

        private void textBox35_TextChanged(object sender, EventArgs e)
        {

        }

        //-������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs--������ ���������� ����������� ���=kpzs



        public void AddPointToMORChart(int mor)
        {
            this.BeginInvoke((Action)(() =>
            {
                this.chartMOR.Series[0].Points.AddXY(DateTime.Now, mor);

                if (this.chartMOR.Series[0].Points.Count > 1)
                {
                    this.chartMOR.ResetAutoValues();

                    while (true)
                    {
                        int count = chartMOR.Series[0].Points.Count;
                        TimeSpan timeSpan = DateTime.FromOADate(chartMOR.Series[0].Points[count - 1].XValue) -
                            DateTime.FromOADate(chartMOR.Series[0].Points[0].XValue);
                        if (timeSpan.TotalHours > Hours)
                        {
                            this.chartMOR.Series[0].Points.RemoveAt(0);
                        }
                        else
                        {
                            break;
                        }
                    }
                }
                {
                    this.chartMOR.Series[0].Points.AddXY(DateTime.Now + new TimeSpan(10_000), mor);
                }
            }));
        }

        public void AddPointToTemperatureDiodeEmitterChart(double temperatureEmitter)
        {
            this.BeginInvoke((Action)(() =>
            {
                this.chartDiodeTemperatureEmitter.Series[0].Points.AddXY(DateTime.Now, temperatureEmitter);

                if (this.chartDiodeTemperatureEmitter.Series[0].Points.Count > 1)
                {
                    this.chartDiodeTemperatureEmitter.ResetAutoValues();

                    while (true)
                    {
                        int count = chartDiodeTemperatureEmitter.Series[0].Points.Count;
                        TimeSpan timeSpan = DateTime.FromOADate(chartDiodeTemperatureEmitter.Series[0].Points[count - 1].XValue) -
                            DateTime.FromOADate(chartDiodeTemperatureEmitter.Series[0].Points[0].XValue);
                        if (timeSpan.TotalHours > Hours)
                        {
                            this.chartDiodeTemperatureEmitter.Series[0].Points.RemoveAt(0);
                        }
                        else
                        {
                            break;
                        }
                    }
                }
                {
                    this.chartDiodeTemperatureEmitter.Series[0].Points.AddXY(DateTime.Now + new TimeSpan(10_000), temperatureEmitter);
                }
            }));
        }

        public void AddPointToTemperatureDiodeReceiverChart(double temperatureReceiver)
        {
            this.BeginInvoke((Action)(() =>
            {
                this.chartDiodeTemperatureReceiver.Series[0].Points.AddXY(DateTime.Now, temperatureReceiver);

                if (this.chartDiodeTemperatureReceiver.Series[0].Points.Count > 1)
                {
                    this.chartDiodeTemperatureReceiver.ResetAutoValues();

                    while (true)
                    {
                        int count = chartDiodeTemperatureReceiver.Series[0].Points.Count;
                        TimeSpan timeSpan = DateTime.FromOADate(chartDiodeTemperatureReceiver.Series[0].Points[count - 1].XValue) -
                            DateTime.FromOADate(chartDiodeTemperatureReceiver.Series[0].Points[0].XValue);
                        if (timeSpan.TotalHours > Hours)
                        {
                            this.chartDiodeTemperatureReceiver.Series[0].Points.RemoveAt(0);
                        }
                        else
                        {
                            break;
                        }
                    }
                }
                {
                    this.chartDiodeTemperatureReceiver.Series[0].Points.AddXY(DateTime.Now + new TimeSpan(10_000), temperatureReceiver);
                }
            }));
        }
        #endregion
    }
}