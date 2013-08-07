NetUSB - .msi �����
===================

������ ������ - .msi ����� ��� ������������ � ������ ������
[���������� ����� ���������� NetUSB �� VSCom (��� NetUSB-400i)][NetUSB].

����������� ��� ������ .msi ������
----------------------------------

��� �������� ��������� � ����� � ��������� ������ ������ ����������� ��������� ��������:

- Microsoft Visual Studio 2012 Shell:
	- [MS Visual Studio 2012 Shell Isolated][]
	- [MS Visual Studio 2012 Shell Integrated][]
- [Windows Installer XML Toolset - WIX][WIX]

���������� ���������� ��� ������ � ��������� �������. � ���������� - ������� MS Visual Studio 2012 � ���������������
��������� �������� WiX. ����� ����� ��������� ���� ������� `.sln` � �������� �������.

P.S. ������� �������� ������� WiX 4.0. 

�������� �������
----------------

### ���������������� ����� ���������

� ����� `bin\Admin image\x86\ru-RU` ������ ������, �������������� � ���� ���������������� ����� ���������.
� ��� ����������� ��������� ������������.

### .msi ����� � ���� ������� �����

� ����� `bin\Single .msi file\x86\ru-RU` ������ .msi ����� � ���� ������� �����.
� ������� �� ����������� ��������, � ������ �������� ������������ ��������� ������������,
����������� �������� � ������ ��������, � ����� ��� ���������.

��� ������������� �������� ���������������� ����� ��������� � ����������� ������������ ������� ���������������
��������� ������� �� ���������� �������:

    msiexec -a "bin\Single .msi file\x86\ru-RU\NetUSBclient.msi" TARGETDIR="adm\x86"

���������� ���������������� ����� ���������
-------------------------------------------

��� ���������� ���������������� ����� ��������� �������� � ��������� ������������� ��������.

### ���������������� �������� ������

#### DISABLESHORTCUTS

�� ��������� - `"No"`. ��� ��������� �������� `"Yes"` ��� ��������� �� ����� ������������ ������.
������ ��������� ������� ���������������, ���� �� ���������� ��������� ���������� ��� ������������� ����� ������ ��
`.csmdb23` ����� (� ������ �������������� ������������ ������ ������� �����).

#### DISABLEDESKTOPSHORTCUTS

�� ��������� - `"No"`. ��� ��������� �������� `"Yes"` ��� ��������� �� ����� ������������ ������ �� ������� �����.
��� `DISABLESHORTCUTS="Yes"` �������� ������� �������� ���� �� ������.

#### DISABLEMENUSHORTCUTS

�� ��������� - `"No"`. ��� ��������� �������� `"Yes"` ��� ��������� �� ����� ������������ ������ � ����.
��� `DISABLESHORTCUTS="Yes"` �������� ������� �������� ���� �� ������.

#### DISABLESTARTUPSHORTCUTS

�� ��������� - `"Yes"`. ��� ��������� �������� `"Yes"` ��� ��������� �� ����� ������������ ����� �� ��� �������������
� ���� ������������. ��� `DISABLESHORTCUTS="Yes"` �������� ������� �������� ���� �� ������.

#### APPLICATIONFOLDER

���� � �����, � ������� ����� ���������� ����������� �������.
������������� � �������� �������� ������� �������� ��������� ������ ���� �� ��������� � `%ProgramFiles%`.

#### DEFAULT_AUTOCONECT_VALUE

������� �����, �� ������� �� ������ � ��������� ������� (� ����, ��� connect � ����� n �������). 
����� � ����� ������������ ������� � �������� ������������� ������������ ����� � `NUPortCustom.ini` �����.

�� ��������� - `1`. ��������, ��� ��� ������������ � ������� � ������� ����� NetUSB ����������
����� ������������� ���������������� ��� ����������� ���������� / ������ / ����������. ���� ��������
����� �������� ��� ������� ����������� ���������� ��� ��� �����������.

#### DEFAULT_AUTORECONECT_VALUE

�� ��������� - `1`, ��� ��������, ��� ��� ��������� ������ �����������
������������ ����� USB ���������� ����� ���������������� �������������.
`0` ��������� ������ �����������.

#### AUTOLAUNCH_DELAY

� ������������, �� ��������� - `1000` (1 �������). ����� �������� �������� � ������� �����������
���������� �� ������� ����������, ���������������� � ��� (���� ������� ������� ��� ���������
����������� � ����������).

#### DEFAULT_UNLOAD_WAITTIME

� ������������, �� ��������� - `5000` (5 ������). ����� �������� ������� �������� ������ �� 
USB ������� �� ������ ��������� ����� ��� ������������� � ����.

�� ��������� ���������� ������� ������������ � ������������� USB ������� ���������� �����
���������.

#### DEFAULT_START_AUTOLAUNCH

�� ��������� - `0`, ��� ��������, ���������� ������������� �� ����� ����������� ��� �����
������������. `1` - ��������� ���������� ������������� ��� ����� ������������.
������ ���� �� ������ �� ����������������� ������.

#### DEFAULT_SHOW_WIN_MINIMIZED

