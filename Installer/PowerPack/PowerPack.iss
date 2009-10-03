; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "FreeArc PowerPack"
#define MyAppVersion "0.52"
#define MyAppVerName "FreeArc 0.52 PowerPack"
#define MyAppPublisher "Bulat Ziganshin"
#define MyAppURL "http://www.freearc.org"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{93B6C0AB-4703-447F-BBB6-3FB1A5DD32D1}
AppName={#MyAppName}
AppVerName={#MyAppVerName}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\FreeArc\PowerPack
DefaultGroupName=FreeArc
AllowNoIcons=yes
InfoBeforeFile=src\readme.txt
OutputDir=.
OutputBaseFilename=FreeArc-PowerPack-{#MyAppVersion}
Compression=lzma
SolidCompression=yes
ChangesEnvironment=yes

[Languages]
Name: "default"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "src\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Code]
function ModPathDir(): TArrayOfString;
var
    Dir: TArrayOfString;
begin
    setArrayLength(Dir, 1)
    Dir[0] := ExpandConstant('{app}\bin');
    Result := Dir;
end;

#include "modpath.iss"