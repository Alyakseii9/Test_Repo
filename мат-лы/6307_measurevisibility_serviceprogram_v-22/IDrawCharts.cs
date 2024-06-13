using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace PCComm
{


    /// <summary>
    /// Intreface for drowing charts in main Window
    /// </summary>
    public interface IDrawCharts
    {
        void AddPointToFrequencyAmperageEmitterChart(int frequency);
        void AddPointToFrequencyAmperageReceiverChart(int frequency);
        void AddPointToEfficiencyChart(double efficiency);
        void AddPointToMORChart(int mor);
        void AddPointToTemperatureDiodeEmitterChart(double temperatureEmmiter);
        void AddPointToTemperatureDiodeReceiverChart(double temperatureReceiver);
    }
}
