using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PCComm
{
    public class Matr
    {        // Данные
        public int nRows;
        public int nCols;
        public double[,] Matrix;
        // int COUNT;

        // Свойства
        public int Rows
        {
            get { return nRows; }
            set { if (nRows < 99) { Matrix = new double[value, nCols]; nRows = value; } else nRows = 99; }
        }

        public int Cols
        {
            get { return nCols; }
            set { if (nCols < 99) { Matrix = new double[nRows, value]; nCols = value; } else nCols = 99; }
        }
        /*       public int Rows
               {
                   get { return nRows; }
                   set { nRows = value;  }
               }

               public int Cols
               {
                   get { return nCols; }
                   set { nCols = value;}
               }
              */

        // Методы
        public Matr(int _nRows, int _nCols)
        {
            nCols = _nCols;
            nRows = _nRows;
            Matrix = new double[_nRows, _nCols];
        }

        /*    public void FillRand()
            {
                Random r = new Random();
                for (int i = 0; i < nRows; i++)
                    for (int j = 0; j < nCols; j++)
                        Matrix[i, j] = r.Next(COUNT);
            }   */

        /*        public void FillRand()
          {
              for (int i = 0; i < nRows; i++)
                  for (int j = 0; j < nCols; j++)
                      Matrix[i, j] = COUNT;
          }   */

        public override string ToString()
        {
            String res = "Matrix:";
            for (int i = 0; i < nRows; i++)
            {
                res += "\n";
                for (int j = 0; j < nCols; j++)
                {
                    res += Matrix[i, j];
                    res += " ";
                }
            }
            return res;
        }

        public double GetMin()
        {
            double min = Matrix[0, 0];
            for (int i = 0; i < nRows; i++)
                for (int j = 0; j < nCols; j++)
                    if (Matrix[i, j] < min)
                        min = Matrix[i, j];
            return min;
        }

        public double GetMax()
        {
            double max = Matrix[0, 0];
            for (int i = 0; i < nRows; i++)
                for (int j = 0; j < nCols; j++)
                    if (Matrix[i, j] > max)
                        max = Matrix[i, j];
            return max;
        }

        public double GetMax_double()
        {
            double max_doubl = Matrix[0, 0];
            for (int i = 0; i < nRows; i++)
                for (int j = 0; j < nCols; j++)
                    if (Matrix[i, j] > max_doubl)
                        max_doubl = Matrix[i, j];
            return max_doubl;
        }
    }
}

