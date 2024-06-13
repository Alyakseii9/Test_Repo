using System;
using System.Text;
using System.Drawing;
using System.IO.Ports;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Linq;
using System.Windows.Forms;
//using System.ComponentModel;
//using System.Data;
//using System.Collections.Generic;//************************************
//using System.Linq;              //*************************************
using System.Threading;     //******************************************
//using System.Threading.Tasks;//***************************************
using NLog;
using NLog.Targets;
using NLog.Config;



namespace PCComm
{
    public class CommunicationManager
    {
        diagram childForm = null;
        public diagram diagr;
      //  public Matr m;
        //public frmMain forma_2;
      // frmMain frm_2 = new frmMain();
      // public frmMain frm_2;//<--��� �������� ������@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
      //  public diagram diagr;
        public string packet_string { get; set; }
        public string sa { get; set; }
        public byte[] pack,packetik;
        public  string sas,tm,sat,tchastotatoka,ttext;
        public byte[] commBuffer { get; set; }
        public string mmsg { get; set; }
        //public string labelsu { get; set; }
       // public string summatrix { get; set; }
        public int matrica { get; set; }
        int fla = 0,stroka, stolbec, flag;//, tchastota_2 = 0, tchastota_1 = 0;
        int uzel_tip = 0, rejim_int = 0;
       // int kolvo_tochek;
        public int flag_shagivui = 0, Nmax = 0, mark_engine = 0, marker_komand = 0, dlina_mmsg = 0, markiz = 0, markpr = 0, flag_priema = 0, marker_openport = 0;
        public double[,] massifa = new double[99,99];
       // public double[,] massif_nakopitel = new double[6, 6];
       // public double[] massif = new double[99];
        public int matricasum { get; set; }
        public int knopkanephelometra = 0;
       //Form forma_2 = new Form();
        //frmMain frm_2 = new frmMain();//<--���� ��� �����,�� ���� � � ������� ���� ��������������,�� ����� �� ����������
        Shag_engine shaeng = new Shag_engine();
        //System.Windows.Forms.Control.CheckForIllegalCrossThreadCalls = false;//������� � ������������ ������ -- o������� ��������, �� ������ ������ ������������ �������

        #region Manager Enums
        /// <summary>
        /// enumeration to hold our transmission types
        /// </summary>
        public enum TransmissionType { Text, Hex }
        delegate void SetTextDeleg(string text);               //��� ����*************************************************
        delegate void StDelegate(TextBox textBox1, string Text);//��� ����********************************************
        private StDelegate TextBox1 { get; set; }             //��� ����********************************************
        //delegate void StDelegate(string Ta, string Text);
        //delegate void Forlabelsu(string text);
        
        internal delegate void SerialDataReceivedEventHandlerDelegate(object sender, SerialDataReceivedEventArgs e);
        //   internal delegate void SerialPinChangedEventHandlerDelegate(object sender, SerialPinChangedEventArgs e);//****21.05.2018-���� � 2-� ������ ��������**********
        //   private SerialPinChangedEventHandler SerialPinChangedEventHandler1;
        //   delegate void SetTextCallback(string text);//****************************************************************21.05.2018-���� � 2-� ������ ��������**************
  //      string InputData = String.Empty;
        /// <summary>
        /// enumeration to hold our message types
        /// </summary>
        public enum MessageType { Incoming, Outgoing, Normal, Warning, Error };
        #endregion

        #region Manager Variables
        //property variables
        private string _baudRate = string.Empty;
        private string _parity = string.Empty;
        private string _stopBits = string.Empty;
        private string _dataBits = string.Empty;
        private string _portName = string.Empty;
        private string tte_1 = string.Empty;//****************************************************
        private string tte_2 = string.Empty;//****************************************************
        private string tte_3 = string.Empty;//****************************************************
        private string tte_4 = string.Empty;//****************************************************
        private string tte_5 = string.Empty;//****************************************************
        private string tte_6 = string.Empty;//****************************************************
        private string tte_7 = string.Empty;//****************************************************
        private string tte_8 = string.Empty;//****************************************************
        private string tte_9 = string.Empty;//****************************************************
        private string tte_10 = string.Empty;//****************************************************
        private string tte_11 = string.Empty;//****************************************************
        private string tte_12 = string.Empty;//****************************************************
        private string tte_13 = string.Empty;//****************************************************
        private string tte_14 = string.Empty;//****************************************************
        private string tte_15 = string.Empty;//****************************************************
        private string tte_16 = string.Empty;//****************************************************
        private string tte_17 = string.Empty;//****************************************************
        private string tte_18 = string.Empty;//****************************************************
        private string tte_19 = string.Empty;//****************************************************
        private string tte_20 = string.Empty;//****************************************************
        private string tte_21 = string.Empty;//****************************************************
        private string tte_22 = string.Empty;//****************************************************
        private string tte_23 = string.Empty;//****************************************************
        private string tte_24 = string.Empty;//****************************************************
        private string tte_26 = string.Empty;//****************************************************
        private string tte_27 = string.Empty;//---��� �����������//****************************************************
        private string tte_28 = string.Empty;//---��� �����������//****************************************************
        private string tte_29 = string.Empty;//---��� �����������//****************************************************
        private string tte_30 = string.Empty;//---��� �����������//****************************************************
        private string tte_31 = string.Empty;//****************************************************
        private string tte_32 = string.Empty;//****************************************************
        private string tte_33 = string.Empty;//****************************************************
        private string tte_34 = string.Empty;//****************************************************
        private string tte_35 = string.Empty;//****************************************************
        public string tte_36 = string.Empty;//****************************************************
        public string tte_37 = string.Empty;//---��� �����������
        public string tte_38 = string.Empty;//****************************************************
        public string tte_39 = string.Empty;//****************************************************
        public string tte_40 = string.Empty;//****************************************************
        public string tte_41 = string.Empty;//****************************************************
        public string tte_42 = string.Empty;//****************************************************
        public string tte_43 = string.Empty;//****************************************************
        public string tte_44 = string.Empty;//****************************************************
        public string tte_45 = string.Empty;//****************************************************
        public string tte_48 = string.Empty;//---��� �����������
        public string tte_49 = string.Empty;//---��� �����������
        public string tte_50 = string.Empty;//---��� �����������
        public string tte_51 = string.Empty;//---��� �����������
        public string tte_52 = string.Empty;//---��� �����������
        public string tte_53 = string.Empty;//---��� �����������
        public string tte_55 = string.Empty;//---��� �����������
        public string tte_56 = string.Empty;//--��� ���������� ������ "��������� �� �����������"
        public string tte_57 = string.Empty;//---����� �����������
        public string tte_58 = string.Empty;//---����� �����������
        public string tte_59 = string.Empty;//---����� �����������
        public string tte_60 = string.Empty;//---����� �����������
        public string tte_61 = string.Empty;//---��� Label-�� �� ����� �����������
        public string tte_62 = string.Empty;//---��� Label-�� �� ����� �����������
        public string tte_63 = string.Empty;//---��� Label-�� �� ����� �����������
        public string tte_64 = string.Empty;//---��� Label-�� �� ����� �����������
        public string tte_65 = string.Empty;//---��� Label-�� �� ����� �����������
        private TextBox _displayWind_1;//��� ����********************************************
        private TextBox _displayWind_2;//��� ����********************************************
        private TextBox _displayWind_3;//��� ����********************************************
        private TextBox _displayWind_4;//��� ����********************************************
        private TextBox _displayWind_5;//��� ����********************************************
        private TextBox _displayWind_6;//��� ����********************************************
        private TextBox _displayWind_7;//��� ����********************************************
        private TextBox _displayWind_8;//��� ����********************************************
        private TextBox _displayWind_9;//��� ����********************************************
        private TextBox _displayWind_10;//��� ����********************************************
        private TextBox _displayWind_11;//��� ����********************************************
        private TextBox _displayWind_12;//��� ����********************************************
        private TextBox _displayWind_13;//��� ����********************************************
        private TextBox _displayWind_14;//��� ����********************************************
        private TextBox _displayWind_15;//��� ����********************************************
        private TextBox _displayWind_16;//��� ����********************************************
        private TextBox _displayWind_17;//��� ����********************************************
        private TextBox _displayWind_18;//��� ����********************************************
        private TextBox _displayWind_19;//��� ����********************************************
        private TextBox _displayWind_20;//��� ����********************************************
        private TextBox _displayWind_21;//��� ����********************************************
        private TextBox _displayWind_22;//��� ����********************************************
        private TextBox _displayWind_23;//��� ����********************************************
        private TextBox _displayWind_24;//��� ����********************************************
        public TextBox _displayWind_26;//��� ����********************************************
        private TextBox _displayWind_27;//---��� �����������//��� ����********************************************
        private TextBox _displayWind_28;//---��� �����������//��� ����********************************************
        private TextBox _displayWind_29;//---��� �����������//��� ����********************************************
        private TextBox _displayWind_30;//---��� �����������//��� ����********************************************
        private TextBox _displayWind_31;//��� ����********************************************
        private TextBox _displayWind_32;//��� ����********************************************
        private TextBox _displayWind_33;//��� ����********************************************
        private TextBox _displayWind_34;//��� ����********************************************
        private TextBox _displayWind_35;//��� ����********************************************
        public TextBox _displayWind_36;//��� ����********************************************
        public TextBox _displayWind_37;//---��� �����������
        public TextBox _displayWind_38;//��� ����********************************************
        public TextBox _displayWind_39;//��� ����********************************************
        public TextBox _displayWind_40;//��� ����********************************************
        public TextBox _displayWind_41;//��� ����********************************************
        public TextBox _displayWind_42;//��� ����********************************************
        public TextBox _displayWind_43;//��� ����********************************************
        public TextBox _displayWind_44;//��� ����********************************************
        public TextBox _displayWind_45;//��� ����********************************************
        public TextBox _displayWind_48;//---��� �����������
        public TextBox _displayWind_49;//---��� �����������
        public TextBox _displayWind_50;//---��� �����������
        public TextBox _displayWind_51;//---��� �����������
        public TextBox _displayWind_52;//---��� �����������
        public TextBox _displayWind_53;//---��� �����������
        public TextBox _displayWind_55;//---����� �����������
        public TextBox _displayWind_56;//--��� ���������� ������ "��������� �� �����������"
        public TextBox _displayWind_57;//---����� �����������
        public TextBox _displayWind_58;//---����� �����������
        public TextBox _displayWind_59;//---����� �����������
        public TextBox _displayWind_60;//---����� �����������
        public TextBox _displayWind_61;//--Label-� �� ����� �����������
        public TextBox _displayWind_62;//--Label-� �� ����� �����������
        public TextBox _displayWind_63;//--Label-� �� ����� �����������
        public TextBox _displayWind_64;//--Label-� �� ����� �����������
        public TextBox _displayWind_65;//--Label-� �� ����� �����������
        private TransmissionType _transType;
        private RichTextBox _displayWindow;
        private RichTextBox _displayWindow_1;
        //  private TextBox _displayWi;
        //global manager variables
        private Color[] MessageColor = { Color.Blue, Color.Green, Color.Black, Color.Orange, Color.Red };
        private SerialPort comPort = new SerialPort();
        #endregion

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

        #region Manager Properties
        /// <summary>
        /// Property to hold the BaudRate
        /// of our manager class
        /// </summary>
        public string BaudRate
        {
            get { return _baudRate; }
            set { _baudRate = value; }
        }

        /// <summary>
        /// property to hold the Parity
        /// of our manager class
        /// </summary>
        public string Parity
        {
            get { return _parity; }
            set { _parity = value; }
        }

        /// <summary>
        /// property to hold the StopBits
        /// of our manager class
        /// </summary>
        public string StopBits
        {
            get { return _stopBits; }
            set { _stopBits = value; }
        }

        /// <summary>
        /// property to hold the DataBits
        /// of our manager class
        /// </summary>
        public string DataBits
        {
            get { return _dataBits; }
            set { _dataBits = value; }
        }

        /// <summary>
        /// property to hold the PortName
        /// of our manager class
        /// </summary>
        public string PortName
        {
            get { return _portName; }
            set { _portName = value; }
        }

        /// <summary>
        /// property to hold our TransmissionType
        /// of our manager class
        /// </summary>
        public TransmissionType CurrentTransmissionType
        {
            get { return _transType; }
            set { _transType = value; }
        }

        /// <summary>
        /// property to hold our display window
        /// value
        /// </summary>
        public RichTextBox DisplayWindow
        {
            get { return _displayWindow; }
            set { _displayWindow = value; }
        }

        public RichTextBox DisplayWindow_1
        {
            get { return _displayWindow_1; }
            set { _displayWindow_1 = value; }
        }

        public TextBox DisplayWind_1       
        {                                  
            get { return _displayWind_1; } 
            set { _displayWind_1 = value; }
        }                                  

        public TextBox DisplayWind_2       
        {                                  
            get { return _displayWind_2; } 
            set { _displayWind_2 = value; }
        }                                    

        public TextBox DisplayWind_3       
        {                                  
            get { return _displayWind_3; } 
            set { _displayWind_3 = value; }
        }                                  

        public TextBox DisplayWind_4       
        {                                  
            get { return _displayWind_4; } 
            set { _displayWind_4 = value; }
        }                                  

        public TextBox DisplayWind_5       
        {                                  
            get { return _displayWind_5; } 
            set { _displayWind_5 = value; }
        }                                  

        public TextBox DisplayWind_6       
        {                                  
            get { return _displayWind_6; } 
            set { _displayWind_6 = value; }
        }                                  

        public TextBox DisplayWind_7       
        {                                  
            get { return _displayWind_7; } 
            set { _displayWind_7 = value; }
        }                                  

        public TextBox DisplayWind_8       
        {                                  
            get { return _displayWind_8; } 
            set { _displayWind_8 = value; }
        }                                  

        public TextBox DisplayWind_9       
        {                                  
            get { return _displayWind_9; } 
            set { _displayWind_9 = value; }
        }                                  

        public TextBox DisplayWind_10      
        {                                  
            get { return _displayWind_10; }  
            set { _displayWind_10 = value; } 
        }                                    

        public TextBox DisplayWind_11        
        {                                    
            get { return _displayWind_11; }  
            set { _displayWind_11 = value; } 
        }                                    

        public TextBox DisplayWind_12        
        {                                    
            get { return _displayWind_12; }  
            set { _displayWind_12 = value; } 
        }                                    

        public TextBox DisplayWind_13        
        {                                    
            get { return _displayWind_13; }  
            set { _displayWind_13 = value; } 
        }                                    

        public TextBox DisplayWind_14        
        {                                    
            get { return _displayWind_14; }  
            set { _displayWind_14 = value; } 
        }                                    

        public TextBox DisplayWind_15        
        {                                    
            get { return _displayWind_15; }  
            set { _displayWind_15 = value; } 
        }                                    

        public TextBox DisplayWind_16        
        {                                    
            get { return _displayWind_16; }  
            set { _displayWind_16 = value; } 
        }                                    

