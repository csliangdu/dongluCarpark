; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "ͣ��������ʶ��1.0.0.7"
#define MyAppVersion "1.0.0.7"
#define MyAppPublisher "��½����ʵҵ���޹�˾"
#define MyAppURL "http://www.dongluhitec.com/"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{7E10C778-C063-4E3B-92F0-355ABD9D8EC6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\ͣ��������ʶ��
DefaultGroupName=ͣ��������ʶ��
DisableProgramGroupPage=yes
OutputDir=D:\
OutputBaseFilename=��½ͣ��������ʶ��1.0.0.7
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\������.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\������.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\���·�ʽ.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\���¸���.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\�ͻ���.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\�ͻ���.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\����˵��.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\����.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\����.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "D:\git\dongluCarpark\target\carpark-201603240510-V1.0.0.7\bin\*"; DestDir: "{app}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

;��ʼ�˵���ݷ�ʽ�� [Icons]Name: "{group}\ͣ����������"; Filename: "{app}\������.exe";WorkingDir: "{app}"
Name: "{group}\ͣ�����ͻ���"; Filename: "{app}\�ͻ���.exe";WorkingDir: "{app}" 
;�����ݷ�ʽ�� Name: "{userdesktop}\ͣ����������"; Filename: "{app}\������.exe"; WorkingDir: "{app}"
Name: "{userdesktop}\ͣ�����ͻ���"; Filename: "{app}\�ͻ���.exe"; WorkingDir: "{app}"  
;��ʼ�˵�ж�ؿ�ݷ�ʽ�� 
Name: "{group}\{cm:UninstallProgram,ж��}"; Filename: "{uninstallexe}" 

