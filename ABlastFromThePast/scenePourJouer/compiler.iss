; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "Une Travers? dans le Pass?"
#define MyAppVersion "1.5"
#define MyAppPublisher "Cl?ment inc"
#define MyAppURL "http://www.example.com/"
#define MyAppExeName "ABlastFromThePast.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{4003B9E7-02C6-4088-B404-85AB74D491FF}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\cleme\Dropbox\unity games\ABlastFromThePast\ABlastFromThePast\scenePourJouer\installer
OutputBaseFilename=mysetup
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\cleme\Dropbox\unity games\ABlastFromThePast\ABlastFromThePast\scenePourJouer\bftp2\ABlastFromThePast.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\cleme\Dropbox\unity games\ABlastFromThePast\ABlastFromThePast\scenePourJouer\bftp2\MonoBleedingEdge\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\cleme\Dropbox\unity games\ABlastFromThePast\ABlastFromThePast\scenePourJouer\bftp2\ABlastFromThePast_Data\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
Source: "C:\Users\cleme\Dropbox\unity games\ABlastFromThePast\ABlastFromThePast\scenePourJouer\bftp2\UnityCrashHandler32.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\cleme\Dropbox\unity games\ABlastFromThePast\ABlastFromThePast\scenePourJouer\bftp2\UnityPlayer.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

