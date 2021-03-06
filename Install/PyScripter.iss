﻿; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!
#define MyAppName "PyScripter"
#define MyAppVersion "3.6.0"
#define OSPlatform "x64"
#define MyAppPublisherURL="https://sourceforge.net/projects/pyscripter/"
#define MyAppSupportURL="https://github.com/pyscripter/pyscripter"
#define MyAppUpdatesURL="https://sourceforge.net/projects/pyscripter/"

[Setup]
AppName={#MyAppName}
AppId={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion} ({#OSPlatform})
AppPublisher={#MyAppName}
AppPublisherURL={#MyAppPublisherURL}
AppSupportURL={#MyAppSupportURL}
AppUpdatesURL={#MyAppUpdatesURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}-{#OSPlatform}
OutputDir=Output
OutputBaseFilename={#MyAppName}-{#MyAppVersion}-{#OSPlatform}-Setup
Compression=lzma/Max
SolidCompression=true
ChangesAssociations=true
UninstallDisplayIcon={app}\{#MyAppName}.exe
PrivilegesRequired=poweruser
AppCopyright=(C) Kiriakos Vlahos
#if OSPlatform == "x64"
ArchitecturesAllowed={#OSPlatform}
ArchitecturesInstallIn64BitMode={#OSPlatform}
#endif

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile: "locale\en\BeforeInstallPyScripter-{#OSPlatform}.txt"; InfoAfterFile: "locale\en\AfterInstallPyScripter-{#OSPlatform}.txt"
Name: "el"; MessagesFile: "compiler:\Languages\Greek.isl"; InfoBeforeFile: "locale\el\BeforeInstallPyScripter-{#OSPlatform}.txt"; InfoAfterFile: "locale\el\AfterInstallPyScripter-{#OSPlatform}.txt"
Name: "it"; MessagesFile: "compiler:\Languages\Italian.isl"; InfoBeforeFile: "locale\it\BeforeInstallPyScripter-{#OSPlatform}.txt"; InfoAfterFile: "locale\it\AfterInstallPyScripter-{#OSPlatform}.txt"
Name: "de"; MessagesFile: "compiler:\Languages\German.isl"; InfoBeforeFile: "locale\de\BeforeInstallPyScripter-{#OSPlatform}.txt"; InfoAfterFile: "locale\de\AfterInstallPyScripter-{#OSPlatform}.txt"

[Tasks]
Name: desktopicon; Description: {cm:CreateDesktopIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: quicklaunchicon; Description: {cm:CreateQuickLaunchIcon}; GroupDescription: {cm:AdditionalIcons}; Flags: unchecked
Name: fileexplorercontextmenu; Description: {cm:ShellIntegrationEditwithPyScripter}; GroupDescription: {cm:ShellIntegration}:

[Files]
Source: ..\PyScripter.exe; DestDir: {app}; Flags: ignoreversion
Source: ..\PyScripter.chm; DestDir: {app}; Flags: ignoreversion
Source: ..\Source\PyProject.ico; DestDir: {app}
Source: ..\Lib\rpyc.zip; DestDir: {app}\Lib
; localization
Source: ..\locale\default.pot; DestDir: {app}\locale
Source: ..\locale\languagecodes.mo; DestDir: {app}\locale
Source: ..\locale\languagecodes.po; DestDir: {app}\locale
Source: ..\locale\languages.pot; DestDir: {app}\locale
Source: ..\locale\ar\LC_MESSAGES\default.mo; DestDir: {app}\locale\ar\LC_MESSAGES\
Source: ..\locale\ar\LC_MESSAGES\default.po; DestDir: {app}\locale\ar\LC_MESSAGES\
Source: ..\locale\ar\LC_MESSAGES\languages.mo; DestDir: {app}\locale\ar\LC_MESSAGES\
Source: ..\locale\ar\LC_MESSAGES\languages.po; DestDir: {app}\locale\ar\LC_MESSAGES\
Source: ..\locale\de\LC_MESSAGES\default.mo; DestDir: {app}\locale\de\LC_MESSAGES\
Source: ..\locale\de\LC_MESSAGES\default.po; DestDir: {app}\locale\de\LC_MESSAGES\
Source: ..\locale\de\LC_MESSAGES\languages.mo; DestDir: {app}\locale\de\LC_MESSAGES\
Source: ..\locale\de\LC_MESSAGES\languages.po; DestDir: {app}\locale\de\LC_MESSAGES\
Source: ..\locale\el\LC_MESSAGES\default.mo; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\locale\el\LC_MESSAGES\default.po; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\locale\el\LC_MESSAGES\languages.mo; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\locale\el\LC_MESSAGES\languages.po; DestDir: {app}\locale\el\LC_MESSAGES\
Source: ..\locale\ja\LC_MESSAGES\default.mo; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\locale\ja\LC_MESSAGES\default.po; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\locale\ja\LC_MESSAGES\languages.mo; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\locale\ja\LC_MESSAGES\languages.po; DestDir: {app}\locale\ja\LC_MESSAGES\
Source: ..\locale\sk\LC_MESSAGES\default.mo; DestDir: {app}\locale\sk\LC_MESSAGES\
Source: ..\locale\sk\LC_MESSAGES\default.po; DestDir: {app}\locale\sk\LC_MESSAGES\
Source: ..\locale\sk\LC_MESSAGES\languages.mo; DestDir: {app}\locale\sk\LC_MESSAGES\
Source: ..\locale\sk\LC_MESSAGES\languages.po; DestDir: {app}\locale\sk\LC_MESSAGES\
Source: ..\locale\zh\LC_MESSAGES\default.mo; DestDir: {app}\locale\zh\LC_MESSAGES\
Source: ..\locale\zh\LC_MESSAGES\default.po; DestDir: {app}\locale\zh\LC_MESSAGES\
Source: ..\locale\zh\LC_MESSAGES\languages.mo; DestDir: {app}\locale\zh\LC_MESSAGES\
Source: ..\locale\zh\LC_MESSAGES\languages.po; DestDir: {app}\locale\zh\LC_MESSAGES\
Source: ..\locale\es\LC_MESSAGES\default.mo; DestDir: {app}\locale\es\LC_MESSAGES\
Source: ..\locale\es\LC_MESSAGES\default.po; DestDir: {app}\locale\es\LC_MESSAGES\
Source: ..\locale\es\LC_MESSAGES\languages.mo; DestDir: {app}\locale\es\LC_MESSAGES\
Source: ..\locale\es\LC_MESSAGES\languages.po; DestDir: {app}\locale\es\LC_MESSAGES\
Source: ..\locale\fr\LC_MESSAGES\default.mo; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fr\LC_MESSAGES\default.po; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fr\LC_MESSAGES\languages.mo; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\fr\LC_MESSAGES\languages.po; DestDir: {app}\locale\fr\LC_MESSAGES\
Source: ..\locale\it\LC_MESSAGES\default.mo; DestDir: {app}\locale\it\LC_MESSAGES\
Source: ..\locale\it\LC_MESSAGES\default.po; DestDir: {app}\locale\it\LC_MESSAGES\
Source: ..\locale\it\LC_MESSAGES\languages.mo; DestDir: {app}\locale\it\LC_MESSAGES\
Source: ..\locale\it\LC_MESSAGES\languages.po; DestDir: {app}\locale\it\LC_MESSAGES\
Source: ..\locale\pt_PT\LC_MESSAGES\default.mo; DestDir: {app}\locale\pt_PT\LC_MESSAGES\
Source: ..\locale\pt_PT\LC_MESSAGES\default.po; DestDir: {app}\locale\pt_PT\LC_MESSAGES\
Source: ..\locale\pt_PT\LC_MESSAGES\languages.mo; DestDir: {app}\locale\pt_PT\LC_MESSAGES\
Source: ..\locale\pt_PT\LC_MESSAGES\languages.po; DestDir: {app}\locale\pt_PT\LC_MESSAGES\
Source: ..\locale\pt_BR\LC_MESSAGES\default.mo; DestDir: {app}\locale\pt_BR\LC_MESSAGES\
Source: ..\locale\pt_BR\LC_MESSAGES\default.po; DestDir: {app}\locale\pt_BR\LC_MESSAGES\
Source: ..\locale\pt_BR\LC_MESSAGES\languages.mo; DestDir: {app}\locale\pt_BR\LC_MESSAGES\
Source: ..\locale\pt_BR\LC_MESSAGES\languages.po; DestDir: {app}\locale\pt_BR\LC_MESSAGES\
Source: ..\locale\ru\LC_MESSAGES\default.mo; DestDir: {app}\locale\ru\LC_MESSAGES\
Source: ..\locale\ru\LC_MESSAGES\default.po; DestDir: {app}\locale\ru\LC_MESSAGES\
Source: ..\locale\ru\LC_MESSAGES\languages.mo; DestDir: {app}\locale\ru\LC_MESSAGES\
Source: ..\locale\ru\LC_MESSAGES\languages.po; DestDir: {app}\locale\ru\LC_MESSAGES\
Source: ..\locale\kab\LC_MESSAGES\default.mo; DestDir: {app}\locale\kab\LC_MESSAGES\
Source: ..\locale\kab\LC_MESSAGES\default.po; DestDir: {app}\locale\kab\LC_MESSAGES\
Source: ..\locale\kab\LC_MESSAGES\languages.mo; DestDir: {app}\locale\kab\LC_MESSAGES\
Source: ..\locale\kab\LC_MESSAGES\languages.po; DestDir: {app}\locale\kab\LC_MESSAGES\
;Ini Files
Source: "PyScripter.ini"; DestDir: "{userappdata}\PyScripter"; Flags: uninsneveruninstall onlyifdoesntexist
; Startup scripts
Source: ..\Scripts\pyscripter_init.py; DestDir: {userappdata}\PyScripter; Flags: uninsneveruninstall onlyifdoesntexist
Source: ..\Scripts\python_init.py; DestDir: {userappdata}\PyScripter; Flags: uninsneveruninstall onlyifdoesntexist
; Highlighters
Source: "..\Highlighters\Autumn_dark.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Black Pastel.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_1.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_2.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_3.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_4.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_5.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_eos.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_gedit.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_muted.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_oblivion.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_obsidian.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_terminal.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_waher.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Dark_zenburn.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\DarkHighlight.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\DarkHighlight2.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Darthy_sand_light.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Default.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Frontenddev.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Gedit Original Oblivion.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Greyish_dark.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Havenjark.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\IDLEHighlighting.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\IDLEHighlightingv2.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\IDLEHighlightingv3.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Lnkpot.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Minimal.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\MochaHighlight.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Monokai.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Mr.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\NightLion Aptana Theme.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Notepad++ Like.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Oblivion.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Obsidian.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Pastel.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\RecognEyes.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Retta.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Schuss.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Skycool_light.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Solarized Dark.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Solarized Light.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Solarized_dark_edit.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Solarized_light_edit.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Sublime Text 2.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Sunburst.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Tango.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Vibrant Ink.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Wombat.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
Source: "..\Highlighters\Zenburn.ini"; DestDir: "{userappdata}\PyScripter\Highlighters"
; Styles
Source: "..\Styles\Amakrits.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\AmethystKamri.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\AquaGraphite.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\AquaLightSlate.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\AquaLightSlate2.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Auric.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Carbon.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\CharcoalDarkSlate.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\CobaltXEMedia.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Copper.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\CopperDark.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Coral.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\CyanDusk.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\CyanNight.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Diamond.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Emerald.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\EmeraldLightSlate.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Glossy.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Glossy2.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Glow.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\GoldenGraphite.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\IcebergClassico.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\LavenderClassico.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Luna.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\MetropolisUIBlack.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\MetropolisUIBlue.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\MetropolisUIDark.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\MetropolisUIGreen.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Obsidian.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\OnyxBlue.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Radiant.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\RubyGraphite.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\SapphireKamri.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Silver.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Sky.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Sky2.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\SlateClassico.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\SmokeyQuartzKamri.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\TabletDark.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\TabletLight.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\TurquoiseGray.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Vapor.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10Blue.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10Dark.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10Green.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10Purple.vsf"; DestDir: "{userappdata}\PyScripter\Styles"
Source: "..\Styles\Windows10SlateGray.vsf"; DestDir: "{userappdata}\PyScripter\Styles"

[Icons]
Name: {group}\PyScripter; Filename: {app}\PyScripter.exe
Name: {group}\{cm:PyScripterHelp}; Filename: {app}\PyScripter.chm
Name: {group}\{cm:UninstallProgram,PyScripter}; Filename: {uninstallexe}
Name: {userdesktop}\PyScripter; Filename: {app}\PyScripter.exe; Tasks: desktopicon
Name: {userappdata}\Microsoft\Internet Explorer\Quick Launch\PyScripter; Filename: {app}\PyScripter.exe; Tasks: quicklaunchicon

[Registry]
Root: HKCR; Subkey: Python.File\shell\Edit with PyScripter; ValueType: string; ValueData: {cm:EditwithPyScripter}; Flags: deletekey uninsdeletekey; Tasks: fileexplorercontextmenu
Root: HKCR; Subkey: Python.File\shell\Edit with PyScripter\command; ValueType: string; ValueData: """{app}\PyScripter.exe"" ""%1"""; Flags: uninsdeletekey; Tasks: fileexplorercontextmenu
Root: HKCR; SubKey: .psproj; ValueType: string; ValueData: PyScripter project; Flags: uninsdeletekey
Root: HKCR; SubKey: PyScripter project; ValueType: string; ValueData: PyScripter project file; Flags: uninsdeletekey
Root: HKCR; SubKey: PyScripter project\Shell\Open\Command; ValueType: string; ValueData: """{app}\PyScripter.exe"" --PROJECT ""%1"""; Flags: uninsdeletekey
Root: HKCR; Subkey: PyScripter project\DefaultIcon; ValueType: string; ValueData: {app}\PyProject.ico,-1; Flags: uninsdeletevalue

[Run]
Filename: {app}\PyScripter.exe; Description: {cm:LaunchProgram,PyScripter}; Flags: nowait postinstall skipifsilent

[CustomMessages]
#include "locale\en\InstallMessages.txt"
#include "locale\el\InstallMessages.txt"
#include "locale\it\InstallMessages.txt"
#include "locale\de\InstallMessages.txt"

;#expr SaveToFile(AddBackslash(SourcePath) + "Preprocessed.iss")