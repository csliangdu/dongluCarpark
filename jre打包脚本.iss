; �ű��� Inno Setup �ű��� ���ɣ�
; �йش��� Inno Setup �ű��ļ�����ϸ��������İ����ĵ���

#define MyAppName "java1.8.0.45�����1.0.0.7"
#define MyAppVersion "1.0.0.7"
#define MyAppPublisher "��½����ʵҵ���޹�˾"
#define MyAppURL "http://www.dongluhitec.com/"

[Setup]
; ע: AppId��ֵΪ������ʶ��Ӧ�ó���
; ��ҪΪ������װ����ʹ����ͬ��AppIdֵ��
; (�����µ�GUID����� ����|��IDE������GUID��)
AppId={{5784066D-2788-4F3E-8693-7C8CCA242DF3}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\java
DefaultGroupName=java�����
DisableProgramGroupPage=yes
OutputDir=D:\
OutputBaseFilename=java�����1.0.0.7
Compression=lzma
SolidCompression=yes

[Languages]
Name: "chinesesimp"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "D:\git\dongluCarpark\target\jre\*"; DestDir: "{app}\jre"; Flags: ignoreversion recursesubdirs createallsubdirs
; ע��: ��Ҫ���κι���ϵͳ�ļ���ʹ�á�Flags: ignoreversion��

[Icons]
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[registry]
;���δ��������ע����еļ�ֵ
Root:HKLM;Subkey:SYSTEM\CurrentControlSet\Control\Session Manager\Environment;ValueType: string; ValueName:DONGLU_JRE;ValueData:{app}\jre;Flags: uninsdeletevalue


