using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Drawing;

namespace PCComm
{

    /// <summary>
    /// Основной класс. Инкапсулирует функционал рабочей книги Ecxel.
    /// </summary>
    public class Document
    {
        object oWorksheets { get; set; }
        object oWorksheet { get; set; }
        object oRange { get; set; }

        object oWorkbook = null;
        /// <summary>
        /// Рабочая книга
        /// </summary>
        public object oWorkBook
        {
            get { return oWorkbook; }
            set
            {
                oWorkbook = value;
                oWorksheets = value.GetType().InvokeMember("Worksheets", BindingFlags.GetProperty, null, value, null);
                SetActiveSheet(1);
            }
        }
        /// <summary>
        /// Конструктор по умолчанию. 
        /// </summary>
        [Obsolete("Не рекомендуется к использованию!")]
        public Document()
        {
            oWorkBook = null;
            oWorksheets = null;
            oWorksheet = null;
        }

        public Document(object workBook)
        {
            oWorkBook = workBook;
            oWorksheets = oWorkBook.GetType().InvokeMember("Worksheets", BindingFlags.GetProperty, null, oWorkBook, null);
        }

        /// <summary>
        /// Задать рабочую книгу
        /// </summary>
        [Obsolete("Не рекомендуется к использованию!")]
        public void SetWorkBook(object workBook)
        {
            oWorkBook = workBook;
        }

        /// <summary>
        /// Указать активный лист по индексу. <b>Нумерация начинается с 1</b>
        /// </summary>
        public void SetActiveSheet(int sheet)
        {
            if (oWorksheets == null) throw new MemberAccessException("Не задана книга.");
            oWorksheet = oWorksheets.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oWorksheets, new object[] { sheet });
            oWorksheet.GetType().InvokeMember("Select", BindingFlags.InvokeMethod, null, oWorksheet, null);
        }

