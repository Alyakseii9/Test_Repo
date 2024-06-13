using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PCComm
{
   public class Shag_engine
   {
      public int xymaxint, xyvvodint, xytekystchint;
      public  string xy_vvod;
      public string XYmax;
      public string XY_tekysth;
      
       public byte[] Move(string xy_vvod, int vod)
      {
          byte[] fenglklass = new byte[13];
          byte[] fuf = new byte[xy_vvod.Length];

          for (int i = 0; i < xy_vvod.Length; i += 1)
              fuf[i] = (byte)Convert.ToByte(xy_vvod.Substring(i, 1), 16);
          int p = xy_vvod.Length;

          for (int i = 10; i >= 5; i -= 1)
          {
              p = p - 1;
              if (0 <= p) fenglklass[i] = (byte)Convert.ToByte(fuf[p] + 48);
              if (0 > p) fenglklass[i] = (byte)Convert.ToByte(48);
          }
          return fenglklass;
       }
    }
}