        public TextBox DisplayWind_17        
        {                                    
            get { return _displayWind_17; }  
            set { _displayWind_17 = value; } 
        }                                    


        public TextBox DisplayWind_18         
        {                                     
            get { return _displayWind_18; }   
            set { _displayWind_18 = value; }  
        }                                     

        public TextBox DisplayWind_19         
        {                                     
            get { return _displayWind_19; }   
            set { _displayWind_19 = value; }  
        }                                     

        public TextBox DisplayWind_20         
        {                                     
            get { return _displayWind_20; }   
            set { _displayWind_20 = value; }  
        }                                     

        public TextBox DisplayWind_21         
        {                                     
            get { return _displayWind_21; }   
            set { _displayWind_21 = value; }  
        }                                     

        public TextBox DisplayWind_22         
        {                                     
            get { return _displayWind_22; }   
            set { _displayWind_22 = value; }  
        }                                     

        public TextBox DisplayWind_23         
        {                                     
            get { return _displayWind_23; }   
            set { _displayWind_23 = value; }  
        }                                     

        public TextBox DisplayWind_24         
        {                                     
            get { return _displayWind_24; }   
            set { _displayWind_24 = value; }  
        }                                     

        public TextBox DisplayWind_26         
        {                                     
            get { return _displayWind_26; }   
            set { _displayWind_26 = value; }  
        }

        public TextBox DisplayWind_27    //---��� �����������    
        {                                    
            get { return _displayWind_27; }  
            set { _displayWind_27 = value; } 
        }

        public TextBox DisplayWind_28   //---��� �����������     
        {                                    
            get { return _displayWind_28; }  
            set { _displayWind_28 = value; } 
        }

        public TextBox DisplayWind_29    //---��� �����������    
        {                                    
            get { return _displayWind_29; }  
            set { _displayWind_29 = value; } 
        }

        public TextBox DisplayWind_30    //---��� �����������    
        {                                    
            get { return _displayWind_30; }  
            set { _displayWind_30 = value; } 
        }                                    

        public TextBox DisplayWind_31        
        {                                    
            get { return _displayWind_31; }  
            set { _displayWind_31 = value; } 
        }                                    

        public TextBox DisplayWind_32        
        {                                    
            get { return _displayWind_32; }  
            set { _displayWind_32 = value; } 
        }                                    
       
        public TextBox DisplayWind_33        
        {                                    
            get { return _displayWind_33; }  
            set { _displayWind_33 = value; } 
        }                                    

        public TextBox DisplayWind_34        
        {                                    
            get { return _displayWind_34; }  
            set { _displayWind_34 = value; } 
        }                                    

        public TextBox DisplayWind_35         
        {                                     
            get { return _displayWind_35; }   
            set { _displayWind_35 = value; }  
        }                                     

        public TextBox DisplayWind_36         
        {                                     
            get { return _displayWind_36; }   
            set { _displayWind_36 = value; }  
        }

        public TextBox DisplayWind_37   //---��� �����������
        {
            get { return _displayWind_37; }
            set { _displayWind_37 = value; }
        }                       

        public TextBox DisplayWind_38         
        {                                     
            get { return _displayWind_38; }   
            set { _displayWind_38 = value; }  
        }                                     

        public TextBox DisplayWind_39         
        {                                     
            get { return _displayWind_39; }   
            set { _displayWind_39 = value; }  
        }                                     

        public TextBox DisplayWind_40         
        {                                     
            get { return _displayWind_40; }   
            set { _displayWind_40 = value; }  
        }

        public TextBox DisplayWind_41
        {
            get { return _displayWind_41; }
            set { _displayWind_41 = value; }
        }

        public TextBox DisplayWind_42
        {
            get { return _displayWind_42; }
            set { _displayWind_42 = value; }
        }

        public TextBox DisplayWind_43
        {
            get { return _displayWind_43; }
            set { _displayWind_43 = value; }
        }

        public TextBox DisplayWind_44
        {
            get { return _displayWind_44; }
            set { _displayWind_44 = value; }
        }

        public TextBox DisplayWind_45
        {
            get { return _displayWind_45; }
            set { _displayWind_45 = value; }
        }

        public TextBox DisplayWind_48     //---��� �����������
        {
            get { return _displayWind_48; }
            set { _displayWind_48 = value; }
        }

        public TextBox DisplayWind_49         //---��� �����������
        {
            get { return _displayWind_49; }
            set { _displayWind_49 = value; }
        }

        public TextBox DisplayWind_50        //---��� �����������
        {
            get { return _displayWind_50; }
            set { _displayWind_50 = value; }
        }

        public TextBox DisplayWind_51     //---��� �����������
        {
            get { return _displayWind_51; }
            set { _displayWind_51 = value; }
        }

        public TextBox DisplayWind_52     //---��� �����������
        {
            get { return _displayWind_52; }
            set { _displayWind_52 = value; }
        }

        public TextBox DisplayWind_53     //---��� �����������
        {
            get { return _displayWind_53; }
            set { _displayWind_53 = value; }
        }

        public TextBox DisplayWind_55     ////---����� �����������
        {
            get { return _displayWind_55; }
            set { _displayWind_55 = value; }
        }

        public TextBox DisplayWind_56//--���������� ������     
        {
            get { return _displayWind_56; }
            set { _displayWind_56 = value; }
        }

        public TextBox DisplayWind_57//---����� �����������
        {
            get { return _displayWind_57; }
            set { _displayWind_57 = value; }
        }

        public TextBox DisplayWind_58//---����� �����������
        {
            get { return _displayWind_58; }
            set { _displayWind_58 = value; }
        }

        public TextBox DisplayWind_59//---����� �����������
        {
            get { return _displayWind_59; }
            set { _displayWind_59 = value; }
        }

        public TextBox DisplayWind_60//---����� �����������
        {
            get { return _displayWind_60; }
            set { _displayWind_60 = value; }
        }

        public TextBox DisplayWind_61//---������ �� ����� �����������
        {
            get { return _displayWind_61; }
            set { _displayWind_61 = value; }
        }

        public TextBox DisplayWind_62//---������ �� ����� �����������
        {
            get { return _displayWind_62; }
            set { _displayWind_62 = value; }
        }

        public TextBox DisplayWind_63//---������ �� ����� �����������
        {
            get { return _displayWind_63; }
            set { _displayWind_63 = value; }
        }

        public TextBox DisplayWind_64//---������ �� ����� �����������
        {
            get { return _displayWind_64; }
            set { _displayWind_64 = value; }
        }

        public TextBox DisplayWind_65//---������ �� ����� �����������
        {
            get { return _displayWind_65; }
            set { _displayWind_65 = value; }
        }

        public string Tte_1
        {
            get { return tte_1; }
            set { tte_1 = value; }
        }

        public string Tte_2
        {
            get { return tte_2; }
            set { tte_2 = value; }
        }

        public string Tte_3
        {
            get { return tte_3; }
            set { tte_3 = value; }
        }

        public string Tte_4
        {
            get { return tte_4; }
            set { tte_4 = value; }
        }

        public string Tte_5
        {
            get { return tte_5; }
            set { tte_5 = value; }
        }

        public string Tte_6
        {
            get { return tte_6; }
            set { tte_6 = value; }
        }

        public string Tte_7
        {
            get { return tte_7; }
            set { tte_7 = value; }
        }

        public string Tte_8
        {
            get { return tte_8; }
            set { tte_8 = value; }
        }

        public string Tte_9
        {
            get { return tte_9; }
            set { tte_9 = value; }
        }

        public string Tte_10
        {
            get { return tte_10; }
            set { tte_10 = value; }
        }

        public string Tte_11
        {
            get { return tte_11; }
            set { tte_11 = value; }
        }

        public string Tte_12
        {
            get { return tte_12; }
            set { tte_12 = value; }
        }

        public string Tte_13
        {
            get { return tte_13; }
            set { tte_13 = value; }
        }

        public string Tte_14
        {
            get { return tte_14; }
            set { tte_14 = value; }
        }

        public string Tte_15
        {
            get { return tte_15; }
            set { tte_15 = value; }
        }

        public string Tte_16
        {
            get { return tte_16; }
            set { tte_16 = value; }
        }

        public string Tte_17
        {
            get { return tte_17; }
            set { tte_17 = value; }
        }

        public string Tte_18
        {
            get { return tte_18; }
            set { tte_18 = value; }
        }

        public string Tte_19
        {
            get { return tte_19; }
            set { tte_19 = value; }
        }

        public string Tte_20
        {
            get { return tte_20; }
            set { tte_20 = value; }
        }

        public string Tte_21
        {
            get { return tte_21; }
            set { tte_21 = value; }
        }

        public string Tte_22
        {
            get { return tte_22; }
            set { tte_22 = value; }
        }

        public string Tte_23
        {
            get { return tte_23; }
            set { tte_23 = value; }
        }

        public string Tte_24
        {
            get { return tte_24; }
            set { tte_24 = value; }
        }

        public string Tte_26
        {
            get { return tte_26; }
            set { tte_26 = value; }
        }

        public string Tte_27       //---��� �����������v
        {
            get { return tte_27; }
            set { tte_27 = value; }
        }

        public string Tte_28           //---��� �����������
        {
            get { return tte_28; }
            set { tte_28 = value; }
        }

        public string Tte_29         //---��� �����������
        {
            get { return tte_29; }
            set { tte_29 = value; }
        }

        public string Tte_30           //---��� �����������
        {
            get { return tte_30; }
            set { tte_30 = value; }
        }

        public string Tte_31
        {
            get { return tte_31; }
            set { tte_31 = value; }
        }

        public string Tte_32
        {
            get { return tte_32; }
            set { tte_32 = value; }
        }

        public string Tte_33
        {
            get { return tte_33; }
            set { tte_33 = value; }
        }

        public string Tte_34
        {
            get { return tte_34; }
            set { tte_34 = value; }
        }

        public string Tte_35
        {
            get { return tte_35; }
            set { tte_35 = value; }
        }

        public string Tte_36
        {
            get { return tte_36; }
            set { tte_36 = value; }
        }

        public string Tte_37           //---��� �����������
        {
            get { return tte_37; }
            set { tte_37 = value; }
        }

        public string Tte_38
        {
            get { return tte_38; }
            set { tte_38 = value; }
        }

        public string Tte_39
        {
            get { return tte_39; }
            set { tte_39 = value; }
        }

        public string Tte_40
        {
            get { return tte_40; }
            set { tte_40 = value; }
        }

        public string Tte_41
        {
            get { return tte_41; }
            set { tte_41 = value; }
        }

        public string Tte_42
        {
            get { return tte_42; }
            set { tte_42 = value; }
        }

        public string Tte_43
        {
            get { return tte_43; }
            set { tte_43 = value; }
        }

        public string Tte_44
        {
            get { return tte_44; }
            set { tte_44 = value; }
        }

        public string Tte_45
        {
            get { return tte_45; }
            set { tte_45 = value; }
        }

        public string Tte_48         //---��� �����������
        {
            get { return tte_48; }
            set { tte_48 = value; }
        }

        public string Tte_49         //---��� �����������
        {
            get { return tte_49; }
            set { tte_49 = value; }
        }

        public string Tte_50         //---��� �����������
        {
            get { return tte_50; }
            set { tte_50 = value; }
        }

        public string Tte_51         //---��� �����������
        {
            get { return tte_51; }
            set { tte_51 = value; }
        }

        public string Tte_52         //---��� �����������
        {
            get { return tte_52; }
            set { tte_52 = value; }
        }

        public string Tte_53         //---��� �����������
        {
            get { return tte_53; }
            set { tte_53 = value; }
        }

        public string Tte_55         //---����� �����������
        {
            get { return tte_55; }
            set { tte_55 = value; }
        }

        public string Tte_56//--���������� ������         
        {
            get { return tte_56; }
            set { tte_56 = value; }
        }

        public string Tte_57         //---����� �����������
        {
            get { return tte_57; }
            set { tte_57 = value; }
        }

        public string Tte_58         //---����� �����������
        {
            get { return tte_58; }
            set { tte_58 = value; }
        }

        public string Tte_59         //---����� �����������
        {
            get { return tte_59; }
            set { tte_59 = value; }
        }

        public string Tte_60         //---����� �����������
        {
            get { return tte_60; }
            set { tte_60 = value; }
        }

        public string Tte_61         //--- ������ �� ����� �����������
        {
            get { return tte_61; }
            set { tte_61 = value; }
        }

        public string Tte_62         //--- ������ �� ����� �����������
        {
            get { return tte_62; }
            set { tte_62 = value; }
        }

        public string Tte_63         //--- ������ �� ����� �����������
        {
            get { return tte_63; }
            set { tte_63 = value; }
        }

        public string Tte_64        //--- ������ �� ����� �����������
        {
            get { return tte_64; }
            set { tte_64 = value; }
        }

        public string Tte_65         //--- ������ �� ����� �����������
        {
            get { return tte_65; }
            set { tte_65 = value; }
        } 
        #endregion

