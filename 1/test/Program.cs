// See https://aka.ms/new-console-template for more information
//Console.WriteLine("Hello, World!");
using CefSharp.Wpf;
using System;
using System.Drawing;
using System.Text;

namespace ConsoleApplicationTest
{
    /// Точка.
    public class Point
    {
        /// Координата X точки.
        public double X { get; set; }

        /// Координата Y точки.
        public double Y { get; set; }

        /// Создание точки по её координатам.
        /// <param name="x">Координата X точки.</param>
        /// <param name="y">Координата Y точки.</param>
        public Point(double x, double y)
        {
            X = x;
            Y = y;
        }
    }

    ///Цвет
    public class ColorRGB
    {
        private ColorRGB(double _red, double _green, double _blue)
        {
            Red = _red;
            Green = _green;
            Blue = _blue;
        }

        public static ColorRGB ColorRGB_RGBModel(double _red, double _green, double _blue)
        {
            return new ColorRGB(_red, _green, _blue);
        }

        public static ColorRGB ColorRGB_CMYModel(double _cyan, double _magenta, double _yellow)
        {
            var _red = 1 - _cyan;
            var _green = 1 - _magenta;
            var _blue = 1 - _yellow;
            return new ColorRGB(_red, _green, _blue);
        }

        public double Red
        {
            get { return red; }
            private set { red = red < 0 ? 0 : (red > 1 ? 1 : value); }
        }
        public double Green
        {
            get { return green; }
            private set { green = green < 0 ? 0 : (green > 1 ? 1 : value); }
        }
        public double Blue
        {
            get { return blue; }
            private set { blue = blue < 0 ? 0 : (blue > 1 ? 1 : value); }
        }
        public double Cyan
        {
            get { return cyan; }
            private set { cyan = cyan < 0 ? 0 : (cyan > 1 ? 1 : value); }
        }
        public double Magenta
        {
            get { return magenta; }
            private set { magenta = magenta < 0 ? 0 : (magenta > 1 ? 1 : value); }
        }
        public double Yellow
        {
            get { return yellow; }
            private set { yellow = yellow < 0 ? 0 : (yellow > 1 ? 1 : value); }
        }

        private double red;
        private double green;
        private double blue;
        private double cyan;
        private double magenta;
        private double yellow;
    }

    /// Прямоугольник.
    public class Rectangle
    {
        private void ShowPropertiesOfSlateBlue(PaintEventArgs e)
        {
            Color slateBlue = Color.FromName("SlateBlue");
            byte g = slateBlue.G;
            byte b = slateBlue.B;
            byte r = slateBlue.R;
            byte a = slateBlue.A;
            string text = String.Format("Slate Blue has these ARGB values: Alpha:{0}, " +
                "red:{1}, green: {2}, blue {3}", new object[] { a, r, g, b });
            object value = e.Graphics.DrawString(text,
                new Font(this.Font, FontStyle.Italic),
                new SolidBrush(slateBlue),
                new RectangleF(new PointF(0.0F, 0.0F), this.Size));
        }

        /// Левая нижняя точка.
        public Point LowerLeftPoint { get; set; }

        /// Правая верхняя точка.
        public Point UpperRightPoint { get; set; }

        /// Левая верхняя точка.
        public Point UpperLeftPoint { get; set; }

        /// Правая нижняя точка. 
        public Point LowerRightPoint { get; set; }
        public SizeF Size { get; private set; }


        /// Создание прямоугольника по координатам двух его точек.
        /// <param name="lowerLeftPoint">Левая нижняя точка.</param>
        /// <param name="upperRightPoint">Правая верхняя точка.</param>
        public Rectangle(Point lowerLeftPoint, Point upperRightPoint)
        {
            LowerLeftPoint = lowerLeftPoint;
            UpperRightPoint = upperRightPoint;

            // Вычисление остальных точке прямоугольника.
            UpperLeftPoint = new Point(lowerLeftPoint.X, upperRightPoint.Y);
            LowerRightPoint = new Point(upperRightPoint.X, lowerLeftPoint.Y);
        }
    }



    class Program
    {
        static void Main(string[] args)
        {
            // Создаём генератор случайных чисел.
            Random random = new Random();

            // Создаём массив прямоугольников.
            Rectangle[] rectangles = new Rectangle[10];

            // Заполняем массив прямоугольников.
            for (int rec = 0; rec < rectangles.Length; rec++)
            {
                rectangles[rec] = new Rectangle(
                    new Point(2 * random.NextDouble(), 2 * random.NextDouble()),
                    new Point(2 * random.NextDouble(), 2 * random.NextDouble()));
            }
            
                 
            Console.ReadKey();
        }

    }
}