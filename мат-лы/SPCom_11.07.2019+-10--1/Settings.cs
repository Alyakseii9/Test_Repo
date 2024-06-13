namespace PCComm.Properties {
    
    
    // This class allows you to handle specific events on the settings class:
  //Этот класс позволяет Вам обрабатывать определенные события на классе параметров настройки: 
    //  The SettingChanging event is raised before a setting's value is changed.
  //Случай SettingChanging поднят прежде, чем значение установки изменено.
    //  The PropertyChanged event is raised after a setting's value is changed.
  //Случай PropertyChanged поднят после того, как значение установки изменено.
    //  The SettingsLoaded event is raised after the setting values are loaded.
  //Случай SettingsLoaded поднят после того, как значения установки загружены.
    //  The SettingsSaving event is raised before the setting values are saved.
    //Случай SettingsSaving поднят прежде, чем значения установки сохранены.
    internal sealed partial class Settings {
        
        public Settings() {
            // // To add event handlers for saving and changing settings, uncomment the lines below:
  //Чтобы добавлять обработчики случая для того, чтобы сохранить и изменять настройку, непрокомментируйте линии ниже:
            //
             //this.SettingChanging += this.SettingChangingEventHandler;
            //
             //this.SettingsSaving += this.SettingsSavingEventHandler;
            //
        }
        
        private void SettingChangingEventHandler(object sender, System.Configuration.SettingChangingEventArgs e) {
            // Add code to handle the SettingChangingEvent event here.
            //Добавьте код, чтобы обработать случай SettingChangingEvent здесь.
        }
        
        private void SettingsSavingEventHandler(object sender, System.ComponentModel.CancelEventArgs e) {
            // Add code to handle the SettingsSaving event here.
        }
    }
}