        #region Manager Constructors
        /// <summary>
        /// Constructor to set the properties of our Manager Class
        /// </summary>
        /// <param name="baud">Desired BaudRate</param>
        /// <param name="par">Desired Parity</param>
        /// <param name="sBits">Desired StopBits</param>
        /// <param name="dBits">Desired DataBits</param>
        /// <param name="name">Desired PortName</param>
        public CommunicationManager(string baud, string par, string sBits, string dBits, string name, RichTextBox rtb, RichTextBox rtb_1, TextBox tb_1, TextBox tb_2,
             TextBox tb_3, TextBox tb_4, TextBox tb_5, TextBox tb_6, TextBox tb_7, TextBox tb_8, TextBox tb_9, TextBox tb_10, TextBox tb_11, TextBox tb_12,
             TextBox tb_13, TextBox tb_14, TextBox tb_15, TextBox tb_16, TextBox tb_17, TextBox tb_18, TextBox tb_19, TextBox tb_20, TextBox tb_21, TextBox tb_22,
              TextBox tb_23, TextBox tb_24, TextBox tb_26, TextBox tb_27, TextBox tb_28, TextBox tb_29, TextBox tb_30, TextBox tb_31, TextBox tb_32, TextBox tb_33,
            TextBox tb_34, TextBox tb_35, TextBox tb_36, TextBox tb_37, TextBox tb_38, TextBox tb_39, TextBox tb_40, TextBox tb_41, TextBox tb_42, TextBox tb_43,
            TextBox tb_44, TextBox tb_45, TextBox tb_48, TextBox tb_49, TextBox tb_50, TextBox tb_51, TextBox tb_52, TextBox tb_53, TextBox tb_55, TextBox tb_56,
            TextBox tb_57, TextBox tb_58, TextBox tb_59, TextBox tb_60, TextBox tb_61, TextBox tb_62, TextBox tb_63, TextBox tb_64, TextBox tb_65)
        {
            _baudRate = baud;
            _parity = par;
            _stopBits = sBits;
            _dataBits = dBits;
            _portName = name;
            _displayWindow = rtb;
            _displayWindow_1 = rtb_1;
            _displayWind_1 = tb_1;//��� ����**************************************************
            _displayWind_2 = tb_2;//��� ����**************************************************
            _displayWind_3 = tb_3;//��� ����**************************************************
            _displayWind_4 = tb_4;//��� ����**************************************************
            _displayWind_5 = tb_5;//��� ����**************************************************
            _displayWind_6 = tb_6;//��� ����**************************************************
            _displayWind_7 = tb_7;//��� ����**************************************************
            _displayWind_8 = tb_8;//��� ����**************************************************
            _displayWind_9 = tb_9;//��� ����**************************************************
            _displayWind_10 = tb_10;//��� ����**************************************************
            _displayWind_11 = tb_11;//��� ����**************************************************
            _displayWind_12 = tb_12;//��� ����**************************************************
            _displayWind_13 = tb_13;//��� ����**************************************************
            _displayWind_14 = tb_14;//��� ����**************************************************
            _displayWind_15 = tb_15;//��� ����**************************************************
            _displayWind_16 = tb_16;//��� ����**************************************************
            _displayWind_17 = tb_17;//��� ����**************************************************
            _displayWind_18 = tb_18;//��� ����**************************************************
            _displayWind_19 = tb_19;//��� ����**************************************************
            _displayWind_20 = tb_20;//��� ����**************************************************
            _displayWind_21 = tb_21;
            _displayWind_22 = tb_22;
            _displayWind_23 = tb_23;
            _displayWind_24 = tb_24;
            _displayWind_30 = tb_26;
            _displayWind_27 = tb_27;//---��� �����������
            _displayWind_28 = tb_28;//---��� �����������//++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            _displayWind_29 = tb_29;//---��� �����������
            _displayWind_30 = tb_30;//---��� �����������
            _displayWind_31 = tb_31;
            _displayWind_32 = tb_32;
            _displayWind_33 = tb_33;
            _displayWind_34 = tb_34;
            _displayWind_35 = tb_35;
            _displayWind_36 = tb_36;
            _displayWind_37 = tb_37;//---��� �����������
            _displayWind_38 = tb_38;
            _displayWind_39 = tb_39;
            _displayWind_40 = tb_40;
            _displayWind_41 = tb_41;
            _displayWind_42 = tb_42;
            _displayWind_43 = tb_43;
            _displayWind_44 = tb_44;
            _displayWind_45 = tb_45;
            _displayWind_48 = tb_48;//---��� �����������
            _displayWind_49 = tb_49;//---��� �����������
            _displayWind_50 = tb_50;//---��� �����������
            _displayWind_51 = tb_51;//---��� �����������
            _displayWind_52 = tb_52;//---��� �����������
            _displayWind_53 = tb_53;//---��� �����������
            _displayWind_55 = tb_55;//---����� �����������
            _displayWind_56 = tb_56;//--���������� ������
            _displayWind_57 = tb_57;//--����� �����������
            _displayWind_58 = tb_58;//--����� �����������
            _displayWind_59 = tb_59;//--����� �����������
            _displayWind_60 = tb_60;//--����� �����������
            _displayWind_61 = tb_61;//--������ �� ����� �����������
            _displayWind_62 = tb_62;//--������ �� ����� �����������
            _displayWind_63 = tb_63;//--������ �� ����� �����������
            _displayWind_64 = tb_64;//--������ �� ����� �����������
            _displayWind_65 = tb_65;//--������ �� ����� �����������
            //now add an event handler
            comPort.DataReceived += new SerialDataReceivedEventHandler(comPort_DataReceived);
            comPort.DataReceived += new SerialDataReceivedEventHandler(sp_DataReceived);//**��� �� ����������� �������**
            //comPort.DataReceived += new SerialDataReceivedEventHandler(sppp);//**��� �� ����������� �������**
           // btnGetDataFromForm.Click += new EventHandler(btnGetDataFromForm_Click);
            //btnGetDataFromClass.Click += new EventHandler(btnGetDataFromClass_Click);
        }

        /// <summary>
        /// Comstructor to set the properties of our--Comstructor, ����� ���������� �������� ������
        /// serial port communicator to nothing--������������ ����������������� ����� �� � ����
        /// </summary>
        public CommunicationManager()
        {
            _baudRate = string.Empty;
            _parity = string.Empty;
            _stopBits = string.Empty;
            _dataBits = string.Empty;
            _portName = string.Empty;// comPort.ToString;// PortName; //_portName;// "";//"COM3";//*****������� "COM3" �� "string.Empty"*********************
            _displayWindow = null;
            _displayWindow_1 = null;
            //add event handler
            comPort.DataReceived += new SerialDataReceivedEventHandler(comPort_DataReceived);
            comPort.DataReceived += new SerialDataReceivedEventHandler(sp_DataReceived);//**��� �� ����������� �������**��������� 21.05-��� ����***********************************
          //  comPort.DataReceived += new SerialDataReceivedEventHandler(sppp);//--��� �������-������� ����� �� ������� ������� ���������� ������ "������������� �� ���
        }
        #endregion

        #region WriteData
        public void WriteData(string msg)
        {
            switch (CurrentTransmissionType)
            {
                case TransmissionType.Text:
                    try
                    {
                        //first make sure the port is open
                        //if its not open then open it
                        if (!(comPort.IsOpen == true)) comPort.Open();
                        //send the message to the port
                    //    msg = packet_string;
                        comPort.Write(msg);
                        //display the message
                        DisplayData(MessageType.Outgoing, msg + "\n");
                    }

                    catch
                    {
                        MessageBox.Show("1-������ ������ ������ � ����");
                    }
                    break;

                case TransmissionType.Hex:
                    try
                    {
                        //convert the message to byte array
                        byte[] newMsg = HexToByte(msg);
                        //send the message to the port
                        comPort.Write(newMsg, 0, newMsg.Length);
                        //convert back to hex and display
                        DisplayData(MessageType.Outgoing, ByteToHex(newMsg) + "\n");
                    }
                    catch (FormatException ex)
                    {
                        //display error message
                        DisplayData(MessageType.Error, ex.Message);
                    }
                    finally
                    {
                        //           _displayWindow.SelectAll();
                    }
                    break;
                default: try
                    {
                        //first make sure the port is open--������� ��������������, ��� ���� ������
                        //if its not open then open it--���� �� �������� ����� ��������� ���
                        if (!(comPort.IsOpen == true)) comPort.Open();
                        //send the message to the port
                        comPort.Write(msg);
                        //display the message--���������� ���������
                        DisplayData(MessageType.Outgoing, msg + "\n");
                    }
                    catch
                    {
                        MessageBox.Show("2-������ ��� Hex ��������");
                    }
                    break;
                //break;//************************������ ��������������**********************************
            }
        }
        #endregion

        #region HexToByte
        /// <summary>
        /// method to convert hex string into a byte array
        /// </summary>
        /// <param name="msg">string to convert</param>
        /// <returns>a byte array</returns>
       public byte[] HexToByte(string msg)
        {
            //remove any spaces from the string
            msg = msg.Replace(" ", "");
            //create a byte array the length of the--�������� ������ ����� �����
            //divided by 2 (Hex is 2 characters in length)--����������� �� 2 (����������������� - 2 ������� � �����), 
            byte[] comBuffer = new byte[msg.Length / 2];
            //loop through the length of the provided string
            for (int i = 0; i < msg.Length; i += 2)
                //convert each set of 2 characters to a byte--������������ ������ ����� 2 �������� � �����
                //and add to the array--� �������� � �������
                comBuffer[i / 2] = (byte)Convert.ToByte(msg.Substring(i, 2), 16);
            //return the array
            return comBuffer;
        }  
        #endregion

        #region ByteToHex
        /// <summary>
        /// method to convert a byte array into a hex string
        /// </summary>
        /// <param name="comByte">byte array to convert</param>
        /// <returns>a hex string</returns>
        public string ByteToHex(byte[] comByte)
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
        #endregion

        #region DisplayData
        /// <summary>
        /// method to display the data to & from the port
        /// on the screen
        /// </summary>
        /// <param name="type">MessageType of the message</param>
        /// <param name="msg">Message to display</param>
        [STAThread]
        //������� ��� ������� ��� ����� ��� ����� � ���� ������              //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        void sp_DataReceived(object sender, SerialDataReceivedEventArgs e)     //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        {                                                                      //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            //  string data = /*comPort.ReadLine();//  */ comPort.ReadExisting();//!!!!!!!������ ���,� �� ReadLine-����� ��� ����������� ���� ������ ������ ����� �������!!!!!!!!!
            //    sas = /*comPort.ReadLine();//  */ comPort.ReadExisting();
            //    sas = Convert.ToString(comBuffer);
            //        sas = msg;
            //    Thread.Sleep(200);
            //      string data = /*comPort.ReadLine();//  */ comPort.ReadExisting();
            //-------------------------------------------------------------------------------------------------------------------------- 
            //��� ������ ������ �� ���������,� ��� �������������� ����� � ������ �����
            //string[] StringData = Array.ConvertAll<byte, string>(commBuffer, x => x.ToString());//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
            //++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            //���� ��� -- ������ �� ����,� �� ������ ������ �������� ������������ ��� ����������� � ���� ��� ������ ������-���������.�� � ���� ��� ���,
            // � ������� �� �����������, �� ��������������--�� ��������  ����� "Select" � ������ ������� ����.
            //������ ����� ����� MVS ���� 10-�,���� ��������� � � ���� ��� �������� � 2016 �.
            //����� � ���� ���� ��������,��� --"���� ��� �������� ���� � ������ ���� ������ �����, �� ����� ��� ��� (��� ������� �������� �����)"
            /*        string s = "7424278378927";
                    byte[] bytes = s.Select(ch => (byte)(ch - '0')).ToArray();             */
            //��� ������ Select � ����� ��� ����� ��������� ���:
            /*       string s = "7424278378927";
                   byte[] bytes = new byte[s.Length];
                   for (int i = 0; i < s.Length; i++)
                   {
                       bytes[i] = (byte)(ch - '0');
                   }             */
            //������� �� ������ MSDN (https://msdn.microsoft.com/ru-ru/library/ds4kkd55(v=vs.90).aspx)����� ���:
            /*         byte[] bt = new byte[5];
                     String str = textBox_Out.Text;
                     bt = str.GetBytes(str);    */
            //�� ��-��--"������ CS1061 'string" �� �������� ����������� ��� "GetBytes" � �� ������� ����� ����� ���������� "GetBytes", 
            //����������� ��� "string" � �������� ������� ��������� (��������, ��������� ��������� using ��� ������ �� ������).
            //���� ���� ��������� "using System;" � "using System.Text" � ���� ������ �� ����������.
            //����� ��� ��� :-- "Encoding.Default.GetBytes(string s);"-- � ������������� ������ � �����-����������.
            //++++++++++++++++++++++++++++++++++++++++++++++++��� ����� � ������+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            //MD5 md5 = new MD5CryptoServiceProvider();
            //byte[] ass = md5.ComputeHash(Encoding.UTF8.GetBytes(textBox1.Text));
            //string asss = System.Text.Encoding.GetEncoding(1251).GetString(ass);
            //textBox2.Text = asss;<---���� ��� ����,��-->var asss = string.Join("", ass.Select(b => b.ToString("x2")));<--���� ��� ����������� 
            //������ ������ � ������ � ����������������� �����. ����� Select ���������� ������ ���� � hex ������ �� ���� �������� ("x2") 
            //������� ����� ����������� � ������ ����� ������� string.Join.
            //!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!������� � ������ C# 3.0 � ���� ���� ��������� �������� ����� var!!!!!!!!!!!!!
            //+++++++++++++++++++++++++++++++++++++++++++++++++++��� ����+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            //tring s = "1,2,3,4,5,6,7,8,9,0,1,2,3,4,5,6,7,8,8,9,0";
            //yte[] b = s.Split(',').Select(byte.Parse).ToArray();
            //+++++++++++++++++++++++++++++++++++++++++++++++++��� ��������+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
            //�� � ���� ������ �� ����������� Encoding.Default. ������ ��� Encoding.Default �������� ANSI-��������� �� �������,
            //������� � �������� ������������ �� ��������� � ����������, � ������� ��� ������ ������
            //-------------------------------------------------------------------------------------------------------------------------------------------
            //            int byes = comPort.BytesToRead;
            // string mysg = Convert.ToString(byytes);
            // packet_string = comPort.ReadExisting(); 
            //    string myg = comPort.ReadLine();
            // byytes = new int[118];
            //            byte[] byes = new byte[118];
            //  byytes[mysg.Length] = (byte)Convert.ToByte(mysg.Substring(0, byes-1), 16);
            //           string mysg = comPort.ReadExisting();
            /*string msg */
            //string mysg = Convert.ToString(comPort.Read(byes, 0, 118));// Read(byte[]Buffer);//comPort.ReadExisting();


            // packet_string = data;
            //        int[] bytes = new byte[data.Length];//= comPort.BytesToRead;
            //create a byte array to hold the awaiting data
            //        byte[] comBuffer = new byte[bytes];
            //read the data and store it
            //        comPort.Read(comBuffer, 0, bytes);

