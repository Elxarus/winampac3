# Microsoft Developer Studio Project File - Name="winampac3" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=winampac3 - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "winampac3.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "winampac3.mak" CFG="winampac3 - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "winampac3 - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "winampac3 - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "winampac3 - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "WINAMPAC3_EXPORTS" /YX /FD /c
# ADD CPP /nologo /MT /W3 /GX /O2 /Ob2 /I "..\valib\valib" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "WINAMPAC3_EXPORTS" /YX /FD /c
# SUBTRACT CPP /Fr
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x419 /d "NDEBUG"
# ADD RSC /l 0x419 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 msvcrt.lib oldnames.lib kernel32.lib user32.lib gdi32.lib comdlg32.lib advapi32.lib shell32.lib dxguid.lib dsound.lib comctl32.lib /nologo /dll /machine:I386 /nodefaultlib /out:"Release/in_vac3.dll"

!ELSEIF  "$(CFG)" == "winampac3 - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "WINAMPAC3_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /MDd /W3 /Gm /GX /ZI /Od /I "..\valib\valib" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "WINAMPAC3_EXPORTS" /FR /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x419 /d "_DEBUG"
# ADD RSC /l 0x417 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib comdlg32.lib advapi32.lib shell32.lib dxguid.lib dsound.lib comctl32.lib /nologo /dll /debug /machine:I386 /out:"Debug/in_vac3.dll" /pdbtype:sept
# SUBTRACT LINK32 /incremental:no /nodefaultlib
# Begin Special Build Tool
SOURCE="$(InputPath)"
PostBuild_Cmds=_copy_test.bat
# End Special Build Tool

!ENDIF 

# Begin Target

# Name "winampac3 - Win32 Release"
# Name "winampac3 - Win32 Debug"
# Begin Source File

SOURCE=.\com_dec.cpp
# End Source File
# Begin Source File

SOURCE=.\com_dec.h
# End Source File
# Begin Source File

SOURCE=.\dlg_info.cpp
# End Source File
# Begin Source File

SOURCE=.\dlg_info.h
# End Source File
# Begin Source File

SOURCE=.\guids.cpp
# End Source File
# Begin Source File

SOURCE=.\guids.h
# End Source File
# Begin Source File

SOURCE=.\registry.cpp
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# Begin Source File

SOURCE=.\winamp.cpp
# End Source File
# Begin Source File

SOURCE=.\winamp.h
# End Source File
# Begin Source File

SOURCE=.\winampac3.cpp
# End Source File
# Begin Source File

SOURCE=.\winampac3.def
# End Source File
# Begin Source File

SOURCE=.\winampac3.h
# End Source File
# Begin Source File

SOURCE=.\winampac3.rc
# End Source File
# End Target
# End Project
