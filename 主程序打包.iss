; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "ͣ��������ʶ��"
#define MyAppVersion "1.0.0.7"
#define MyAppPublisher "��½����ʵҵ���޹�˾"
#define MyAppURL "http://www.dongluhitec.com/"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{5F6B2625-1F5E-407B-870C-4D7DF4B17C0E}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputDir=D:\
OutputBaseFilename=ͣ��������ʶ��1.0.0.7
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "D:\git\dongluCarpark\target\carpark\������.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\������.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\���·�ʽ.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\���¸���.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\�ͻ���.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\�ͻ���.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\����˵��.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\����.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\����.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark\bin\*"; DestDir: "{app}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

;ɾ���ɰ汾�ļ�
[installDelete]
Type: filesandordirs; Name:"{app}\bin\jar"
Type: filesandordirs; Name:"{app}\bin\native"
;��ʼ�˵���ݷ�ʽ�� 
[Icons]
Name: "{group}\ͣ����������"; Filename: "{app}\������.exe";WorkingDir: "{app}"
Name: "{group}\ͣ�����ͻ���"; Filename: "{app}\�ͻ���.exe";WorkingDir: "{app}" 
;�����ݷ�ʽ�� 
Name: "{userdesktop}\ͣ����������"; Filename: "{app}\������.exe"; WorkingDir: "{app}"
Name: "{userdesktop}\ͣ�����ͻ���"; Filename: "{app}\�ͻ���.exe"; WorkingDir: "{app}"  
;��ʼ�˵�ж�ؿ�ݷ�ʽ�� 
Name: "{group}\{cm:UninstallProgram,ͣ��������ʶ��}"; Filename: "{uninstallexe}" 