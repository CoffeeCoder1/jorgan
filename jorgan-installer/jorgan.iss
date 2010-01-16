; Script generated by the Inno Setup Script Wizard.
#define VERSION "3.9-beta1"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{68AF851E-E65E-4DCD-8428-37E2D93E3A56}
AppName=jOrgan
AppPublisher=Sven Meier
AppPublisherURL=http://jorgan.sourceforge.net
AppSupportURL=http://jorgan.sourceforge.net
AppUpdatesURL=http://jorgan.sourceforge.net
AppVerName=jOrgan {#VERSION}
OutputBaseFilename=jOrgan-{#VERSION}-installer1
OutputDir=.\target
DefaultDirName={pf}\jOrgan
DefaultGroupName=jOrgan
DisableProgramGroupPage=yes
LicenseFile=..\core\docs\license.txt
SetupIconFile=.\src\jorgan.ico
Compression=lzma
SolidCompression=yes

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Types]
Name: "standard"; Description: "Standard installation"
Name: "custom"; Description: "Custom installation"; Flags: iscustom

[Components]
Name: "core"; Description: "Program Files"; Types: standard custom; Flags: fixed
Name: "creative"; Description: "Creative Soundblaster"; Types: standard
Name: "customizer"; Description: "Customizer"; Types: standard
Name: "executor"; Description: "Executor"; Types: standard
Name: "fluidsynth"; Description: "Fluidsynth Sampler"; Types: standard
Name: "importer"; Description: "Importer"; Types: standard
Name: "keyboard"; Description: "Keyboard"; Types: standard
Name: "linuxsampler"; Description: "Linuxsampler"; Types: standard
Name: "memory"; Description: "Memory"; Types: standard
Name: "midimerger"; Description: "Midi merger"; Types: standard
Name: "recorder"; Description: "Recorder"; Types: standard
Name: "skins"; Description: "Skins"; Types: standard
Name: "soundfont"; Description: "Soundfont"; Types: standard

[Files]
Source: ".\target\jOrgan.exe"; DestDir: "{app}"; Components: core
Source: "..\core\target\marshal\*"; DestDir: "{app}"; Components: core; Flags: recursesubdirs createallsubdirs
Source: "..\creative\target\marshal\*"; DestDir: "{app}"; Components: creative; Flags: recursesubdirs createallsubdirs
Source: "..\customizer\target\marshal\*"; DestDir: "{app}"; Components: customizer; Flags: recursesubdirs createallsubdirs
Source: "..\executor\target\marshal\*"; DestDir: "{app}"; Components: executor; Flags: recursesubdirs createallsubdirs
Source: "..\fluidsynth\target\marshal\*"; DestDir: "{app}"; Components: fluidsynth; Flags: recursesubdirs createallsubdirs
Source: "..\importer\target\marshal\*"; DestDir: "{app}"; Components: importer; Flags: recursesubdirs createallsubdirs
Source: "..\keyboard\target\marshal\*"; DestDir: "{app}"; Components: keyboard; Flags: recursesubdirs createallsubdirs
Source: "..\linuxsampler\target\marshal\*"; DestDir: "{app}"; Components: linuxsampler; Flags: recursesubdirs createallsubdirs
Source: "..\memory\target\marshal\*"; DestDir: "{app}"; Components: memory; Flags: recursesubdirs createallsubdirs
Source: "..\midimerger\target\marshal\*"; DestDir: "{app}"; Components: midimerger; Flags: recursesubdirs createallsubdirs
Source: "..\recorder\target\marshal\*"; DestDir: "{app}"; Components: recorder; Flags: recursesubdirs createallsubdirs
Source: "..\skins\target\marshal\*"; DestDir: "{app}"; Components: skins; Flags: recursesubdirs createallsubdirs
Source: "..\soundfont\target\marshal\*"; DestDir: "{app}"; Components: soundfont; Flags: recursesubdirs createallsubdirs

[Icons]
Name: "{group}\jOrgan {#VERSION}"; Filename: "{app}\jOrgan.exe"
Name: "{group}\{cm:ProgramOnTheWeb,jOrgan}"; Filename: "http://jorgan.sourceforge.net"
Name: "{group}\{cm:UninstallProgram,jOrgan}"; Filename: "{uninstallexe}"
Name: "{commondesktop}\jOrgan"; Filename: "{app}\jOrgan.exe"; Tasks: desktopicon

[Registry]
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\jOrgan.exe"; ValueType: string; ValueName: ""; ValueData: "{app}"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\jOrgan.exe"; ValueType: string; ValueName: "Path"; ValueData: "{app}\jOrgan.exe"; Flags: uninsdeletekey
Root: HKLM; Subkey: "Software\Microsoft\Windows\CurrentVersion\App Paths\jOrgan.exe"; ValueType: string; ValueName: "Version"; ValueData: "{#VERSION}"; Flags: uninsdeletekey

[Run]
Filename: "{app}\jOrgan.exe"; Description: "{cm:LaunchProgram,jOrgan}"; Flags: nowait postinstall skipifsilent


