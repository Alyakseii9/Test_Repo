using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PCComm
{
    class Custom
    {
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
