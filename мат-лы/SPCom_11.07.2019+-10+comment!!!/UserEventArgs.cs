using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using System.Data;

namespace PCComm
{
    //public класс, наследник от EventArgs
    //Используется как аргумент для передачи данных
    //в событиях
    public class UserEventArgs : EventArgs
    {
        //public readonly поле класса
        public readonly DataTable SendingTable;
        //Конструктор класса с параметром
        public UserEventArgs(DataTable dt)
        {
            SendingTable = dt;
        }
    }
}