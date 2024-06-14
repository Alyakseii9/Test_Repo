using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

//using ExportExcel;
//using PCComm;

namespace PCComm
{
    public partial class diagram : Form
    {
                      //Конструктор формы
       public diagram()
        {
            InitializeComponent();
        }

       /// <summary>
       /// Изменение размера массива
       /// </summary>
       /// <param name="ar">Массив</param>
       /// <param name="rows">Количество строк</param>
       /// <param name="columns">Количество столбцов</param>
       private static void ResizeArray(ref double[,] ar, int rows, int columns)
       {
           if (ar == null)
           {
               ar = new double[rows, columns];
               return;
           }
           var arClone = ar.Clone() as double[,];
           var n = rows < ar.GetLength(0) ? rows : ar.GetLength(0);
           var m = columns < ar.GetLength(1) ? columns : ar.GetLength(1);
           ar = new double[rows, columns];
           for (int i = 0; i < n; i++)
           {
               for (int j = 0; j < m; j++)
               {
                   ar[i, j] = arClone[i, j];
               }
           }
       }

       /// <summary>
       /// Перемножение двумерных массивов
       /// </summary>
       /// <param name="ar1">Первый массив</param>
       /// <param name="ar2">Второй массив</param>
       /// <returns>Возвращает двумерный массив, являющийся произведением исходных массивов</returns>
       private static double[,] Multiply(double[,] ar1, double[,] ar2)
       {
           if (ar1.GetLength(1) != ar2.GetLength(0))
           {
               throw new ArgumentException("Данные массивы невозможно перемножить.");
           }
           var result = new double[ar2.GetLength(0), ar2.GetLength(1)];
           for (var i = 0; i < result.GetLength(0); i++)
           {
               for (var j = 0; j < result.GetLength(1); j++)
               {
                   var sum = 0d;
                   for (var k = 0; k < ar2.GetLength(0); k++)
                   {
                       sum += ar1[i, k] * ar2[k, j];
                   }
                   result[i, j] = sum;
               }
           }
           return result;
       }
        //-------------------------------------------------------------------------------------------------------
                //Обработчик кнопки получения данных из класса
        void btnGetDataFromClass_Click(object sender, EventArgs e)
        {
            //Создание объекта класса
            OtherClass other = new OtherClass();
            //Подключение обработчика получения данных из экземпляра класса
            other.sendDataFromClass += new EventHandler<UserEventArgs>(other_sendDataFromClass);
            //Вызываем метод получения данных
            other.SendTableToForm();
        }

        //Обработчик события получения данных из класса
        void other_sendDataFromClass(object sender, UserEventArgs e)
        {
            //Получаем таблицу из нашего именованного класса-аргумента события
            DataTable tableFromClass = e.SendingTable;
            //Выводим таблицу для показа в грид
            dataGridViewOtherClass.DataSource = tableFromClass;
        }
        
        // public CommunicationManager cm;
       //public Matr mdiagr;
       public int ad;
       public int nRow;
       public int nCol;
       public double nRo;
       public double nCo;
       public double[,] diagramma;
       //public string[,] diagramma;
       public string nmatric;
       public string nmatric_2;
       //private double matric;
       //private int matrica;
       //private double matric_2;
       //public double asa;


       public int Row
       {
           get { return nRow; }
           set { if (nRow < 99) { diagramma = new double[value, nCol]; nRow = value; } else nRow = 99; }
       }

       public int Col
       {
           get { return nCol; }
           set { if (nCol < 99) { diagramma = new double[nRow, value]; nCol = value; } else nCol = 99; }
       } 
        

        public diagram(int _nRow, int _nCol)
        {
            InitializeComponent();
           // btnGetDataFromClass.Click += new EventHandler(btnGetDataFromClass_Click);
            DataTable Tab = new DataTable();
            //m = new Matr(ad, ad);
            //cm = new CommunicationManager(ad, ad);
            //ad = cm.kolvo_tochek;
            //ad = TextBox.;// CommunicationManager.SendPacket;
            this.nCo = _nCol;
            this.nRo = _nRow;
            Tab.Columns.Add("X");
            Tab.Columns.Add("Y");
            Tab.Columns.Add("Z");  
        }

        public void Export()
        {
            using (Excel excel = new Excel())
            {
                Document doc = new Document(excel.Document);

                doc[1, 1] = " ";
                doc[1, 2] = " ";
                doc[1, 3] = " ";

                int x = 2;
                int y = 1;
                foreach (DataGridViewRow item in dataGridView1.Rows)
                {
                    foreach (DataGridViewCell value in item.Cells)
                    {
                        doc[x, y++] = value.Value;
                    }
                    x++;
                    y = 1;
                }    

                doc.SetRange(2, 1, x, 2);
                doc.SetHorizontalAligmentRange(RangeAligment.Left);
                doc.SetRange(1, 1, 1, 1);
            }
        
        }

        //Обработчик события получения данных из дочерней формы
        void pForm_sendDataFromFormEvent(object sender, UserEventArgs e)
        {
            //Получаем таблицу из нашего именованного класса-аргумента события
            DataTable tableFromForm = e.SendingTable;
            //Выводим таблицу для показа в грид
            dataGridViewParentForm.DataSource = tableFromForm;
        }

        internal static void ActiveForm()
        {
            throw new NotImplementedException();
        }
    }
}

