library ADTestPlugin;

{$mode delphi}

uses
  Windows;

const
  AD_PLUGIN_MAINFORMBUTTON = 2;
  plsDevelopment = 0;

function GetAdPluginInfo(var PluginName, PluginDesc: PChar; 
                         var PluginType, LicenseType: Integer): Boolean; stdcall;
begin
  PluginName  := 'TestPlugin';
  PluginDesc  := 'Тестовый плагин';
  PluginType  := AD_PLUGIN_MAINFORMBUTTON;
  LicenseType := plsDevelopment;
  
  Result := True;
end;

procedure RunAdPlugin; stdcall;
begin
  MessageBox(0, 'Плагин успешно скомпилирован и запущен!', 'АвтоДилер', MB_OK or MB_ICONINFORMATION);
end;

procedure UnloadAdPlugin; stdcall;
begin
end;

exports
  GetAdPluginInfo,
  RunAdPlugin,
  UnloadAdPlugin;

begin
end.
