; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "ͣ��������ʶ��"
#define MyAppVersion "1.0.0.13"
#define MyAppPublisher "��½����ʵҵ���޹�˾"
#define MyAppURL "http://www.dongluhitec.com/"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{5F6B2625-1F5E-407B-870C-4D7DF4B17CFF}
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
OutputDir=.
OutputBaseFilename=ͣ��������ʶ��1.0.0.13
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "������.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "������.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "���·�ʽ.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "���¸���.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "�ͻ���.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "�ͻ���.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "����˵��.txt"; DestDir: "{app}"; Flags: ignoreversion
Source: "����.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "����.ini"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\*"; DestDir: "{app}\bin"; Flags: ignoreversion recursesubdirs createallsubdirs
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

[Run]Filename: "{app}\������.exe"; Description: "{cm:LaunchProgram,ͣ����������}"; Flags: nowait postinstall skipifsilent
Filename: "{app}\�ͻ���.exe"; Description: "{cm:LaunchProgram,ͣ�����ͻ���}"; Flags: nowait postinstall skipifsilent   