�� ��������� - `1`, ��� ��������, ��� ���� ����������� ������������� ���������� (��.
[DEFAULT_START_AUTOLAUNCH](#DEFAULT_START_AUTOLAUNCH)) ����� �������.
`0` - ���� ����� ���������.

#### DEFAULT_BOOTSTART

�� ��������� - `1`, ��� ��������, ��� ����� ����������� ������ `UsbIpService`, ��������������
����������� �������� USB ��������� ��� ����������� ������������ ������������� ����� ��������
������������ �������. 

`0` - ������ ������������� ����������� �� �����.

P.S. �� ������� ������ ������ �������� �� ��������� �������� ������� �� ������� ���������:
������ �������������� � ����������� �������������.

#### DEFAULT_START_DEV_MAP

�� ��������� - `1`. ����������, ��������� �� ������������� ������������� �������� USB ���������
��� ����������� USB ������� ��� ���. `0` - �� ���������.

#### CONFIGINTF_PORT

�� ��������� - `1341`. ����� UDP �����, ������������ Server Manager.

������ ���� ����������� �� �������� USB, � ������������ ��� ���������� ����� ��������� ��
Server Manager � QuickConfigUtility.

#### UDPSERVER_PORT

�� ��������� - `1341` (��.[CONFIGINTF_PORT](#CONFIGINTF_PORT)).
����� UDP �����, ������������ QuickConfigUtility.

������ ���� ����������� �� �������� USB, � ������������ ��� ���������� ����� ��������� ��
Server Manager � QuickConfigUtility.

#### DEFAULT_BROADCAST_PORTNO

�� ��������� - `6000`. ����� **��������� UDP �����** (`netstat -oan` �������� ��������
������ ����), �� ������� Server Manager ��������� ����������������� ������ �� �������� USB
(� ����� �� �����������). ������������ ������ �� ����.

#### USBIP_TCPPORTNO

�� ��������� - `3240`. ����� **TCP �����**, �� �������� ��������������� ������� � ������ USB.
���� ���� ����������� �� USB �������, � ������ ����������
������������ TCP ���� ��� **���������� �����������**.
������������ `netstat -oan`:

    TCP    192.168.100.4:58385    192.168.100.30:3240    ESTABLISHED     4

#### DEVICE_REQUEST_PORTNO

�� ��������� - `6133`. **�������� TCP ����**, ���������� �� ������� ����������� Server Manager.
�� ������ ����� ������ ������� �������� �� ������������ ������� ��������� �� ������ ��������.
������������ `netstat -oan`:

    TCP    0.0.0.0:6133           0.0.0.0:0              LISTENING       2012

P.S. ���� ����������� ������ ����� ����������� ��� ������� ������ ����������.

#### DEFAULT_GENERAL_NETWORK_THROTTLE

�� ��������� - `0`. ���� ���� ������ ����� �� �����. �������������� ������ �� Windows 7 � ������.

#### LOGFILEFOLDER

�� ��������� - `C:\Windows\Logs\UsbIp`, � ������ ���� � ������� - `C:\Windows\Logs\UsbIp\USBIPAdmin.log`.
�� ������ ������ ���� ���� � ������� ���� ��� �������� ���������������� ����� ���������, ����
��������������, ��������� ����������� ��������.

### �������

��������� �������� ���������� ���������������� ����� ���������:

	msiexec -a NetUSBclient.msi DISABLEDESKTOPSHORTCUTS=Yes

������ ��������� ������ ������� ����� ��������� � "������������" �������� �������� �����.

	msiexec -a NetUSBclient.msi DISABLESHORTCUTS=Yes

������ ��������� ������ ������� ����� ��������� � "������������" ��������.

����������� �� ������ � ����������� USB over IP client
------------------------------------------------------

� �������� ��������� �������������� ������ `UsbIpService`. ���� ���������� ������� ��������� 
� ������� ��������������, � ��������� ������ ����������� ��������� � ���������� USB ��������� 
����� ����������.

��� ��������� ����������� ��������� ���������� ������ �������������� ���������� ��������� ������.
���� �� �����-�� ������� ���������� ����� ������ � ������������� ���������� ������� �����������
��������� (device mapping), ���������� ������ ��������������:

	net stop UsbIpService

�� ���������� ���������������� ����� ���������� ������� Device Mapping, ��������� ������ ���������� 
(���� ����, �����), � ��������� ������:

	net start UsbIpService

��� ��������������� ����������� ����� ������������ ��������� ��� ������������ / ����������� ������
��������� ��� ���� ��������� ���������� ����� `auto connect`, `auto reconnect`. � ���� ������ ���
���������� ����� ���������� ������������� ���� ����� ������������� �� (������ - ����� �����
�������������).

P.S. ������ �� ����������, ���� ���� �� ���� ��������� ���������� �����������. ������� ��������������
���������, ��� �� ��������� ������ ����������, � �� �������� ��� (������ ���������� "�������������" �
������� �����������).

[NetUSB]: http://www.vscom.de/413.htm
[MS Visual Studio 2012 Shell Isolated]: http://www.microsoft.com/ru-ru/download/details.aspx?id=30670
[MS Visual Studio 2012 Shell Integrated]: http://www.microsoft.com/ru-ru/download/details.aspx?id=30663
[WIX]: http://wixtoolset.org/
