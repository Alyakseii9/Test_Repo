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
            //Подключение обработчика получения данных из класса
            //btnGetDataFromClass.Click += new EventHandler(btnGetDataFromClass_Click);
           //-----------------------------------------------------------------------------------------

        //    InitializeComponent();
      /*      firstRowNum.Value = 3;
            firstColumnNum.Value = 3;
            secondRowNum.Value = 3;
            secondColumnNum.Value = 3;
            _first = new double[,]
            {
                { 5, 8, -4 },
                { 6, 9, -5 },
                { 4, 7, -3 }
            };
            _second = new double[,]
            {
                { 3, 2, 5 },
                { 4, -1, 3 },
                { 9, 6, 5 }
            };
            ResizeArray(ref _first, 3, 3);
            PutArrayToDataGridView(_first, firstDgv);
            ResizeArray(ref _second, 3, 3);
            PutArrayToDataGridView(_second, secondDgv);     *///------------------------------------------------------
        }
    /*   private double[,] _first, _second;
       private void secondRowsNum_ValueChanged(object sender, EventArgs e)
       {
           ResizeArray(ref _second, (int)secondRowNum.Value, (int)secondColumnNum.Value);
           PutArrayToDataGridView(_second, secondDgv);
       }

       private void secondColumnsNum_ValueChanged(object sender, EventArgs e)
       {
           ResizeArray(ref _second, (int)secondRowNum.Value, (int)secondColumnNum.Value);
           PutArrayToDataGridView(_second, secondDgv);
       }

       private void firstColumnNum_ValueChanged(object sender, EventArgs e)
       {
           ResizeArray(ref _first, (int)firstRowNum.Value, (int)firstColumnNum.Value);
           PutArrayToDataGridView(_first, firstDgv);
       }

       private void firstRowsNum_ValueChanged(object sender, EventArgs e)
       {
           ResizeArray(ref _first, (int)firstRowNum.Value, (int)firstColumnNum.Value);
           PutArrayToDataGridView(_first, firstDgv);
       }

       private void firstDgv_CellEndEdit(object sender, DataGridViewCellEventArgs e)
       {
           _first[e.RowIndex, e.ColumnIndex] = double.Parse(firstDgv[e.ColumnIndex, e.RowIndex].Value.ToString());
       }

       private void secondDgv_CellEndEdit(object sender, DataGridViewCellEventArgs e)
       {
           _second[e.RowIndex, e.ColumnIndex] = double.Parse(secondDgv[e.ColumnIndex, e.RowIndex].Value.ToString());
       } */
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

     /*  private void evaluateButton_Click(object sender, EventArgs e)
       {
           PutArrayToDataGridView(Multiply(_first, _second), resultDgv);
       } */

       /// <summary>
       /// Отображение массива в DataGridView
       /// </summary>
       /// <param name="ar">Массив, который нужно отобразить</param>
       /// <param name="dgv">DataGridView, в котором нужно отобразить массив</param>
   /*    private void PutArrayToDataGridView(double[,] ar, DataGridView dgv)
       {
           dgv.Columns.Clear();
           dgv.Rows.Clear();
           dgv.ColumnCount = ar.GetLength(1);
           dgv.RowCount = ar.GetLength(0);
           for (int i = 0; i < ar.GetLength(0); i++)
           {
               for (int j = 0; j < ar.GetLength(1); j++)
               {
                   dgv[j, i].Value = ar[i, j];
               }
           }
           //Кнопка будет активна, если количество столбцов первой матрицы равно количеству строк второй
           evaluateButton.Enabled = firstColumnNum.Value.Equals(secondRowNum.Value);
       }       */ 
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
//-----------------------------------------------------------------------------------------------------------------------
       /*     diagramma = new double[_nRow, _nCol];
            //dataGridView1.ColumnCount = matrica;
            //dataGridView1.RowCount = matrica;
            for (int iii = 0; iii < _nCol; ++iii)
            {
                // for (int j = 0; j < kolvo_tochek; ++j)
                for (int j = 0; j < _nRow; ++j)
                {
                    //Значения ячеек хряняться в типе object
                    //это позволяет хранить любые данные в таблице
                    //object o = diagr.diagramma[j, iii];//.Value;
                    //object o = m.Matrix[iii, j];
                    dataGridView1[j, iii].Value = diagramma[j, iii];
                }
            }     */
//------------------------------------------------------------------------------------------------------------------------------
            Tab.Columns.Add("X");
            Tab.Columns.Add("Y");
            Tab.Columns.Add("Z");  

           // Tab.co
            //ad = 3;
            
      /*      BindingList<Vtabl> data = new BindingList<Vtabl>();
            for (int i = 0; i < _nCol; i++)
            {
                float rr = Convert.ToInt32(diagramma[i, i]);
                Tab.Columns.Add(new DataColumn()) ;
                Tab.Rows.Add(new String[i]);
                //Tab.Rows[i].AcceptChanges();
                //Convert.ToString(" ");
                data.Add(new Vtabl(rr));
                //data[i] = diagramma[i, i];
                //dataGridView2.DataSource = Tab;
               // dataGridView2.DataSource = data;
            }

            DataGridView dgv = new DataGridView();
            dataGridView2.DataSource = data;
            */
       /*     dgv.Location = new Point(50, 50);
            dgv.DataSource = data;
            this.Controls.Add(dgv);   */

           // dgv.RowCount = Convert.ToInt32(_nCol);
       /*     firstDgv.RowCount = Convert.ToInt32(_nCol);
            for (int i = 0; i < _nCol; ++i)
            {
                for (int j = 0; j < _nCol; ++j)
                {
                    //Значения ячеек хряняться в типе object
                    //это позволяет хранить любые данные в таблице
                    object o = dataGridView2[j, i].Value;
                    data.Add(new Vtabl(matrica));
                    dataGridView2.DataSource = data;
                }
            }    */

        }

    /*    public diagram(double matric, int matrica)
        {
            // TODO: Complete member initialization
            this.matric = matric;
            this.matrica = matrica;
        }

        public diagram(double matric, double matric_2)
        {
            // TODO: Complete member initialization
            this.matric = matric;
            this.matric_2 = matric_2;
        }     */

    /*   public string matric
       {
           get { return matric; }
           set {nmatric = value; }
       }

       public string matric_2
       {
           get { return matric_2; }
           set { nmatric_2 = value; }
       }

        public diagram(string _nmatric, string _nmatric_2)
        {
            // TODO: Complete member initialization
            this.matric = _nmatric;
            this.matric_2 = matric_2;
            diagramma = new string[_nmatric, _nmatric_2];  
        }   */
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

