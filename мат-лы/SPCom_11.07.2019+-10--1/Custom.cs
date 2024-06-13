using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PCComm
{
    class Custom
    {
      /*  public static int ComparePortNames(string x, string y)
        {
            if (x == null)
            {
                if (y == null)
                {
                    // If x is null and y is null, they're
                    // equal. 
                    return 0;
                }
                else
                {
                    // If x is null and y is not null, y
                    // is greater. 
                    return -1;
                }
            }
            else
            {
                // If x is not null...
                //
                if (y == null)
                // ...and y is null, x is greater.
                {
                    return 1;
                }
                else
                {
                    // ...and y is not null, compare the 
                    // lengths of the two strings.
                    //
                    int retval = x.Length.CompareTo(y.Length);

                    if (retval != 0)
                    {
                        // If the strings are not of equal length,
                        // the longer string is greater.
                        //
                        return retval;
                    }
                    else
                    {
                        // If the strings are of equal length,
                        // sort them with ordinary string comparison.
                        //
                        int ix = Convert.ToInt32(x.Substring(3, x.Length - 3));
                        int iy = Convert.ToInt32(y.Substring(3, y.Length - 3));
                        return ix.CompareTo(iy);
                    }
                }
            }
        }  */
        public static byte[] Concat(byte[] a, byte[] b)
        {
            if (a == null) throw new ArgumentNullException("Array: a");
            if (b == null) throw new ArgumentNullException("Array: b");

            byte[] buf = new byte[a.Length + b.Length];

            Array.Copy(a, buf, a.Length);
            Array.Copy(b, 0, buf, a.Length, b.Length);

            return buf;
        }

        public static byte[] Concat(byte[] a, byte[] b, byte[] c)
        {
            if (a == null) throw new ArgumentNullException("Array: a");
            if (b == null) throw new ArgumentNullException("Array: b");
            if (c == null) throw new ArgumentNullException("Array: c");

            byte[] buf = new byte[a.Length + b.Length + c.Length];

            Array.Copy(a, buf, a.Length);
            Array.Copy(b, 0, buf, a.Length, b.Length);
            Array.Copy(c, 0, buf, b.Length + a.Length, c.Length);

            return buf;
        }

        public static int CRC(byte[] hex)
        {
            int crc = 0;

            for (int i = 0; i < hex.Length; i++)
            {
                crc += hex[i];
            }

            crc += (crc >> 8) & 0xFF;
            return 0xFF & crc;
        }

        public static void Truncate(ref byte[] array, int index, int length)
        {
            if (array == null) throw new ArgumentNullException("array");
            if (index < 0 || index >= array.Length) throw new ArgumentOutOfRangeException("index");
            if (length < 0 || (index + length) > array.Length) throw new ArgumentOutOfRangeException("length");

            for (int i = 0; i < length; i++)
            {
                array[i] = array[i + index];
            }

            Array.Resize(ref array, length);
        }

        public static void Truncate(ref byte[] array, int index)
        {
            if (array == null) throw new ArgumentNullException("array");
            if (index < 0 || index >= array.Length) throw new ArgumentOutOfRangeException("index");

            for (int i = 0; i < array.Length - index; i++)
            {
                array[i] = array[i + index];
            }

            Array.Resize(ref array, array.Length - index);
        }

        static void CheckCrcMetodArguments(byte[] hex, int index, int length)
        {
            if (hex == null) throw new ArgumentNullException("hex");
            if (hex.Length < 2) throw new ArgumentOutOfRangeException("hex", "Array length must be more than 2 elements");
            if (index < 0 || index > hex.Length) throw new ArgumentOutOfRangeException("index");
            if (index + length > hex.Length) throw new ArgumentOutOfRangeException("lenght");
        }

        /// <param name="hex">The one-dimensional byte array</param>
        public static int CRC08(byte[] hex)
        {
            return CRC08(hex, 0, hex.Length);
        }

        /// <param name="hex">The one-dimensional byte array</param>
        /// <param name="length">The number of elements in the section</param>
        public static int CRC08(byte[] hex, int length)
        {
            return CRC08(hex, 0, length);
        }

        /// <param name="hex">The one-dimensional byte array</param>
        /// <param name="index">The starting index of the section</param>
        /// <param name="length">The number of elements in the section</param>
        public static int CRC08(byte[] hex, int index, int length)
        {
            CheckCrcMetodArguments(hex, index, length);

            int crc = 0;

            for (int i = index; i < index + length; i++)
            {
                crc += hex[i];
            }

            crc += (crc >> 8) & 0xFF;
            return 0xFF & crc;
        }

        /// <summary>
        /// Т.к. в трехканальном блоке электронного пирометра (который делал сторонний производитель)
        /// программисты забыли перенести разряды при подсчете CRC, начальство решило ...
        /// Было принято решение создать еще одну версию подсчета контрольной суммы - неправильную.
        /// </summary>
        /// <param name="hex">The one-dimensional byte array</param>
        /// <param name="index">The starting index of the section</param>
        /// <param name="length">The number of elements in the section</param>
        /// <returns></returns>
        internal static int CRC08Wrong(byte[] hex, int index, int length)
        {
            CheckCrcMetodArguments(hex, index, length);

            int crc = 0;

            for (int i = index; i < index + length; i++)
            {
                crc += hex[i];
            }

            //crc += (crc >> 8) & 0xFF;
            return 0xFF & crc;
        }

        /// <summary>
        /// CRC16-CCITT
        /// </summary>
        /// <param name="hex">The one-dimensional byte array</param>
        public static int CRC16(byte[] hex)
        {
            return CRC16(hex, 0, hex.Length);
        }

        /// <summary>
        /// CRC16-CCITT
        /// </summary>
        /// <param name="hex">The one-dimensional byte array</param>
        /// <param name="length">The number of elements in the section</param>
        public static int CRC16(byte[] hex, int length)
        {
            return CRC16(hex, 0, length);
        }

        /// <summary>
        /// CRC16-CCITT
        /// </summary>
        /// <param name="hex">The one-dimensional byte array</param>
        /// <param name="index">The starting index of the section</param>
        /// <param name="length">The number of elements in the section</param>
        public static int CRC16(byte[] hex, int index, int length)
        {
            CheckCrcMetodArguments(hex, index, length);

            int carry = 0;
            int RCLow = 0;
            int RCHgh = 0;

            for (int i = index; i < index + length; i++)
            {
                carry = 0xFF & (RCHgh ^ hex[i]);
                carry = 0xFF & (carry ^ (carry >> 4));
                RCHgh = 0xFF & (RCLow ^ (carry << 4) ^ (carry >> 3));
                RCLow = 0xFF & (carry ^ (carry << 5));
            }

            return RCLow | (RCHgh << 8);
        }
        //*****************************************************Команды для Tramsmitter’a******************************
        /// <summary>
        /// Формирует команду для перехода в переодический режим (0х30).
        /// </summary>
        /// <param name="interval">Интервал измерений (кратный 15), Секунды</param>
     /*   public byte[] GetPeriodicalModePacket(int interval)
        {
            if (interval < 15 || interval > 3600) throw new ArgumentOutOfRangeException("interval");
            if (interval % 15 > 0) throw new ArgumentException("Interval must be multiple of 15", "interval");

            byte[] packet = new byte[] 
            { 
                0x39, 0x30, 0x30, 0x30,
                (byte)(0x30 + interval/1000), (byte)(0x30 + (interval/100)%10), (byte)(0x30 + (interval/10)%10), (byte)(0x30 + interval%10),
                0x2F, 0x2F, 0x2F, 0x2F,
                0x2F, 0x2F, 0x2F, 0x2F
            };

            return packet;
        }            */

        internal static byte[] Concat(byte[] p, byte[] fengl, byte p_2)
        {
            throw new NotImplementedException();
        }

        internal static byte[] Concat(byte[] fengl, byte p)
        {
            throw new NotImplementedException();
        }

        internal static byte[] Concat(byte[] fengl, byte p, byte p_2)
        {
            throw new NotImplementedException();
        }
    }
}
