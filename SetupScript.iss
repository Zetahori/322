#define VersionFile "C:\Users\Professional\source\repos\Zetahori\322\version.txt"
#define MyAppName "My Program"
#define MyAppVersion ReadIni(VersionFile, "Version", "Number", "1.0.0")   
#define MyAppPublisher "My Company, Inc."
#define MyAppURL "https://github.com/Zetahori/322"
#define MyAppExeName "lab5.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{3130EBEB-52E2-4BCF-966B-420EC82FA609}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName=lab6
AllowNoIcons=yes
OutputDir=C:\Users\Professional\source\repos\Zetahori\322
OutputBaseFilename=setup
SetupIconFile=C:\Users\Professional\source\repos\Zetahori\322\IMG_0490.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Professional\source\repos\Zetahori\322\lab5\bin\Debug\lab5.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Professional\source\repos\Zetahori\322\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

