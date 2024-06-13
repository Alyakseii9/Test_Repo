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
    public partial class frmMain : Form
    {
 //      diagram childForm = null;
 //       public diagram diagr;
       // public Matr ma;
        public byte[] comBuffer { get; set; }
        public byte[] comBuffeer { get; set; }
        public byte[] commBuffer { get; set; }
        //public byte[] ommBu { get; set; }//--------------------для отладки

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
        CommunicationManager comm = new CommunicationManager();
      //  Shag_engine shaeng = new Shag_engine();
        string transType = string.Empty;


        
       // System.Threading.Timer sendTimer;//************************************************************
        public frmMain()
        {
            Logger logger = LogManager.GetCurrentClassLogger();
            InitializeComponent();
            this.IsMdiContainer = true;

        }

        public byte[] HexToByte(string msg)
        {
            //remove any spaces from the string
            msg = msg.Replace(" ", "");
        
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
        }

        public void SaveSettings()                
        {                                         
            // Save the location of the ToolStrips
            ToolStripManager.SaveSettings(this);  

            // Save changed settings
            Properties.Settings.Default.Save();   
        }                                         

        private void Timer1_Tick(object Sender, EventArgs e)
        {
            // Set the caption to the current time.  
            Label1.Text = DateTime.Now.ToString();
            //  cmdSend_Click_1 += new EventHandler(cmdSend_Click_1);
            schetchiktimer += 1;
            if (schetchiktimer == 120 & comm.flag_priema!=1) 
            { textBox1.BackColor = Color.Yellow;
              textBox2.BackColor = Color.Yellow;
              textBox8.BackColor = Color.Yellow;
              textBox9.BackColor = Color.Yellow;
              textBox10.BackColor = Color.Yellow;
              textBox11.BackColor = Color.Yellow;
              textBox12.BackColor = Color.Yellow;
              textBox24.BackColor = Color.Yellow;
              textBox33.BackColor = Color.Yellow;
              cboPort.BackColor = Color.Yellow;
              cboBaud.BackColor = Color.Yellow;
              schetchiktimer = 0;
              comm.flag_priema = 0;
            };
            if (comm.flag_priema == 1 & schetchiktimer < 120)
            {
                textBox1.BackColor = Color.White;
                textBox2.BackColor = Color.White;
                textBox8.BackColor = Color.White;
                textBox9.BackColor = Color.White;
                textBox10.BackColor = Color.White;
                textBox11.BackColor = Color.White;
                textBox12.BackColor = Color.White;
                textBox24.BackColor = Color.White;
                textBox33.BackColor = Color.White;
                cboPort.BackColor = Color.White;
                cboBaud.BackColor = Color.White;
                comm.flag_priema = 0;
                schetchiktimer = 0;
            };
            if (schetchiktimer == 120) { schetchiktimer = 0; } 
        }

        private void TimerProcessor(Object stateInfo)
        {
            //SendPacket(hexBox.GetBytes());
        }

        public void frmMain_Load(object sender, EventArgs e)
        {
            LoadValues();
            SetDefaults();
            SetControlState();
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
            // comm. 
            // try
            // {
            comm.OpenPort();
            //  }
            //  catch (Exception ex)
            //  {
            // Label1.Text = ex.Message;
            //      return;
            //  }
            comm.DisplayWind_1 = textBox1;
            comm.DisplayWind_2 = textBox2;
            comm.DisplayWind_8 = textBox8;
            comm.DisplayWind_9 = textBox9;
            comm.DisplayWind_10 = textBox10;
            comm.DisplayWind_11 = textBox11;
            comm.DisplayWind_12 = textBox12;
            comm.DisplayWind_24 = textBox24;
            comm.DisplayWind_33 = textBox33;
            cmdOpen.Enabled = false;
            cmdClose.Enabled = true;
            timer1.Start();
        }

        /// <summary>
        /// Method to initialize serial port
        /// values to standard defaults
        /// </summary>
        public void SetDefaults()
        {
            cboPort.SelectedIndex = 0;
            cboBaud.SelectedText = "1200";
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
            timer1.Stop();
            {
                textBox1.BackColor = Color.White;
                textBox2.BackColor = Color.White;
                textBox8.BackColor = Color.White;
                textBox9.BackColor = Color.White;
                textBox10.BackColor = Color.White;
                textBox11.BackColor = Color.White;
                textBox12.BackColor = Color.White;
                textBox24.BackColor = Color.White;
                textBox33.BackColor = Color.White;

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
                builder.Append(Convert.ToString(data, 10).PadLeft(2, '0').PadRight(3, ' '));//<-10 в первых скобках должен значить 10-ричный формат
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

                pack[pack.Length - 2] = (byte)(((crc & 0xF0) >> 4) + 0x40);//сообщение разбивается на 2 тетрады и добавляется
                pack[pack.Length - 1] = (byte)(((crc & 0x0F) >> 0) + 0x40);//0х40в каждую тетраду для передачи его в кодировке ASCII

                pack = Custom.Concat(new byte[] { 0x20 }, pack, new byte[] { 0x0D });//ДОБАВКИ НАЧАЛА ПОСЫЛКИ И СТОП
                commBuffer = pack;

            }
            catch (Exception ex)
            {
                MessageBox.Show("Ошибка при формировании посылки,а именно при разбиении на тетрады и добавлении CRC");
            }
                sa = /*"Было отправлено" + */ " " + ByteeToHexx(pack);


//-----------------------------------------------------на это меняю----------------------------------------------------------------------
                if (comm.OpenPort())
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

        }

        private string commBufferToCharArray()
        {
            throw new NotImplementedException();
        }

        //--------------------------------------------------------------------------------------------------------------------------------------------
        public byte[] HexxToByte(string ms)
        {
                        //remove any spaces from the string
              ms = ms.Replace(" ", "");
            //create a byte array the length of the--создайте массив байта длина
            //divided by 2 (Hex is 2 characters in length)--разделенный на 2 (Шестнадцатеричный - 2 символа в длине), 
            byte[] comBuffeer = new byte[ms.Length / 2];
            //loop through the length of the provided string
            for (int i = 0; i < ms.Length; i += 2)
                //convert each set of 2 characters to a byte--преобразуйте каждый набор 2 символов к байту
                //and add to the array--и добавьте к массиву
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
                builder.Append(Convert.ToString(data, 16).PadLeft(2, '0').PadRight(3, ' '));
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



//-------------------------------------------------------------------------------------------------------------------------------
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
                                                        
            if (!Char.IsDigit(number) && number != 8 && number != 44) 
            {
                e.Handled = true;
            }
        }




        
        public void frmMain_FormClosing(object sender, FormClosingEventArgs e)
        {          
           Properties.Settings.Default.BaudRate = cboBaud.Text;
           Properties.Settings.Default.PortName = cboPort.Text;
           Properties.Settings.Default.FormWidth = this.Width;
           Properties.Settings.Default.FormHeight = this.Height;
           SaveSettings();                             
      Application.Exit();
  }

    }                                                                
}