        /// <summary>
        /// Указать активный лист по имени
        /// </summary>
        public void SetActiveSheet(string sheet)
        {
            if (oWorksheets == null) throw new MemberAccessException("Не задана книга.");
            oWorksheet = oWorksheets.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oWorksheets, new object[] { sheet });
            oWorksheet.GetType().InvokeMember("Select", BindingFlags.InvokeMethod, null, oWorksheet, null);
        }

        /// <summary>
        /// Добавить лист
        /// </summary>
        public void AddSheet(string name, bool active = true)
        {
            oWorksheet = oWorksheets.GetType().InvokeMember("Add", BindingFlags.InvokeMethod, null, oWorksheets, null);
            oWorksheet.GetType().InvokeMember("Name", BindingFlags.SetProperty, null, oWorksheet, new object[] { name });
            if (active) oWorksheet.GetType().InvokeMember("Select", BindingFlags.InvokeMethod, null, oWorksheet, null);
        }

        /// <summary>
        /// Получить ячейку. Используется для указания выделенных областей (Range)
        /// </summary>
        public object GetCell(int x, int y)
        {
            return oWorksheet.GetType().InvokeMember("Cells", BindingFlags.GetProperty, null, oWorksheet, new object[] { x, y });
        }

        /// <summary>
        /// Выделить область
        /// </summary>
        public void SetRange(int x1, int y1, int x2, int y2)
        {
            oRange = oWorksheet.GetType().InvokeMember("Range", BindingFlags.GetProperty, null, oWorksheet, new object[] { GetCell(x1, y1), GetCell(x2, y2) });
            oRange.GetType().InvokeMember("Select", BindingFlags.InvokeMethod, null, oRange, null);
        }

        /// <summary>
        /// Выделить область
        /// </summary>
        public void SetRange(object cell1, object cell2)
        {
            oRange = oWorksheet.GetType().InvokeMember("Range", BindingFlags.GetProperty, null, oWorksheet, new object[] { cell1, cell2 });
            oRange.GetType().InvokeMember("Select", BindingFlags.InvokeMethod, null, oRange, null);
        }

        /// <summary>
        /// Выделить область
        /// </summary>
        public void SetRange(object cell)
        {
            oRange = oWorksheet.GetType().InvokeMember("Range", BindingFlags.GetProperty, null, oWorksheet, new object[] { cell, cell });
            oRange.GetType().InvokeMember("Select", BindingFlags.InvokeMethod, null, oRange, null);
        }

        /// <summary>
        /// Объединить ячейки
        /// </summary>
        public void Merge()
        {
            oRange.GetType().InvokeMember("Merge", BindingFlags.InvokeMethod, null, oRange, null);
        }

        /// <summary>
        /// Задать цвет фона выделенной области
        /// </summary>
        public void SetBackColorRange(Color color)
        {
            color = Color.FromArgb(255, color.B, color.G, color.R);
            object oInterior = oRange.GetType().InvokeMember("Interior", BindingFlags.GetProperty, null, oRange, null);
            oInterior.GetType().InvokeMember("Pattern", BindingFlags.SetProperty, null, oInterior, new object[] { 1 });
            oInterior.GetType().InvokeMember("Color", BindingFlags.SetProperty, null, oInterior, new object[] { color.ToArgb() });
        }

        /// <summary>
        /// Задать цвет символов в выделенной области
        /// </summary>
        public void SetForeColorRange(Color color)
        {
            color = Color.FromArgb(255, color.B, color.G, color.R);
            object oFont = oRange.GetType().InvokeMember("Font", BindingFlags.GetProperty, null, oRange, null);
            oFont.GetType().InvokeMember("Color", BindingFlags.SetProperty, null, oFont, new object[] { color.ToArgb() });
        }

        /// <summary>
        /// Задать жирность шрифта в выделенной области
        /// </summary>
        public void SetFontBoldRange(bool bold)
        {
            object oFont = oRange.GetType().InvokeMember("Font", BindingFlags.GetProperty, null, oRange, null);
            oFont.GetType().InvokeMember("Bold", BindingFlags.SetProperty, null, oFont, new object[] { bold });
        }

        /// <summary>
        /// Задать размер шрифта в выделенной области
        /// </summary>
        public void SetFontSizeRange(int size)
        {
            object oFont = oRange.GetType().InvokeMember("Font", BindingFlags.GetProperty, null, oRange, null);
            oFont.GetType().InvokeMember("Size", BindingFlags.SetProperty, null, oFont, new object[] { size });
        }

        public object this[int x, int y]
        {
            get
            {
                object oCell = oWorksheet.GetType().InvokeMember("Cells", BindingFlags.GetProperty, null, oWorksheet, new object[] { x, y });
                return oCell.GetType().InvokeMember("Value", BindingFlags.GetProperty, null, oCell, null);
            }
            set
            {
                object oCell = oWorksheet.GetType().InvokeMember("Cells", BindingFlags.GetProperty, null, oWorksheet, new object[] { x, y });
                oCell.GetType().InvokeMember("Value", BindingFlags.SetProperty, null, oCell, new object[] { value });
            }
        }

        /// <summary>
        /// Сохраняет документ с указанным именем. Если такой файл существует к указанному имени будет добавлен порядковый номер.
        /// </summary>
        public void SaveAs(string path)
        {
            FileInfo file = new FileInfo(path);
            string ext = file.Extension;
            int N = 0;

            if (!Directory.Exists(file.DirectoryName)) Directory.CreateDirectory(file.DirectoryName);

            if (file.Exists)
            {
                string s = file.FullName.Replace(file.Extension, "");
                while (File.Exists(s + (N++).ToString() + ext)) ;
                oWorkBook.GetType().InvokeMember("SaveAs", BindingFlags.InvokeMethod, null, oWorkBook, new object[1] { s + N.ToString() + ext });
            }
            else
                oWorkBook.GetType().InvokeMember("SaveAs", BindingFlags.InvokeMethod, null, oWorkBook, new object[1] { path });

        }

        /// <summary>
        /// Сохраняет текущий документ
        /// </summary>
        public void Save()
        {
            oWorkBook.GetType().InvokeMember("Save", BindingFlags.InvokeMethod, null, oWorkBook, null);
        }

        /// <summary>
        /// Делает окантовку жирной линией по выделенной области
        /// </summary>
        public void DrawMediumLineRange()
        {
            object oBorders = oRange.GetType().InvokeMember("Borders", BindingFlags.GetProperty, null, oRange, null);

            object oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 5 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { -4142 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 6 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { -4142 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 9 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { -4138 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 7 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { -4138 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 10 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { -4138 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 8 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { -4138 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
        }

        /// <summary>
        /// Выделяет все линии входящие в выбранную область
        /// </summary>
        public void DrawThinLineRange()
        {
            object oBorders = oRange.GetType().InvokeMember("Borders", BindingFlags.GetProperty, null, oRange, null);

            object oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 5 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { -4142 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 6 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { -4142 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 9 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { 2 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 7 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { 2 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 10 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { 2 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 8 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { 2 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 12 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { 2 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

            oBorder = oBorders.GetType().InvokeMember("Item", BindingFlags.GetProperty, null, oBorders, new object[] { 11 });
            oBorder.GetType().InvokeMember("LineStyle", BindingFlags.SetProperty, null, oBorder, new object[] { 1 });
            oBorder.GetType().InvokeMember("Weight", BindingFlags.SetProperty, null, oBorder, new object[] { 2 });
            oBorder.GetType().InvokeMember("ColorIndex", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });
            oBorder.GetType().InvokeMember("TintAndShade", BindingFlags.SetProperty, null, oBorder, new object[] { 0 });

        }

        /// <summary>
        /// Задает ширину столбцов входящих в выделенную область
        /// </summary>
        public void SetColumnWidth(float width)
        {
            oRange.GetType().InvokeMember("ColumnWidth", BindingFlags.SetProperty, null, oRange, new object[] { width });
        }

        /// <summary>
        /// Задает высоту строк входящих в выделенную область
        /// </summary>
        public void SetRowHeight(float height)
        {
            oRange.GetType().InvokeMember("RowHeight", BindingFlags.SetProperty, null, oRange, new object[] { height });
        }

        /// <summary>
        /// Горизонтальное выравнивание в области
        /// </summary>
        public void SetHorizontalAligmentRange(RangeAligment aligment)
        {
            oRange.GetType().InvokeMember("HorizontalAlignment", BindingFlags.SetProperty, null, oRange, new object[] { aligment });
        }

        /// <summary>
        /// Вертикальное выравнивание
        /// </summary>
        public void SetVerticalAligmentRange(RangeAligment aligment)
        {
            oRange.GetType().InvokeMember("VerticalAlignment", BindingFlags.SetProperty, null, oRange, new object[] { aligment });
        }
    }
}