            if (dlina_mmsg == 106)
            {
                _displayWind_1.Invoke(new EventHandler(delegate { _displayWind_1.Text = tte_1; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_2.Invoke(new EventHandler(delegate { _displayWind_2.Text = tte_2; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_3.Invoke(new EventHandler(delegate { _displayWind_3.Text = tte_3; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_4.Invoke(new EventHandler(delegate { _displayWind_4.Text = tte_4; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_5.Invoke(new EventHandler(delegate { _displayWind_5.Text = tte_5; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_6.Invoke(new EventHandler(delegate { _displayWind_6.Text = tte_6; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_7.Invoke(new EventHandler(delegate { _displayWind_7.Text = tte_7; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_8.Invoke(new EventHandler(delegate { _displayWind_8.Text = tte_8; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_9.Invoke(new EventHandler(delegate { _displayWind_9.Text = tte_9; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_10.Invoke(new EventHandler(delegate { _displayWind_10.Text = tte_10; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_11.Invoke(new EventHandler(delegate { _displayWind_11.Text = tte_11; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_12.Invoke(new EventHandler(delegate { _displayWind_12.Text = tte_12; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_13.Invoke(new EventHandler(delegate { _displayWind_13.Text = tte_13; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_15.Invoke(new EventHandler(delegate { _displayWind_15.Text = tte_15; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_16.Invoke(new EventHandler(delegate { _displayWind_16.Text = tte_16; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_17.Invoke(new EventHandler(delegate { _displayWind_17.Text = tte_17; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_18.Invoke(new EventHandler(delegate { _displayWind_18.Text = tte_18; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_19.Invoke(new EventHandler(delegate { _displayWind_19.Text = tte_19; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                _displayWind_20.Invoke(new EventHandler(delegate { _displayWind_20.Text = tte_20; }));//!!!!!!!!!!!_displayWind_21.Invoke(new EventHandler(delegate { _displayWind_21.Text = tte_21; }));
                _displayWind_21.Invoke(new EventHandler(delegate { _displayWind_21.Text = tte_21; }));
                _displayWind_22.Invoke(new EventHandler(delegate { _displayWind_22.Text = tte_22; }));
                _displayWind_23.Invoke(new EventHandler(delegate { _displayWind_23.Text = tte_23; }));
                _displayWind_24.Invoke(new EventHandler(delegate { _displayWind_24.Text = tte_24; }));
                _displayWind_27.Invoke(new EventHandler(delegate { _displayWind_27.Text = tte_27; }));//---��� �����������
                _displayWind_28.Invoke(new EventHandler(delegate { _displayWind_28.Text = tte_28; }));//---��� �����������
                _displayWind_29.Invoke(new EventHandler(delegate { _displayWind_29.Text = tte_29; }));//---��� �����������
                _displayWind_30.Invoke(new EventHandler(delegate { _displayWind_30.Text = tte_30; }));//---��� �����������
                _displayWind_37.Invoke(new EventHandler(delegate { _displayWind_37.Text = tte_37; }));//---��� �����������
                _displayWind_48.Invoke(new EventHandler(delegate { _displayWind_48.Text = tte_48; }));//---��� �����������
            //    _displayWind_49.Invoke(new EventHandler(delegate { _displayWind_49.Text = tte_49; }));//---��� �����������
                _displayWind_50.Invoke(new EventHandler(delegate { _displayWind_50.Text = tte_50; }));//---��� �����������
                _displayWind_51.Invoke(new EventHandler(delegate { _displayWind_51.Text = tte_51; }));//---��� �����������
                _displayWind_52.Invoke(new EventHandler(delegate { _displayWind_52.Text = tte_52; }));//---��� �����������
                _displayWind_53.Invoke(new EventHandler(delegate { _displayWind_53.Text = tte_53; }));//---��� �����������
                _displayWind_56.Invoke(new EventHandler(delegate { _displayWind_56.Text = tte_56; }));//-��� ���������� ������-"��������� �� �����������"
                //_displayWind_26.Invoke(new EventHandler(delegate { _displayWind_26.Text = tte_26; }));//����� �� ����� ���������-���� ��������� �������� �� ������
                //_displayWind_32.Invoke(new EventHandler(delegate { _displayWind_32.Text = tte_32; }));//����� �� �������� �� ������� ������� �������-���� ��������� �������� �� ������
                _displayWind_33.Invoke(new EventHandler(delegate { _displayWind_33.Text = tte_33; }));
                _displayWind_34.Invoke(new EventHandler(delegate { _displayWind_34.Text = tte_34; }));
                _displayWind_35.Invoke(new EventHandler(delegate { _displayWind_35.Text = tte_35; }));
                //             frmMain frm_3 = new frmMain();//-��� ���������� ������-"��������� �� �����������" � ���� �� ���������
   //             if (knopkanephelometra == 50) { frm_3.flagcolor = 3; frm_3.frmMain_button15color(sender, e);}
   //             if (knopkanephelometra == 48) frm_3.flagcolor = 0;
   //             frm_3.radioButton3_CheckedChanged(sender, e);
                //CWnd::ShowWindow(SW_SHOW/SW_HIDE); 
                //frm_3.button15.5081951--6hnbdahdhf
            }

            if (dlina_mmsg == 20)
            {
          /*      _displayWind_27.Invoke(new EventHandler(delegate { _displayWind_27.Text = tte_27; }));
                _displayWind_28.Invoke(new EventHandler(delegate { _displayWind_28.Text = tte_28; }));//++++++++++++++++++++++++++++++++++++++++++++++
                _displayWind_29.Invoke(new EventHandler(delegate { _displayWind_29.Text = tte_29; }));
                _displayWind_30.Invoke(new EventHandler(delegate { _displayWind_30.Text = tte_30; }));       */
                _displayWind_31.Invoke(new EventHandler(delegate { _displayWind_31.Text = tte_31; }));
                if (marker_komand == 11)
                {//��� ��� ������� ��� ����,����� ���� ��������� � ����������� �� ������,����� ��� ������� ����� ������ (����������� ��� ������ ����)���������� 2 ��������.
                    //� ����� �������� ����� ������,� ������ ���� ������.�� ��� ������ �������� � ������������� ������� ��� � �� ���������.
                    //����� ��� ����������� ����,����� ������ ���������.��� ����� � ��� �������.  
                    if (markiz == 3) { _displayWind_36.Invoke(new EventHandler(delegate { _displayWind_36.Text = tte_36; })); markiz = 0; };
                    if (markpr == 3) { _displayWind_38.Invoke(new EventHandler(delegate { _displayWind_38.Text = tte_38; })); markpr = 0; };
                  /*  _displayWind_36.Invoke(new EventHandler(delegate { _displayWind_36.Text = tte_36; }));
                    _displayWind_38.Invoke(new EventHandler(delegate { _displayWind_38.Text = tte_38; }));   */
                }
                if (marker_komand == 12)
                {//��� ��� ������� ��� ����,����� ���� ��������� � ����������� �� ������,����� ��� ������� ����� ������ (����������� ��� ������ ����)���������� 2 ��������.
                 //� ����� �������� ����� ������,� ������ ���� ������.�� ��� ������ �������� � ������������� ������� ��� � �� ���������.
                 //����� ��� ����������� ����,����� ������ ���������.��� ����� � ��� �������.  
                 if (markiz == 3) { _displayWind_39.Invoke(new EventHandler(delegate { _displayWind_39.Text = tte_39; })); markiz = 0; };
                 if (markpr == 3) { _displayWind_40.Invoke(new EventHandler(delegate { _displayWind_40.Text = tte_40; })); markpr = 0; };
                   
                    /* _displayWind_39.Invoke(new EventHandler(delegate { _displayWind_39.Text = tte_39; }));
                    _displayWind_40.Invoke(new EventHandler(delegate { _displayWind_40.Text = tte_40; }));  */
                }

                if (marker_komand == 13)
                {
                    _displayWind_42.Invoke(new EventHandler(delegate { _displayWind_42.Text = tte_42; }));
                    _displayWind_43.Invoke(new EventHandler(delegate { _displayWind_43.Text = tte_43; }));
                }

                if (marker_komand == 14)
                {
                    _displayWind_44.Invoke(new EventHandler(delegate { _displayWind_44.Text = tte_44; }));
                    _displayWind_45.Invoke(new EventHandler(delegate { _displayWind_45.Text = tte_45; }));
                }
                if (uzel_tip == 9)
                {
                    _displayWind_14.Invoke(new EventHandler(delegate { _displayWind_14.Text = tte_14; }));//!!!!!!!!!!!!!!!!!!!!!!!!!
                }

            }

            if ((dlina_mmsg == 24) & (uzel_tip == 1))//------------��������� ����������� DD1 
            {//��� ��� ������� ��� ����,����� ���� ��������� � ����������� �� ������,����� ��� ������� ����� ������ (����������� ��� ������ ����)���������� 2 ��������.
             //� ����� �������� ����� ������,� ������ ���� ������.�� ��� ������ �������� � ������������� ������� ��� � �� ���������.
             //����� ��� ����������� ����,����� ������ ���������.��� ����� � ��� �������.  
                if (markiz == 3) {_displayWind_36.Invoke(new EventHandler(delegate { _displayWind_36.Text = tte_36; })); markiz = 0;};
                if (markpr == 3) {_displayWind_38.Invoke(new EventHandler(delegate { _displayWind_38.Text = tte_38; })); markpr = 0;};
            }

            if (marker_komand == 111)
            {
                _displayWind_41.Invoke(new EventHandler(delegate { _displayWind_41.Text = tte_41; }));
                _displayWind_42.Invoke(new EventHandler(delegate { _displayWind_42.Text = tte_42; }));
                _displayWind_43.Invoke(new EventHandler(delegate { _displayWind_43.Text = tte_43; }));
                _displayWind_44.Invoke(new EventHandler(delegate { _displayWind_44.Text = tte_44; }));
                _displayWind_45.Invoke(new EventHandler(delegate { _displayWind_45.Text = tte_45; }));
            }

            if (dlina_mmsg == 12)
            {
                _displayWind_56.Invoke(new EventHandler(delegate { _displayWind_56.Text = tte_56; }));//-��� ���������� ������-"��������� �� �����������"
                if (marker_komand == 21) { _displayWind_55.Invoke(new EventHandler(delegate { _displayWind_55.Text = tte_55; })); marker_komand = 0; };//---��������� � ����������
                if (marker_komand == 22) { _displayWind_57.Invoke(new EventHandler(delegate { _displayWind_57.Text = tte_57; })); marker_komand = 0; };//---��������� � ����������
                if (marker_komand == 23) { _displayWind_58.Invoke(new EventHandler(delegate { _displayWind_58.Text = tte_58; })); marker_komand = 0; };//---��������� � ����������
                if (marker_komand == 24) { _displayWind_59.Invoke(new EventHandler(delegate { _displayWind_59.Text = tte_59; })); marker_komand = 0; };//---��������� � ����������
                if (marker_komand == 25) { _displayWind_60.Invoke(new EventHandler(delegate { _displayWind_60.Text = tte_60; })); marker_komand = 0; };//---��������� � ����������
                { _displayWind_61.Invoke(new EventHandler(delegate { _displayWind_61.Text = tte_61; })); };//---��������� � ������
                { _displayWind_62.Invoke(new EventHandler(delegate { _displayWind_62.Text = tte_62; })); };//---��������� � ������
                { _displayWind_63.Invoke(new EventHandler(delegate { _displayWind_63.Text = tte_63; })); };//---��������� � ������
                { _displayWind_64.Invoke(new EventHandler(delegate { _displayWind_64.Text = tte_64; })); };//---��������� � ������
                { _displayWind_65.Invoke(new EventHandler(delegate { _displayWind_65.Text = tte_65; })); };//---��������� � ������
            }

            //display the data to the user
            //DisplayData(MessageType.Incoming, ByteToHex(comBuffer) + "\n");
            //try
            //{
            //       DisplayData(MessageType.Outgoing, ByteToHex(comBuffer) + "\n");
            //          DisplayData(MessageType.Outgoing, msg + "----" + DateTime.Now);
            //       DisplayData(MessageType.Outgoing, ByteToHex(comBuffer) + "\n");
            //}
            //catch
            //{
            //                MessageBox.Show("!!!!-������ ������ ������ � ����");
            //} 

            // ����������� �������� �� ������ UI, � �������� ������, �������
            // ���� ������� ������������ �������.
            // ---- ����� "si_DataReceived" ����� �������� � ������ UI,
            // ������� �������� ��������� ��������� ���� TextBox.
            //         this.comPort_DataReceived(new StDelegate(TextBox1),
            //                          new object[] {data});

            // this.BeginInvoke(new StDelegate(TextBox1),
            //      new object[] { data });
        }
                                                       //-��� ���������� ������-"��������� �� �����������" � ���� �� ���������
     /*   void sppp(object sender, SerialDataReceivedEventArgs e)     //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
        {
             // frmMain frm_3 = new frmMain();
              //if (knopkanephelometra == 50) { frm_3.flagcolor = 3; frm_3.frmMain_button15color(sender,e);}
              //if (knopkanephelometra == 48) frm_3.flagcolor = 0; 
            frmMain frm_3 = new frmMain();
            frm_3.radioButton3_CheckedChanged(sender, e);
            //frm_3.b
        } */

        private void DisplayData(MessageType messageType, object msg)
        {
            throw new NotImplementedException();
        }
        //   private delegate void SetTextDeleg(string text);//=======================

        public void DisplayData(MessageType type, string msg)
        {
            _displayWindow.Invoke(new EventHandler(delegate
            {
            //  _displayWindow.Clear();
             // _displayWindow.SelectedText = string.Empty;
            //  _displayWindow.SelectionColor = MessageColor[(int)type];//������� ���-�� ������� � ���� ������� (�������?),����� ���� ������ ������������
             // _displayWindow.Text = sas + "\n" + msg;
                _displayWindow.AppendText(msg + "\n");//!!!!!!!!-��� �� ����� ������ ������� ����� ��������� ,��� ���� �� �������� � RichTextBox
            // _displayWindow.Text = msg + "----" + DateTime.Now;// sas + "\n" + msg;//!!!!!!������ �����,� �� ���� �� ���.687 ����� �� ����� �������� �����,� ����� ������� ���������   
              _displayWindow.ScrollToCaret();
             // sas = msg;
            }));
        }

        private void DisplayData_1(MessageType messageType, object mysg)
        {
            throw new NotImplementedException();
        }
        
        public void DisplayData_1(MessageType type, string mysg)
        {
            _displayWindow_1.Invoke(new EventHandler(delegate
            {
               // sas = sa;
                mysg = sas;
                //  _displayWindow.Clear();
                _displayWindow_1.SelectedText = string.Empty;
                //_displayWindow_1.SelectionColor = MessageColor[(int)type];//!!!!!!���� �����A ��������� ����!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
                // _displayWindow.Text = sas + "\n" + msg;
                _displayWindow_1.AppendText(mysg);//!!!!!!!!-��� �� ����� ������ ������� ����� ��������� ,��� ���� �� �������� � RichTextBox
               // _displayWindow_1.Text = "\n";//!!!!!!���� ���� ������ � ���� ���������!!!!!������ �����,� �� ���� �� ���.687 ����� �� ����� �������� �����,� ����� ������� ���������
                 _displayWindow_1.ScrollToCaret();
            }));
        }

   /*    public void DisplayData_3(MessageType type, string msg)
        {//tte_61.
            _displayWindow.Invoke(new EventHandler(delegate
            {
                  tte_61 = "[f[f[f[f";
            //  _displayWindow.Clear();
             // _displayWindow.SelectedText = string.Empty;
            //  _displayWindow.SelectionColor = MessageColor[(int)type];//������� ���-�� ������� � ���� ������� (�������?),����� ���� ������ ������������
             // _displayWindow.Text = sas + "\n" + msg;
              //  _displayWindow.AppendText(msg + "\n");//!!!!!!!!-��� �� ����� ������ ������� ����� ��������� ,��� ���� �� �������� � RichTextBox
            // _displayWindow.Text = msg + "----" + DateTime.Now;// sas + "\n" + msg;//!!!!!!������ �����,� �� ���� �� ���.687 ����� �� ����� �������� �����,� ����� ������� ���������   
             // _displayWindow.ScrollToCaret();
             // sas = msg;
            }));
        }  */
        
        #endregion

        #region OpenPort
        public bool OpenPort()
        {
            try
            {
                //first check if the port is already open
                //if its open then close it
                if (comPort.IsOpen == true) comPort.Close();

                //set the properties of our SerialPort Object
                comPort.BaudRate = int.Parse(_baudRate);    //BaudRate
                comPort.DataBits = int.Parse(_dataBits);    //DataBits
                comPort.StopBits = (StopBits)Enum.Parse(typeof(StopBits), _stopBits);    //StopBits
                comPort.Parity = (Parity)Enum.Parse(typeof(Parity), _parity);    //Parity
                comPort.PortName = _portName;   //PortName;
                //now open the port
                comPort.Open();
                marker_openport = 5;
                //display message
                DisplayData(MessageType.Normal, "����  -- " + _portName + "  ������ " + DateTime.Now + "\n");//***Port opened at**************************************
                return true;
            }
            catch (Exception ex)
            {
            //    _displayWindow.Clear();
            //    _displayWindow.SelectionColor = Color.Red;
                DisplayData(MessageType.Error, ex.Message);
            //    _displayWindow.Clear();
                return false;
            }
        }
        #endregion

        #region ClosePort
        public bool ClosePort()
        {
            try
            {
                DisplayData(MessageType.Normal, "����  -- " + _portName + "  ������ " + DateTime.Now + "\n");//������ �����,� �� ����-����� ��������� �������� ���������!!!!!!
                if (comPort.IsOpen == false) DisplayData(MessageType.Normal, "�������� ��������� ����! " + "\n");//������ �����,� �� ����-����� ��������� �������� ���������!!!!!!
                //first check if the port is already open
                //if its open then close it
                if (comPort.IsOpen == true) comPort.Close();

                //set the properties of our SerialPort Object
           //     comPort.BaudRate = int.Parse(_baudRate);    //BaudRate
           //     comPort.DataBits = int.Parse(_dataBits);    //DataBits
           //     comPort.StopBits = (StopBits)Enum.Parse(typeof(StopBits), _stopBits);    //StopBits
           //     comPort.Parity = (Parity)Enum.Parse(typeof(Parity), _parity);    //Parity
           //     comPort.PortName = _portName; //PortName;
                //now open the port
                comPort.Close();
                marker_openport = 0;
                //display message
           //     sas = "����  -- " + _portName + "  ������ " + DateTime.Now;
             //   DisplayData(MessageType.Normal, tte_20);//***Port opened at*******************************************
        //        DisplayData(MessageType.Normal, "����  -- " + _portName + "  ������ " + DateTime.Now + "\n");
        //        if (comPort.IsOpen == false) DisplayData(MessageType.Normal, "�������� ��������� ����! " + "\n");
                return true;
            }
            catch (Exception ex)
            {
                DisplayData(MessageType.Error, ex.Message);
                return false;
            }
        }
        #endregion

        #region SetParityValues
        public void SetParityValues(object obj)
        {
            foreach (string str in Enum.GetNames(typeof(Parity)))
            {
                ((ComboBox)obj).Items.Add(str);
            }
        }
        #endregion

        #region SetStopBitValues
        public void SetStopBitValues(object obj)
        {
            foreach (string str in Enum.GetNames(typeof(StopBits)))
            {
                ((ComboBox)obj).Items.Add(str);
            }
        }
        #endregion

        #region SetPortNameValues
        public void SetPortNameValues(object obj)
        {

            foreach (string str in SerialPort.GetPortNames())
            {
                ((ComboBox)obj).Items.Add(str);
            }
        }
        #endregion

        #region comPort_DataReceived
        //  int i = 0;//****� ���� ����� ��������������, �� ��������� ������� ����� ����*******************************************************************************
        /// <summary>
        /// method that will be called when theres data waiting in the buffer
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        void comPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            flag_priema = 1;
/* ��� ������ ����� 21.08.2018 */Thread.Sleep(100);//!!��� ������� ��������� ReadExisting() ��������� �������� �� �Ψ� �����!!������ �������� ��������� Sleep ��� ��������� ������ ���� ����� �� ������ ������
            int i = 0;//!!!!������ �����,� �� ��������� ������� ����� ����!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!***************************************************
            //int maximum = 0;
            //double max_double, max_doub;
            /////int kolvo_tochek;
            //m = new Matr(rangmatr, rangmatr);
            //double g = new frmMain(double);
        /*    try                     //------------------------����� � ���� frmMain-------------------------------------------------
            {
                matrica = Convert.ToInt32(_displayWind_26.Text);
            }
            catch
            { matrica = 0; }        *///------------------------����� � ���� frmMain-------------------------------------------------
            //kolvo_tochek = matrica;// Convert.ToInt32(tte_26);
 //           m = new Matr(matrica, matrica);//������� ��� � ����� ����??????????????????????����� ������ ��� ���� ������ ����������???????????????
            /////double[] massif = new double[kolvo_tochek];
            //     massif.Length = matrica;
            //determine the mode the user selected (binary/string)
            switch (CurrentTransmissionType)
            {                   
                //user chose string
                                 case TransmissionType.Text: 
                                 string s, znachenie_xkpd;//,sss,ss = null,s1,s2,s3,s4,s5,s6,s7,s8=null,s9=null,s10=null,
                                     //��������� "= null" ������� �� �������� ������ (�������) ��� ����������                          
                                 //    s11 = null, s12 = null, s13 = null, s14 = null, s15 = null, s16 = null, s17 = null;
                //arr[] byte = new byte
                                //read data waiting in the buffer
                                 try
                                 {
                                 /*    int byytes = comPort.BytesToRead;
                                     byte[] comBuuffer = new byte[byytes];
                                     comPort.Read(comBuuffer, 0, byytes);
                                     frmMain frm_2 = new frmMain();
                                     //string[] StringData = Array.ConvertAll<byte, string>(comBuuffer, x => x.ToString());
                                     //string mysg = Convert.ToString(byytes);
                                     string msg = ByteToHex(comBuuffer);
                                    
                                     int[] omBuerr = new int[msg.Length];
                                     for (int ii = 1; ii < msg.Length; ii += 1)
                                         omBuerr[ii] = omBuerr[ii] - 30;   */
                                     
                                     //msg = msg.Replace(" ", ""); 
                                     //msg = ByteToHex(comBuuffer);
                                     DisplayData(MessageType.Incoming, msg + "\n");
                                     //string mmsg = comPort.ReadLine();//��� �������� � ��������� ��� ��������������
/* ��� ������ ����� 21.08.2018 */  //Thread.Sleep(100);//!!��� ������� ��������� ReadExisting() ��������� �������� �� �Ψ� �����!!������ �������� ��������� Sleep ��� ��������� ������ ���� ����� �� ������ ������
                                     string mmsg = comPort.ReadExisting();//��� ���� �������� �� ������ ��������� � ���,� ����� �� ������ 118 ���� (�� 116),�� ������ 80(���� ������)
                                     dlina_mmsg = mmsg.Length;
                                     if (dlina_mmsg < 10) { marker_komand = 111; };
                                     // Thread.Sleep(200);
                                     //string mmsg = comPort.ReadLine();//��� ������ �������� � ����,���� ���-�� ����� �� ���,�������������� "Thread.Sleep(200)" ������� ��� 500 � ��������,��� �����
                                     if (dlina_mmsg == 118)                         //��� ����� �����������
                                     {                                              //��� ����� �����������
                                         znachenie_xkpd = mmsg.Substring(106, 12);  //��� ����� �����������
                                         mmsg = znachenie_xkpd;                     //��� ����� �����������
                                         dlina_mmsg = 12;                           //��� ����� �����������
                                     }                                              //��� ����� �����������
//----------------------------------------------------�������� ������ �������, ��������� �������-----------------------------------------------------------------                        
                                    int[] vxodnoi = new int[dlina_mmsg];
                                    // int[] omBuerr = new int[mmsg.Length - 4];                                                        //---���� �� �������
                                     for (int ii = 0; ii < dlina_mmsg; ii += 1)                                                 //---���� �� �������
                                         vxodnoi[ii] = Convert.ToInt32(mmsg[ii]); //(byte)Convert.ToInt32(mmsg[ii]); 
                                     byte[] packet;
                                     packet = new byte[dlina_mmsg];
                                     for (int ii = 0; ii < dlina_mmsg; ii += 1)                                           
                                     {                                                                                      
                                         packet[ii] = (byte)Convert.ToByte(vxodnoi[ii]);                                   
                                     }

                                     string messaga;
                                     string vx_paket = ByteeToHexx(packet); 
                                     int pervui = Convert.ToInt32(vx_paket[0]);
                                     knopkanephelometra = packet[4];// Convert.ToInt32(vx_paket[4]);
                                     char crc_1 = vx_paket[vx_paket.Length - 8];
                                     char crc_2 = vx_paket[vx_paket.Length - 5];
                                     char[] ch = { crc_1, crc_2 };
                                     string str_crc = new string(ch);
                                                                          
                                     if (pervui != 50) //��� ���������� � ��������� ��������� �� ����� ��� �������� � Hex ��� ������ �����
                                     {   
                                         messaga = "��������� ���� ������� ����� �������� ��������! ��� ������� ���������.";
                                         DisplayData(MessageType.Outgoing, messaga);
                                        // MessageBox.Show("������ ���� ������� ����� �������� ��������! ��� ������� ���������.");
                                         return;
                                     }

                                     int poslednii = Convert.ToInt32(mmsg[dlina_mmsg - 1]);

                                     if (poslednii != 13) //��� ���������� � ��������� ��������� �� ����� ��� �������� � Hex ��� ������ �����
                                     {
                                         messaga = "�������� ���� ������� ����� �������� ��������! ��� ������� ���������.";
                                         DisplayData(MessageType.Outgoing, messaga);
                                         // MessageBox.Show("������ ���� ������� ����� �������� ��������! ��� ������� ���������.");
                                         return;
                                     }   
            //                         frmMain frm_3 = new frmMain();//-��� ���������� ������-"��������� �� �����������" � ���� �� ���������
            //                         if (knopkanephelometra == 50) { frm_3.flagcolor = 3; frm_3.frmMain_button15color(sender,e);}
            //                         if (knopkanephelometra == 48) frm_3.flagcolor = 0;          
                                     //frm_3.frmMain_button15color(sender, e);
                                     //frm_3.
                                     //frm_3.b
//-------------------------------------------------------�������� �������� ���������------------------------------------------------------------------
                                     if (mmsg == " END_USTIROVKA@A\r")//--����� �� ���� ������ ��� ��������� ���������
                                         {
                                             //MessageBox.Show("��������� �� ������� -- ��������� ���������");
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "   ��������� �� ������� -- ��������� ���������");
                                             return;
                                         }
//------------------------------------------------------------�������� ������� �������� ���������-----------------------------------------------
                                         if ((mmsg == " R_OKDL\r") & (mark_engine == 3))
                                         {
                                             mark_engine = 0;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + " -- " + mmsg);
                                             try
                                             {
                                                 frmMain frm_2 = new frmMain();//<--��� ������ �����!!!!!���� ������,�� ���� � � ������� ���� ��������������,�� ����� �� ����������
                                         /*        frm_2.textBox42.Text = " ";//�� ������ �������� ���������� � ������� ���������,�� ���-�� �� ����������� ���� �������
                                                 frm_2.textBox44.Text = " ";//�� ������ �������� ���������� � ������� ���������,�� ���-�� �� ����������� ���� �������
                                                 tte_41 = sat;//<--��� ���� ������ ��� ������� ���� ������� ��������� �������� �����
                                                 frm_2.textBox41_TextChanged(sender, e);   */
                                                 frm_2.textBox42_TextChanged(sender, e);//-���������� � ���� �����������,� �� � 41-�� ����� �� ��������,� ��� ���������
                                                 frm_2.textBox44_TextChanged(sender, e);//-���������� � ���� ����������� � �� ������ �������� ���� X ���� Y
                                             }
                                             catch
                                             {
                                                 DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "���� ��� ����������� ���� ����������� ������ ��������");
                                                 return;
                                             }
                                             return;
                                         }
                                         if ((mmsg == " T_OKDN\r") & (mark_engine == 3))
                                         {
                                             mark_engine = 0;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + " -- " + mmsg);
                                             try
                                             {
                                                 frmMain frm_2 = new frmMain();//<--��� ������ �����!!!!!���� ������,�� ���� � � ������� ���� ��������������,�� ����� �� ����������
                                           /*      frm_2.textBox42.Text = " ";//�� ������ �������� ���������� � ������� ���������,�� ���-�� �� ����������� ���� �������
                                                 frm_2.textBox44.Text = " ";//�� ������ �������� ���������� � ������� ���������,�� ���-�� �� ����������� ���� �������
                                                 tte_41 = sat;//<--��� ���� ������ ��� ������� ���� ������� ��������� �������� �����
                                                 frm_2.textBox41_TextChanged(sender, e);  */
                                                 frm_2.textBox42_TextChanged(sender, e);//-���������� � ���� �����������,� �� � 41-�� ����� �� ��������,� ��� ���������
                                                 frm_2.textBox44_TextChanged(sender, e);//-���������� � ���� ����������� � �� ������ �������� ���� X ���� Y
                                             }
                                             catch
                                             {
                                                 DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "���� ��� ����������� ���� ����������� ������ ��������");
                                                 return;
                                             }
                                             return;
                                         }
                                         if ((mmsg == " R_ERRIK\r") & (mark_engine == 3))
                                         {
                                             mark_engine = 0;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + "��������� �������� ����� �� ����������" + " -- " + mmsg);
                                             try
                                             {
                                                 frmMain frm_2 = new frmMain();//<--��� ������ �����!!!!!���� ������,�� ���� � � ������� ���� ��������������,�� ����� �� ����������
                                           /*      frm_2.textBox42.Text = " ";//�� ������ �������� ���������� � ������� ���������,�� ���-�� �� ����������� ���� �������
                                                 frm_2.textBox44.Text = " ";//�� ������ �������� ���������� � ������� ���������,�� ���-�� �� ����������� ���� �������
                                                 tte_41 = sat;//<--��� ���� ������ ��� ������� ���� ������� ��������� �������� �����
                                                 frm_2.textBox41_TextChanged(sender, e);  */
                                                 frm_2.textBox42_TextChanged(sender, e);//-���������� � ���� �����������,� �� � 41-�� ����� �� ��������,� ��� ���������
                                                 frm_2.textBox44_TextChanged(sender, e);//-���������� � ���� ����������� � �� ������ �������� ���� X ���� Y
                                             }
                                             catch
                                             {
                                                 DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "���� ��� ����������� ���� ����������� ������ ��������");
                                                 return;
                                             }
                                             return;
                                         }
                                         if ((mmsg == " T_ERRIM\r") & (mark_engine == 3))
                                         {
                                             mark_engine = 0;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + "��������� ���������� ����� �� ����������" + " -- " + mmsg);
                                             try
                                             {
                                                 frmMain frm_2 = new frmMain();//<--��� ������ �����!!!!!���� ������,�� ���� � � ������� ���� ��������������,�� ����� �� ����������
                                              /*   frm_2.textBox42.Text = "3";//�� ������ �������� ���������� � ������� ���������,�� ���-�� �� ����������� ���� �������
                                                 frm_2.textBox44.Text = "3";//�� ������ �������� ���������� � ������� ���������,�� ���-�� �� ����������� ���� �������
                                                 frm_2.textBox41.Text = "3";
                                                 frm_2.textBox41.Text = " ";
                                                 frm_2.textBox42.Text = " ";
                                                 frm_2.textBox44.Text = " ";
                                                 tte_41 = sat;//<--��� ���� ������ ��� ������� ���� ������� ��������� �������� �����
                                                 frm_2.textBox41_TextChanged(sender, e);   */
                                                 frm_2.textBox42_TextChanged(sender, e);//-���������� � ���� �����������,� �� � 41-�� ����� �� ��������,� ��� ���������
                                                 frm_2.textBox44_TextChanged(sender, e);//-���������� � ���� ����������� � �� ������ �������� ���� X ���� Y
                                             }
                                             catch
                                             {
                                                 DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "���� ��� ����������� ���� ����������� ������ ��������");
                                                 return;
                                             }
                                             return;
                                         }
//-----------------------------------------------------����� �����������---------------------------------------------------------------------------------
                                         tte_56 = mmsg.Substring(1, 1);//---��� ����������/��������� ������ "������������� �� �����������"
                                         frmMain frm_3 = new frmMain();//---��� ����������/��������� ������ "������������� �� �����������"
                                         frm_3.textBox56_TextChanged(sender, e);//---��� ����������/��������� ������ "������������� �� �����������"
                      //*************************************************xkpd************************************************                 
                                     if (mmsg == " 010OK000KL\r")
                                     {
                                         tte_62 = "  ";
                                         tte_63 = "  ";
                                         tte_64 = "  ";
                                         tte_65 = "  ";
                                         tte_61 = "\n" + "                     OK";//-----��� �����������!!!!!!!!!!!!!!
                                             frm_3.textBox54_TextChanged(sender, e);
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " +  " -- " + mmsg);
                                         }
                                        if (mmsg == " 010ERR00MK\r")
                                        {
                                            tte_62 = "  ";
                                            tte_63 = "  ";
                                            tte_64 = "  ";
                                            tte_65 = "  ";
                                            tte_61 = "\n" + "                     ERROR";//-----��� �����������!!!!!!!!!!!!!!
                                            frm_3.textBox54_TextChanged(sender, e);
                                            DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                                        }
                      //*******************************************mdvDef************************************************************
                                        if (mmsg == " 0:0OK000LE\r")
                                        {
                                            tte_61 = "  ";
                                            tte_63 = "  ";
                                            tte_64 = "  ";
                                            tte_65 = "  ";
                                            tte_62 = "\n" + "                     OK";//-----��� �����������!!!!!!!!!!!!!!
                                            frm_3.textBox542_TextChanged(sender, e);
                                            DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                                        }
                                        if (mmsg == " 0:0ERR00ND\r")
                                        {
                                            tte_61 = "  ";
                                            tte_63 = "  ";
                                            tte_64 = "  ";
                                            tte_65 = "  ";
                                            tte_62 = "\n" + "                     ERROR";//-----��� �����������!!!!!!!!!!!!!!
                                            frm_3.textBox542_TextChanged(sender, e);
                                            DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                                        }
                  //*******************************************offset************************************************************
                                        if (mmsg == " 0;0OK000LF\r")
                           {
                               tte_61 = "  ";
                               tte_62 = "  ";
                               tte_64 = "  ";
                               tte_65 = "  ";
                               tte_63 = "\n" + "                     OK";//-----��� �����������!!!!!!!!!!!!!!
                               frm_3.textBox543_TextChanged(sender, e);
                               DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                           }
                                        if (mmsg == " 0;0ERR00NE\r")
                           {
                               tte_61 = "  ";
                               tte_62 = "  ";
                               tte_64 = "  ";
                               tte_65 = "  ";
                               tte_63 = "\n" + "                     ERROR";//-----��� �����������!!!!!!!!!!!!!!
                               frm_3.textBox543_TextChanged(sender, e);
                               DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                           }
                  //*******************************************delta_pnt************************************************************
                                        if (mmsg == " 0<0OK000LG\r")
                           {
                               tte_61 = "  ";
                               tte_62 = "  ";
                               tte_63 = "  ";
                               tte_65 = "  ";
                               tte_64 = "\n" + "                     OK";//-----��� �����������!!!!!!!!!!!!!!
                               frm_3.textBox544_TextChanged(sender, e);
                               DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                           }
                                        if (mmsg == " 0<0ERR00NF\r")
                           {
                               tte_61 = "  ";
                               tte_62 = "  ";
                               tte_63 = "  ";
                               tte_65 = "  ";
                               tte_64 = "\n" + "                     ERROR";//-----��� �����������!!!!!!!!!!!!!!
                               frm_3.textBox544_TextChanged(sender, e);
                               DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                           }
                      //*******************************************delta_vsbl************************************************************
                                        if (mmsg == " 0=0OK000LH\r")
                           {
                               tte_61 = "  ";
                               tte_62 = "  ";
                               tte_63 = "  ";
                               tte_64 = "  ";
                               tte_65 = "\n" + "                     OK";//-----��� �����������!!!!!!!!!!!!!!
                               frm_3.textBox545_TextChanged(sender, e);
                               DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                           }
                                        if (mmsg == " 0=0ERR00NG\r")
                           {
                               tte_61 = "  ";
                               tte_62 = "  ";
                               tte_63 = "  ";
                               tte_64 = "  ";
                               tte_65 = "\n" + "                     ERROR";//-----��� �����������!!!!!!!!!!!!!!
                               frm_3.textBox545_TextChanged(sender, e);
                               DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + " -- " + mmsg);
                           }
//------------------------------------------------------------------------------------------------------------------------------------------------------                                     
                                         string tipuzla = "  ", tmp, rejim_string = "  ";
                                         //int uzel_tip=0, rejim_int=0;

                                         tmp = mmsg.Substring(1, 1);
                                         if (tmp == "R") { tipuzla = "�������"; }
                                         if (tmp == "T") { tipuzla = "����������"; }
                                         tmp = mmsg.Substring(3, 1);
                                         uzel_tip = Convert.ToInt32(tmp);
                                         tmp = mmsg.Substring(4, 1);
                                         rejim_int = Convert.ToInt32(tmp);
                                         if (rejim_int == 0) { rejim_string = "������"; }
                                         if (rejim_int == 1) { rejim_string = "������"; }

//-------------------------------------------------------------�������� CRC--------------------------------------------------------------------- 
                                         int[] intpacket_for_crc = new int[dlina_mmsg - 4];
                                         for (int ii = 1; ii < dlina_mmsg - 3; ii += 1)                                              
                                         intpacket_for_crc[ii - 1] = Convert.ToInt32(mmsg[ii]);

                                         packetik = new byte[dlina_mmsg - 4];
                                         for (int ii = 1; ii < dlina_mmsg - 3; ii += 1)                                              
                                     // pack[ii-1] = (byte)Convert.ToByte(mmsg[ii]);                                              
                                     {                                                                                            
                                         packetik[ii - 1] = (byte)Convert.ToByte(intpacket_for_crc[ii - 1]);                      
                                     }  

                                     int crc = Custom.CRC(packetik);
                                     //string hgex = ByteeToHexx(crc);
                                     byte[] packeta = new byte[2]; ;
                                     packeta[0] = (byte)(((crc & 0xF0) >> 4) + 0x40);//��������� ����������� �� 2 ������� � �����������
                                     packeta[1] = (byte)(((crc & 0x0F) >> 0) + 0x40);//0�40� ������ ������� ��� �������� ��� � ��������� ASCII
                                     string vxaa = ByteeToHexx(packeta);
                                     if ((packeta[0] != packet[dlina_mmsg - 3]) | (packeta[1] != packet[dlina_mmsg - 2]))
                                     {
                                         messaga = "�� ���������� ����������� �����! ��� ������� ���������.";
                                         DisplayData(MessageType.Outgoing, messaga);
                                         // MessageBox.Show("������ ���� ������� ����� �������� ��������! ��� ������� ���������.");
                                         return;
                                     }             
//------------------------------------------------������� ������� 106 ����---------------------------------------------------------------
                                         if (dlina_mmsg == 106)
                                         {//-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���
                                             try
                                             {
                                                 Logger logger = LogManager.GetCurrentClassLogger();
                                                 logger.Debug(mmsg);
                                                 GC.Collect();//-������� ���,� �� ������� �������� �� ������ ������ ��� ������ � ������ � ������
                                             }
                                             catch (Exception ex)
                                             {
                                                 MessageBox.Show("�������� � ��������� ��� ������� ����!");//����� ��������� �� �����, ����� ���������              
                                                 throw;
                                             }
                                             //-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���-----���
                                         double ad,ist,itt,kpd,mor;
                                         int temp, temp3, mark = 0;
                                         string temps, t1, t2, t3, t4;
                                         temp = Convert.ToInt32(mmsg.Substring(1, 1)); // s;//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                         if (temp == 1) { tte_1 = "������ ���������"; };
                                         tte_2 = mmsg.Substring(2, 3); //s1;//@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                         temp = Convert.ToInt32(mmsg.Substring(2, 1));
                                         //temp2 = Convert.ToInt32(mmsg.Substring(3, 1));//���������������
                                         temp3 = Convert.ToInt32(mmsg.Substring(4, 1));
                                         if (temp == 0) { tte_2 = "��������"; };//������-�� �� ����� �����
                                         // label32.Text = "                 ";//������-�� �� ����� �����
                                         if (temp == 1) { tte_2 = "����������� ��������� ���������� (DQP_TRM) ������ 38��"; };
                                         if (temp == 2) { tte_2 = "����������� ��������� ���������� (DQP_RCV) ������ 38��"; };
                                         if (temp == 4) { tte_2 = "���� ��� ��� ������� �� �������� � ������� 8 ���."; };
                                         if (temp == 8) { tte_2 = "���������������"; };
                                         //ts = tte_2.Substring(1, 1);
                                         //////temp2 = Convert.ToInt32(ts2);
                                         //ts = tte_2.Substring(2, 1);
                                         //temp = Convert.ToInt32(ts);
                                         if (temp3 == 0) { tte_33 = "������� �� ����������"; mark = 0; };
                                         if (temp3 == 1) { tte_33 = "��������� ���������� ������� ����"; mark = 1; };
                                         if (temp3 == 2) { tte_33 = "��������� ������ ����������"; mark = 2; };
                                         if (temp3 == 3) { tte_33 = "��������� ������ ���������� � ���������� ������� ����"; mark = 3; };
                                         if ((temp3 == 4) | (temp3 == 5) | (temp3 == 6) | (temp3 == 7) | (temp3 == 8) | (temp3 == 9)) { tte_33 = "���� ��������� �������� �� ��������"; };
                                         //tte_34 = tte_33;
                                         int a = Convert.ToInt32(mmsg.Substring(8, 5)); //�������� ������� ��������� ���� �������� ������� (����������) //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                                         tte_3 = a.ToString();
                                         a = Convert.ToInt32(mmsg.Substring(13, 5)); //s3;//�������� ������� ��������� ���� ������� ���� (��������)
                                         tte_4 = a.ToString();
                                         a = Convert.ToInt32(mmsg.Substring(18, 5)); //s4;//�������� ������� ��������� ���� �������� ������� (����������) 
                                         tte_5 = a.ToString();
                                         a = Convert.ToInt32(mmsg.Substring(23, 5)); //s5;//�������� ������� ��������� ���� ������� ���� (��������)
                                         tte_6 = a.ToString();
                                    /*     temps = mmsg.Substring(28, 1); //s6;//���� ��������� ������� ���
                                         a = Convert.ToInt32(temps);
                                         if (a == 1) { tte_7 = "������� ������"; };
                                         if (a == 2) { tte_7 = "���������� ���������"; };
                                         if (a == 3) { tte_7 = "����������� �������� ������ 38� �"; };
                                         if (a == 4) { tte_7 = "���������� ���������"; };
                                         if (a == 8) { tte_7 = "����������� �������������� ���� ����������"; };   */
                                         temps = mmsg.Substring(29, 1);//��� ����� ���� ������ �����,����� ��������� �������� ���������-�.�. ��������� ��������������� ������
                                             if ((temps != "/")&(temps != "\0"))//������ �� ����� � ������
                                         {
                                             a = Convert.ToInt32(mmsg.Substring(29, 5)); //s7;//�������� ��� 
                                             tte_8 = a.ToString();
                                             tte_7 = tte_8;
                                         }
                                         //a = Convert.ToInt32(temps);
                                         //double adouble = Convert.ToDouble(a/1000);
                                         t1 = mmsg.Substring(34, 1);  //i += 1;//�������� ���
                                         t2 = mmsg.Substring(35, 1);
                                         t3 = mmsg.Substring(36, 1);
                                         t4 = mmsg.Substring(37, 1);
                                         tte_9 = t1 + "," + t2 + t3 + t4;
                                         tte_35 = tte_9;

                                         temps = mmsg.Substring(38, 1);//���� ��������� ������� ����������� 
                                       /*  if ((temps != "\0") & (temps != "/"))//���� ������--���� 00 ���� //������ �� ����� � ������
                                         {  */
                                         if (Char.IsDigit(mmsg[38]))//�������� �� ����������
                                         {
                                             a = Convert.ToInt32(temps);  //i += 1;//���� ��������� ������� �����������       
                                             if (a == 0) { tte_10 = "��������"; };
                                             if ((a == 1) | (a == 3) | (a == 4) | (a == 5) | (a == 6) | (a == 7) | (a == 8) | (a == 9)) { tte_10 = "    "; };
                                             if (a == 2) { tte_10 = "���������� ���������"; };
                                         }
                                         else
                                         {
                                             tte_10 = temps;
                                         }
                                             
                                             //���� ������--���� 00 ����//������ �� ����� � ������ 
                                         if ((temps == "\0") | (temps == "/")) { tte_10 = "�������� ���� ��������� �����������"; };
                                         if ((mark == 0) | (mark == 1)) { tte_10 = " /////"; };
                                         s = mmsg.Substring(39, 5);
                                         if (Char.IsDigit(mmsg[40]))//�������� �� ����������
                                         {
                                             if ((mark != 0) | (mark != 1))//��� ��������� ��������� ��� ��� ��������
                                             {
                                                 a = Convert.ToInt32(s);
                                                 tte_11 = a.ToString(); //;i += 1;//�������� MOR, � 
                                             }
                                         }
                                         else
                                         {
                                             tte_11 = s;
                                         }
                                         if ((mark == 0) | (mark == 1)) { tte_11 = " /////"; };

                                         temps = mmsg.Substring(44, 1);//--��� ���� ������ ����� Hex-�������
                                         if (temps == ":") { tte_12 = "!!!! ������������ ������, ������������� ��������"; };
                                         if (temps == ";") { tte_12 = "��������� ������, !!!! ������. ������, �������. ��������"; };
                                         if (temps == "<") { tte_12 = "���������� ��������, ������������� ��������"; };
                                         if (temps == "=") { tte_12 = "��������� ������, ���������� ��������, �������. ��������"; };
                                         if (temps == ">") { tte_12 = "!!!! ������. ������, ���������� ��������, �������. ��������"; };
                                         if (temps == "?") { tte_12 = "������. ������, ������. ������, ������. ����., �����. ����."; };
                                         temps = mmsg.Substring(44, 1);
                                         if (Char.IsDigit(mmsg[44]))//�������� �� ����������
                                         {
                                             if ((temps == "0") | (temps == "1") | (temps == "2") | (temps == "3") | (temps == "4") | (temps == "5")
                                             | (temps == "6") | (temps == "7") | (temps == "8") | (temps == "9"))
                                             {
                                                 a = Convert.ToInt32(temps);//���� ��������� ������� ������� ����
                                                 if (a == 0) { tte_12 = "��������"; };
                                                 if (a == 1) { tte_12 = "��������� ������"; };
                                                 if (a == 2) { tte_12 = "!!!! ������������ ������"; };
                                                 if (a == 3) { tte_12 = "��������� ������ � ������������ ������"; };
                                                 if (a == 4) { tte_12 = "���������� ��������"; };
                                                 if (a == 5) { tte_12 = "��������� ������ � ���������� ��������"; };
                                                 if (a == 6) { tte_12 = "���������� ��������, ������������ ������"; };
                                                 if (a == 7) { tte_12 = "������. ��������, ��������� ������, ������������ ������"; };
                                                 if (a == 8) { tte_12 = "������������� ��������"; };
                                                 if (a == 9) { tte_12 = "������ ������, ������������� ��������"; };
                                             }
                                         }
                                         else
                                         {
                                             tte_12 = temps;
                                         }
                                             if ((mark == 0) | (mark == 2)) { tte_12 = " /////"; };
                                             temps = mmsg.Substring(45, 5);
                                             if (Char.IsDigit(mmsg[45]))//�������� �� ����������
                                             {
                                                 a = Convert.ToInt32(temps); //;i += 1;//�������� ������� ����, ��/�2 
                                                 tte_13 = a.ToString();
                                             }
                                             else
                                             {
                                                 tte_13 = temps;
                                             }
                                                 if ((mark == 0) | (mark == 2)) { tte_13 = " /////"; };
                                         //tte_14 = mmsg.Substring(50, 4);  //i += 1;//�������� ���� ������� ��������� 
                                         t1 = mmsg.Substring(50, 1);
                                         t2 = mmsg.Substring(51, 1);
                                         t3 = mmsg.Substring(52, 1);
                                         t4 = mmsg.Substring(53, 1);
                                         s = t1 + t2 + t3 + "," + t4;
                                         if (Char.IsDigit(mmsg[50]))//�������� �� ����������
                                         {
                                             ad = Convert.ToDouble(s);
                                             tte_34 = ad.ToString();
                                         }
                                         else
                                         {
                                             tte_34 = s;
                                         }
                                         s = mmsg.Substring(54, 1);//���� ����������� DQ_RCV
                                         //tte_15 = s + mmsg.Substring(55, 3); //;i += 1;//����������� DQ_RCV 
                                         t1 = mmsg.Substring(55, 1);
                                         t2 = mmsg.Substring(56, 1);
                                         t3 = mmsg.Substring(57, 1);
                                         tte_15 = s + " " + t1 + t2 + "," + t3;
                                         s = mmsg.Substring(58, 1);//���� ����������� DQP_RCV    
                                         //tte_16 = s + mmsg.Substring(59, 3); ; //;i += 1;//����������� DQP_RCV 
                                         t1 = mmsg.Substring(59, 1);
                                         t2 = mmsg.Substring(60, 1);
                                         t3 = mmsg.Substring(61, 1);
                                         tte_16 = s + " " + t1 + t2 + "," + t3;
                                         s = mmsg.Substring(62, 1); //Convert.ToString(DateTime.Now); //;i += 1;//���� ����������� DQ_TRM
                                         //tte_17 = s + mmsg.Substring(63, 3); //sas;//����������� DQ_TRM 
                                         t1 = mmsg.Substring(63, 1);
                                         t2 = mmsg.Substring(64, 1);
                                         t3 = mmsg.Substring(65, 1);
                                         tte_17 = s + " " + t1 + t2 + "," + t3;
                                         s = mmsg.Substring(66, 1); //Convert.ToString(DateTime.Now); //;i += 1;////���� ����������� DQP_TRM 
                                         //tte_18 = s + mmsg.Substring(67, 3); //sas;//����������� DQP_TRM 
                                         t1 = mmsg.Substring(67, 1);
                                         t2 = mmsg.Substring(68, 1);
                                         t3 = mmsg.Substring(69, 1);
                                         tte_18 = s + " " + t1 + t2 + "," + t3;
                                         s = mmsg.Substring(70, 1); //Convert.ToString(DateTime.Now); //;i += 1;//���� ����������� DQPI  (����� �����������)
                                         //tte_19 = s + mmsg.Substring(71, 3); //sas;//����������� DQPI 
                                         t1 = mmsg.Substring(71, 1);
                                         t2 = mmsg.Substring(72, 1);
                                         t3 = mmsg.Substring(73, 1);
                                         tte_19 = s + " " + t1 + t2 + "," + t3;
                                         s = mmsg.Substring(74, 5);
                                         if (Char.IsDigit(mmsg[74]))//�������� �� ����������
                                         {
                                             a = Convert.ToInt32(s);//------------------------������ ��������� � ���������
                                             tte_20 = a.ToString();//��������� ���������� ����������� ���������� 
                                         }
                                         else
                                         {
                                             tte_20 = s;
                                         }
                                         s = mmsg.Substring(79, 5);
                                         if (Char.IsDigit(mmsg[79]))//�������� �� ����������
                                         {
                                             a = Convert.ToInt32(s);
                                             tte_21 = a.ToString();//��������� ���������� ����������� ��������� 
                                         }
                                         else
                                         {
                                             tte_21 = s;
                                         }
                                         s = mmsg.Substring(84, 5);
                                         if (Char.IsDigit(mmsg[84]))//�������� �� ����������
                                         {
                                             a = Convert.ToInt32(s);
                                             tte_22 = a.ToString();//��������� ���������� ���� ��������� ����������
                                         }
                                         else
                                         {
                                             tte_22 = s;
                                         }
                                         s = mmsg.Substring(89, 5);
                                         if (Char.IsDigit(mmsg[89]))//�������� �� ����������
                                         {
                                             a = Convert.ToInt32(s);
                                             tte_23 = a.ToString();//��������� ���������� ���� ��������� ��������� 
                                         }
                                         else
                                         {
                                             tte_23 = s;
                                         }
                                         s = mmsg.Substring(94, 3);
                                         if (Char.IsDigit(mmsg[94]))//�������� �� ����������
                                         {
                                             a = Convert.ToInt32(s);
                                             tte_24 = a.ToString();//����� ����
                                         }
                                         else
                                         {
                                             tte_24 = s;
                                         }
                                         //-----------------������ ���������� ��� �����������-----------------------------
                                         tte_27 = tte_3;
                                         tte_28 = tte_5;
                                         tte_29 = tte_4;
                                         tte_50 = tte_4;
                                         tte_30 = tte_6;
                                         tte_51 = tte_6;
                                         tte_37 = tte_35;
                                         tte_48 = tte_7;
                                         
                                         frmMain frm_2 = new frmMain();
                                         //frm_2.textBox49_TextChanged(sender, e);
                                         s = tchastotatoka;// tte_49;
                                         try
                                         {
                                            ad = Convert.ToDouble(s);
                                         }
                                         catch (Exception ex)
                                         {
                                             MessageBox.Show("������� ���������� ������ ������� ��������� ���� !");// ex.Message;
                                             break;
                                         }
                                         s = tte_50;
                                         ist = Convert.ToDouble(s);
                                         s = tte_51;
                                         itt = Convert.ToDouble(s);
                                         kpd = (ist - itt) / ad;
                                         mor = 50 * (Math.Log(0.05) / Math.Log(kpd));
                                         tte_52 = String.Format("{0:0.####}", kpd);//--��� �� ������� //kpd.ToString();
                                         tte_53 = String.Format("{0:0.}", mor); //--��� �� �������//mor.ToString();
                                         //-----------------����� ���������� ��� �����������-----------------------------
                                         // DisplayData(MessageType.Incoming, msg + "\n");
                                         DisplayData(MessageType.Outgoing, mmsg);
                                     }
//------------------------------------------------������� ������� 106 ����  END---------------------------------------------------------------
//----------------------------------------------------------------------------------------------------------------------------------
                                         if ((dlina_mmsg == 24) & (uzel_tip == 1))//------------��������� ����������� DD1 
                                     {
                                         int a = Convert.ToInt32(mmsg.Substring(5, 6));
                                         s = mmsg.Substring(1, 1);
                                         if (s == "T") { markiz = 3; tte_36 = a.ToString(); };
                                         if (s == "R") { markpr = 3; tte_38 = a.ToString(); };
                                         // if (s == "T") { tte_38 = " "; };//����������--------------------��� ������� -- ������
                                         // if (s == "R") { tte_38 = tte_36; tte_36 = " "; };//�������-----��� ������� -- ������
                                         //tte_38 = mmsg.Substring(11, 6);//���������������
                                         DisplayData(MessageType.Outgoing, mmsg);
                                     }
//----------------------------------------------------------------------------------------------------------------------------------------
                                         if ((dlina_mmsg == 26) & (uzel_tip == 9))//-------------��������� ������ ����� -- ����� ����������
                                     {
                                         int ta, tb, td;
                                         string t1, t2, t3;
                                         t1 = mmsg.Substring(5, 6);
                                         ta = Convert.ToInt32(t1);
                                         t1 = ta.ToString();
                                         t2 = mmsg.Substring(11, 6);
                                         tb = Convert.ToInt32(t2);
                                         t2 = tb.ToString();
                                         t3 = mmsg.Substring(17, 6);
                                         td = Convert.ToInt32(t3);
                                         t3 = td.ToString();
                                         sas = "����������� ����� ����� ��������� �������" + "--" + t1 + "  " +
                                    "����� �� �" + "--" + t2 + "  " +
                                    "����� �� Y" + "--" + t3 + " ";
                                          DisplayData_1(MessageType.Outgoing, sas);
                                     }
//----------------------------------------------------------------------------------------------------------------------------------------
                                         if (dlina_mmsg == 20)//------��������� ����������  
                                     {
                                         if ((uzel_tip == 9) & (matrica > 0))//---��������� ����������
                                         {
                                             int tchastota,x,y;
                                             string t1, t2, t3;
                                             t1 = mmsg.Substring(5, 2);
                                             x = Convert.ToInt32(t1);
                                             t1 = x.ToString();
                                             t2 = mmsg.Substring(7, 2);
                                             y = Convert.ToInt32(t2);
                                             t2 = y.ToString();
                                             t3 = mmsg.Substring(13, 4);
                                             tchastota = Convert.ToInt32(t3);
                                             t3 = tchastota.ToString();
                                             //tchastota_2 = tchastota;// Convert.ToInt32(t3);
                                             //if (tchastota_2 > tchastota_1) { Nmax = tchastota_2; };//����� ������������� ��������
                                             //tchastota_1 = Nmax;                                    //����� ������������� ��������
                                             if (Nmax < tchastota) { Nmax = tchastota; };
                                             massifa[stolbec, stroka] = tchastota;
//--------------------------------------------------------------�������� ������--------------------------------
                                             if ((stolbec < matrica) & (flag == stroka)) //������ ������ 
                                                 stolbec = stolbec + 1;                     //              

                                             if (stolbec == matrica)                  //�������� ����� ������� �������
                                             {                                             //
                                                 stroka = stroka + 1;                       // 
                                                 flag = stroka - 1;                         //
                                             }                                              //
                                             //
                                             if ((stolbec >= 0) & (flag < stroka))         //������ � �������� ������� �� �������
                                                 stolbec = stolbec - 1;                    //
                                             //
                                             if (stolbec == -1)                            //�������� ����� ������ �������
                                             {                                             //
                                                 stolbec = stolbec + 1;                    //
                                                 stroka = stroka + 1;                      //
                                                 flag = stroka;                            //
                                             }
//-------------------------------------------------------------------------------------------------------------------
                                             fla = fla + 1;

                                             sas = DateTime.Now.ToLongTimeString() + "    " + " � " + " = " + t1 + " " + "    " +
                                        " Y " + " = " + t2 + " " + "    " + " ������a" + " = " + t3 + "\n";
                                             DisplayData_1(MessageType.Outgoing, sas);
                                             tte_14 = (matricasum - fla).ToString();
                                            
                                             if (fla == matricasum)
                                             {
                                                 marker_komand = 77;
                                                // MessageBox.Show("������� ��������� -- ��������� ���������");
                                                 //_displayWindow_1.Clear();//---@@@@@@@@@-��� ������������� �� ��� ������ (�� �����) ����� ������-������ � ��������� ��������� � ������ �������

                                                 diagr = new diagram(matrica, matrica);
                                                 diagr.dataGridView1.ColumnCount = matrica;
                                                 diagr.dataGridView1.RowCount = matrica;

                                                 for (int iii = 0; iii < matrica; ++iii)
                                                 {
                                                     for (int j = 0; j < matrica; ++j)
                                                     {
                                                         double ax;//, bx;
                                                         string asd;
                                                         ax = (massifa[j, iii] / Nmax);// *100;
                                                         asd = String.Format("{0:0.####}", ax);
                                                         ax = Convert.ToDouble(asd);
                                                         ax = ax * 100;
                                                        // bx = Convert.ToDouble(ax);//---������� ������ � �����,����� � Excel ������� �����,����� ����� ��� ����� ���� ������� ���������
                                                         diagr.dataGridView1[j, iii].Value = ax;//String.Format("{0:0.##}", ax);
                                                     }
                                                 }
                                                 stroka = 0;//----������������ ��������� ����� ������ ������� ������ � ������ � ���� �����,����� �������� �����
                                                 stolbec = 0;
                                                 fla = 0;
                                                 matricasum = 0;
                                                 flag = 0;
                                                 Nmax = 0;
                                                 matrica = 0;//--��-�� ���������� ���� ������� ��������� ��� ��� ��������: ������� ���������� �����������,�� 
                                                 //��������������� � ��������� �.�. �� �������� ������� � ������� � ������������� �������
                                                
                                                 // forma_2 = new frmMain();
                                                 //forma_2.button10_Click(object SendKeys.Send(t); EventArgs e;
                                                 childForm = diagr;
//----------------------------------------------------------------------------------------------------------------------------------------------------
                                                 if (childForm != null)
                                                     childForm.Export();
                                                 return;//--�����������!!!-�.�. ���� ����� ��������� �� ����� �� ������ ����� � ������ ������ � ���������� �����
                                             }          //�� �� ����� � ���� ������ � ��� ���� � rtbDisplay ����� -"������� ������ ����� �������� ������"
//-------------------------------------------------------------------------------------------------------------------------------------------------------------------
                                             /*    if ((stolbec !=0)&(stolbec <= kolvo_tochek))
                                                 {
                                             
                                                     tempmas_1 = massif[stolbec-1];
                                                     tempmas_2 = massif[stolbec];
                                                     if (tempmas_2 > tempmas_1) { Nmax = tempmas_2;};
                                                 }                                     */
                                             //����� ������������� ��������

                                         }//--------------END ���������----------END ���������-----------END ���������----------END ���������----------END ���������
                                         if (uzel_tip == 1)//-------------0�31  ��������� ����������� DD1
                                         {
                                             marker_komand = 11;
                                             tte_28 = "              ";
                                             tte_29 = "              ";
                                             tte_30 = "              ";
                                             tte_31 = "              ";
                                             int a = Convert.ToInt32(mmsg.Substring(5, 6));
                                             tte_27 = a.ToString();
                                             //tte_36 = a.ToString();
                                             //---------------------------������� 2.11.2018-------------------------------------------------------
                                             s = mmsg.Substring(1, 1);
                                             if (s == "T") { markiz = 3; tte_36 = a.ToString();};//����������
                                             if (s == "R") { markpr = 3; tte_38 = a.ToString();};//�������
                                             //----------------------------������� 2.11.2018--------------------------------------------------------
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + rejim_string + "  "+ tipuzla + "  " +
                                                  "�OT_T " + " -- " + "�������� ���������� ����������� " + " -- " + tte_27 + " ��" + " -- " + mmsg);
                                         }


                                         if (uzel_tip == 2)//-------------0�32  ��������� ���� DD3-----------------------
                                         {
                                            marker_komand = 12;
                                            tte_27 = "              ";
                                            tte_29 = "              ";
                                            tte_30 = "              ";
                                            tte_31 = "              ";
                                            int xx = Convert.ToInt32(mmsg.Substring(5, 6));
                                            tte_28 = xx.ToString();
                                            //tte_39 = xx.ToString();
                                            //---------------------------������� 2.11.2018-------------------------------------------------------
                                            s = mmsg.Substring(1, 1);
                                            if (s == "T") { markiz = 3; tte_39 = xx.ToString(); };//����������
                                            if (s == "R") { markpr = 3; tte_40 = xx.ToString(); };//�������
                                            //tte_38 = mmsg.Substring(11, 6);//���������������
                                            //----------------------------������� 2.11.2018--------------------------------------------------------
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + rejim_string + "  " + tipuzla + "  " +
                                            "�OT_FD " + " -- " + "�������� ���������� �� ��������� " + " -- " + tte_39 + " ��" + " -- " + mmsg);
                                         }


                                         if (uzel_tip == 3)//-------------0�33  ������� �� �X� (DD9)
                                         {
                                             marker_komand = 13;
                                             tte_27 = "              ";
                                             tte_28 = "              ";
                                             tte_31 = "              ";
                                             int xxx = Convert.ToInt32(mmsg.Substring(5, 6));
                                             tte_29 = xxx.ToString();//��� ���� ��� �� ������ �������
                                             tte_42 = xxx.ToString();
                                             xxx = Convert.ToInt32(mmsg.Substring(11, 6));
                                             tte_30 = xxx.ToString();//��� ���� ��� �� ������ �������
                                             tte_43 = xxx.ToString();
                                       DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + rejim_string + "  " + tipuzla + "  " +
                                           "������� ��������� � " + " -- " + tte_29 + "   " + "����. ������ X" + " -- " + tte_30 + "  -- " + mmsg);
                                         }


                                         if (uzel_tip == 4)//-------------0�34  ������� �� �Y� (DD10)
                                         {
                                            marker_komand = 14;
                                            tte_27 = "              ";
                                            tte_28 = "              ";
                                            tte_31 = "              ";
                                            int xyx = Convert.ToInt32(mmsg.Substring(5, 6));
                                            tte_29 = xyx.ToString();//��� ���� ��� �� ������ �������
                                            tte_44 = xyx.ToString();
                                            xyx = Convert.ToInt32(mmsg.Substring(11, 6));
                                            tte_30 = xyx.ToString();//��� ���� ��� �� ������ �������
                                            tte_45 = xyx.ToString();
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + rejim_string + "  " + tipuzla + "  " +
                                             "������� ��������� Y " + " -- " + tte_29 + "   " + "����. ������ Y " + " -- " + tte_30 + "  -- " + mmsg);
                                         }


                                         if (uzel_tip == 6)//-------------0�36  (��� � MCP4921)
                                         {
                                             marker_komand = 16;
                                             int x = Convert.ToInt32(mmsg.Substring(5, 6));
                                             double bs = x / 10;
                                             string a = mmsg.Substring(10, 1);
                                          /*   tte_27 = "              ";
                                             tte_28 = "              ";
                                             tte_29 = "              ";
                                             tte_30 = "              ";    */
                                             tte_31 = bs.ToString() + "," + a;
                                        DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + rejim_string + "  " + tipuzla + "  " +
                                            "��� ������� ���������� " + " -- " + tte_31 + " mA  " + " -- " + mmsg);
                                         }
                                     }
//----------------------------------------------------------����� �����������----------------------------------------------------------------------
//--��������--������ �� 62,63,64,65,66--�������� �� ����� ��������� ������ "OK" � "ERROR",�� ����� ���� ��������� ��������� �������� ������������� ������ ��� ������
//�������������� �� 71,67,68,69,70.���� ������ ��-�� ����,��� ��������� �������� � �� �������� ��� ����������� ������ ���������.�Ѩ ������,��� ����� ���������                                  
//����������� ��� ������ ���������.�������� �� ��� ������� ������ ���������,�� ��� ����� ��������� ��� ������� ����������� � ���� �� ���������� ���������� ����������                                    
//������--�� �� ���������,�� ������ �� ���������...������� ��������� ������ ����� ������� �٨ ����.��-�� ����� ��������� ���������� ��������.� ����������� �������                                     
//������� �� ����������,�����,������ ��������� ��� ��������.���������� ��� �� �����--�����,��� ������� �������� ������ �����,� � �������� ����� �������--���������
//��������.����� ���� ���� �٨ ���� �����--��� ����������� ��������� ������ ���� �� ���� (��� � ���-�� �� ���� � ���������� ������) ��������� ���������� ���� �������
//5 ������� "textBox542_TextChanged...." ��� textBox54 � ����� "frmMain.Designer.cs" ���.2853...2856 � �������� ������ ���� �������
//"this.textBox54.TextChanged += new System.EventHandler(this.textBox54_TextChanged);" ������ ����� ����� ������ �������� ��� ������.��� ��� ������ ����������� �� �����
//����������� ������������ �� (�� ����� ��) ��� �������,� ��� ������������� ������� � ������� ������� ��������� �� ����� �� �������,� ��� �� ���������� ����� �� ��������
//� ��������������.��� ����������� 5-� ������� ���������������� ���� �������������,��� ������� ��� �������� ��,��� ���������� ��� �������� ����������������.������� � 
//���� ������� ��� textBox.54 ������� 5 ����� ������� � �Ѩ ������ ����������,�� ��� ���� ��� ����������� ������ ���������--������ ���-�� �� ��� ��� ���� �����.
//�������-----��� ������������� ��������� ����� delegate ������ ��������� �����, ������� "��������" MulticastDelegate: System.Delegate-->System.MulticastDelegate                                  
//�������------��� ���������� ������ � ������� ����������� �������� +=                                     
                                     if ((dlina_mmsg == 12) & (marker_komand == 21)) //---------------------������ ������������� (xkpd)
                                         {                                              
                                             string t1, t2,st;
                                             int a = Convert.ToInt32(mmsg.Substring(4, 5));
                                             st = mmsg.Substring(4, 5);
                                             t1 = st.Substring(0, 1);
                                             t2 = st.Substring(1, 4);
                                             st = t1 + ',' + t2;
                                             tte_55 = st;
                                             tte_61 = "   ����������� (xkpd) = " + st;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "   ����������� (xkpd) = " + st);
                                         }
                                         if ((dlina_mmsg == 12) & (marker_komand == 22)) //-------------------- ������ Mdv_Def
                                         {
                                             string st;
                                             int a = Convert.ToInt32(mmsg.Substring(4, 5));
                                             st = a.ToString();
                                             tte_57 = st;
                                             tte_62 = "   �������� Mdv_Def = " + st;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "   �������� Mdv_Def = " + st);
                                         }
                                         if ((dlina_mmsg == 12) & (marker_komand == 23)) //------------------- ������ offset
                                         {
                                             string st;
                                             int a = Convert.ToInt32(mmsg.Substring(4, 5));
                                             st = a.ToString();
                                             tte_58 = st;
                                             tte_63 = "   �������� offset = " + st;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "   �������� offset = " + st);
                                         }
                                         if ((dlina_mmsg == 12) & (marker_komand == 24)) //----------------- ������ �������� delta_pnt
                                         {                                               
                                             string st;
                                             float a = Convert.ToSingle(mmsg.Substring(4, 3));
                
                                             a = a / 10;
                                             st = a.ToString() + "  " + "%";
                                             tte_59 = st;
                                             tte_64 = "   �������� delta_pnt = " + st;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "   �������� delta_pnt = " + st);
                                         }
                                        if ((dlina_mmsg == 12) & (marker_komand == 25)) //------------------ ������ delta_vsbl  
                                         {
                                             string st;
                                             int a = Convert.ToInt32(mmsg.Substring(7, 2));
                                             st = a.ToString() + "  " + "%";
                                             tte_60 = st;
                                             tte_65 = "   �������� delta_vsbl = " + st;
                                             DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "   �������� delta_vsbl = " + st);
                                         }
//---------------------------------------------------------------------------------------------------------------------------------------------------------
                                   }
//----------------------------------------------------------------------------------------------------------------------------------------
                                   //  sas = mmsg;
                                  //   if ((mmsg.Length == 19) | (mmsg.Length == 25)) { DisplayData_1(MessageType.Outgoing, mmsg); };  
                                     
                                       //if (i == 0) { s8 = msg.Substring(41, 8); i += 1; };//���� ������� ��-�� ������� � 2 ��� ���������:"��� ������� ����� �� ������� ����� ������ ������� ����������� �� ����� � �� ������ 
                                        // if (i == 1) { s9 = msg.Substring(49, 9); i += 1; };//� ��� ����� � ������� ��� ���������� ����� ����� ������ ������ ��� ���� � ��� Exception"
                                catch
                                 {
                                  //   MessageBox.Show("������ ��� �������� ������.");//�Ѩ ��� ��� ������������� � �������� ������� ��� ������,��� � � ������.� ����� ����
                                  //   SendKeys.Send("{Enter}");                      //��������� �� ������ � ��������� ��������������� ��� �������-�������������� ����� �� "�������"
                                 }  

                                   break;
                //user chose binary--������������ ������ ����� �� ���� ���������
                case TransmissionType.Hex:
                    //retrieve number of bytes in the buffer--������� ����� ������ � ������
                    int bytes = comPort.BytesToRead;
                    //create a byte array to hold the awaiting data--�������� ������ �����, ����� ������� ������ ��������
                    byte[] comBuffer = new byte[bytes];
                    //read the data and store it
                    comPort.Read(comBuffer, 0, bytes);
                    //display the data to the user
                    //DisplayData(MessageType.Incoming,"����� ����� ������� ---  " + DateTime.Now + "  -- " + ByteToHex(comBuffer) + "\n");
                    DisplayData(MessageType.Incoming, ByteToHex(comBuffer) + "\n");
                    break;
                /*      default:
                         //read data waiting in the buffer
                           string str = comPort.ReadExisting();
                         //display the data to the user
                           DisplayData(MessageType.Incoming, str + "\n");   
                           break;   */
                            } 
            }

        private byte ByteToHex(char p)
        {
            throw new NotImplementedException();
        }
              
        #endregion

        private byte[] HexToByte(object msg)
        {
            throw new NotImplementedException();
        }

        public object msg { get; set; }

        public byte[] comBuffer { get; set; }

        internal static byte[] SendPacket(byte[] comBuffer)
        {
            throw new NotImplementedException();
        }


        public void WriteData(byte[] comBuffer)
        {
          //  switch (CurrentTransmissionType)
         //   {
          //      case TransmissionType.Text:
          /*          try
                    {
                        //first make sure the port is open
                        //if its not open then open it
                        if (!(comPort.IsOpen == true)) comPort.Open();
                        //send the message to the port
                            msg = packet_string;
                       // comPort.Write(pack);
                        //display the message
                        DisplayData(MessageType.Outgoing, msg + "\n");
                    }

                    catch
                    {
                        MessageBox.Show("1-������ ������ ������ � ����");
                    }
                    break;

             */  // case TransmissionType.Hex:
                    try
                    {
                        if (matrica > 0)//��� �����,����� ��������� ������� "������"
                        {
                            int x1, x2;                                       //�� ��� ��� ��������� ���-�� ����� ���������
                            char c1, c2;                                     //
                            x1 = comBuffer[11];                              //
                            x2 = comBuffer[12];                              //
                            c1 = Convert.ToChar(x1);                         //
                            c2 = Convert.ToChar(x2);                         //
                            tte_26 = Convert.ToString(c1) + Convert.ToString(c2);//
                            matrica = Convert.ToInt32(tte_26);
                            matricasum = matrica * matrica;
                        }
                        //convert the message to byte array
                        //byte[] newMsg = commBuffer;// pack;// HexToByte(msg);
                        //send the message to the port
                        comPort.Write(comBuffer, 0, comBuffer.Length);//<--����� ����� ��� �������
                        //serialPort.Write(comBuffer, 0, comBuffer.Length);@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
                        //convert back to hex and display
                      //!=18-��� ����� ��� ������� ���������� ����������� �� ����������� 
                        if (comBuffer.Length != 14) DisplayData(MessageType.Outgoing, DateTime.Now.ToLongTimeString() + "  " + "���� ���������� -- " + ByteToHex(comBuffer) + "\n");
                    }
                    catch (FormatException ex)
                    {
                        //display error message
                        DisplayData(MessageType.Error, ex.Message);
                    }
                 //   finally
                //    {
                        //           _displayWindow.SelectAll();
                //    }
                //    break;
              //  default: try
           /*         {
                        //first make sure the port is open--������� ��������������, ��� ���� ������
                        //if its not open then open it--���� �� �������� ����� ��������� ���
                        if (!(comPort.IsOpen == true)) comPort.Open();
                        //send the message to the port
                    //    comPort.Write(pack);
                        //display the message--���������� ���������
                        DisplayData(MessageType.Outgoing, msg + "\n");
                    }
         */    /*       catch
                    {
                        MessageBox.Show("2-������ ��� Hex ��������");
                    }
                    break;
              */  //break;//************************������ ��������������**********************************
         //   }
          //  throw new NotImplementedException();
        }


        public bool IsOpen { get; set; }

        internal void WriteData(byte[] comBuffer, int p, int p_2)
        {
            throw new NotImplementedException();
        }

        public EventHandler btnGetDataFromForm_Click { get; set; }

      //  public Label DisplayWind_61 { get; set; }
    }
}