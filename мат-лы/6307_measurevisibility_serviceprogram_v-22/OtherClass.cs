using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;

namespace PCComm
{
    class OtherClass
    {
        //private поле таблицы
        private DataTable tableFromClass;

        //Событие для передачи данных
        public event EventHandler<UserEventArgs> sendDataFromClass;

        //Конструктор класса
        public OtherClass()
        {
            //Метод формирования таблицы
            tableFromClass = GetTable();
        }

        //public метод отправки данных
        public void SendTableToForm()
        {
            //Генерируем событие с именованным аргументом
            //в класс аргумента передаем созданную таблицу
            if (sendDataFromClass != null)
                sendDataFromClass(this, new UserEventArgs(tableFromClass));
        }

        //private метод формирования таблицы
        private DataTable GetTable()
        {
            //Создаем таблицу
            DataTable dt = new DataTable("MyDataTable");

            //Создаем столбцы
            DataColumn columnID = new DataColumn("ID", typeof(string));
            DataColumn columnFName = new DataColumn("FirstName", typeof(string));
            DataColumn columnLName = new DataColumn("LastName", typeof(string));

            //Добавляем столбцы в таблицу
            dt.Columns.AddRange(new DataColumn[] { columnID, columnFName, columnLName });

            //Формируем строку из данных в текстовых полях
            DataRow row = dt.NewRow();
            row["ID"] = "1";
            row["FirstName"] = "Nicolai";
            row["LastName"] = "Ivanov";

            //Добавляем строку в таблицу
            dt.Rows.Add(row);

            //Возвращаем таблицу из метода
            return dt;
        }
    }
}
