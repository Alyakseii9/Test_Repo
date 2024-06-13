using System;
using System.Runtime.InteropServices;
using System.Reflection;

namespace PCComm
{
    /// <summary>
    /// Класс приложения Excel
    /// </summary>
    public class Excel : IDisposable
    {
        /// <summary>
        /// Документ Excel (Книга)
        /// </summary>
        public object Document { get; private set; }

        bool IsOffice { get; set; }
        object oExcel = null;

        /// <summary>
        /// Конструктор. 
        /// pathPattern - отвечает за путь к шаблону, если путь пуст будет создана новая книга. 
        /// visibility - отображение документа пользователю
        /// </summary>
        public Excel(string pathPattern = "", bool visibility = true)
        {
            IsOffice = CheckExcel();
            if (!IsOffice) throw new COMException("MS Excel не найден на компьютере.");

            object[] args = new object[1];
            oExcel.GetType().InvokeMember("Visible", BindingFlags.SetProperty, null, oExcel, new object[1] { visibility });

            object oWorkbooks = oExcel.GetType().InvokeMember("Workbooks", BindingFlags.GetProperty, null, oExcel, null);

            object oWorkbook = null;
            if (pathPattern.Length > 0)
                oWorkbook = oWorkbooks.GetType().InvokeMember("Open", BindingFlags.InvokeMethod, null, oWorkbooks, new object[1] { pathPattern });
            else
                oWorkbook = oWorkbooks.GetType().InvokeMember("Add", BindingFlags.InvokeMethod, null, oWorkbooks, null);

            Document = oWorkbook;

        }

        /// <summary>
        /// Получить рабочий документ (книгу)
        /// </summary>
        public object GetDocument()
        {
            return Document;
        }

        bool CheckExcel()
        {
            string sAppProgID = "Excel.Application";
            try
            {
                oExcel = Marshal.GetActiveObject(sAppProgID);
            }
            catch
            {
                try
                {
                    Type tExcelObj = Type.GetTypeFromProgID(sAppProgID);
                    oExcel = Activator.CreateInstance(tExcelObj);
                }
                catch
                {
                    return false;
                }
            }
            return true;
        }

        void IDisposable.Dispose()
        {
            // Уничтожение объекта Excel.
            Marshal.ReleaseComObject(oExcel);
            // Вызываем сборщик мусора для немедленной очистки памяти
            GC.GetTotalMemory(true);
        }
    }
}
