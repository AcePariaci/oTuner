# Microsoft Developer Studio Project File - Name="OpenTuner" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Application" 0x0101

CFG=OpenTuner - Win32 fDebug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "OpenTuner.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "OpenTuner.mak" CFG="OpenTuner - Win32 fDebug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "OpenTuner - Win32 Release" (based on "Win32 (x86) Application")
!MESSAGE "OpenTuner - Win32 Debug" (based on "Win32 (x86) Application")
!MESSAGE "OpenTuner - Win32 fRelease" (based on "Win32 (x86) Application")
!MESSAGE "OpenTuner - Win32 fDebug" (based on "Win32 (x86) Application")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "OpenTuner - Win32 Release"

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
# ADD BASE CPP /nologo /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /G3 /MT /W3 /GR /GX /O2 /I "Support" /I "tartiniCore" /I "fft" /I "fft\kiss_fft" /I "fft\kiss_fft\tools" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D FIXED_POINT=32 /D int32_t=__int32 /D int64_t=__int64 /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /machine:I386
# ADD LINK32 User32.lib version.lib winmm.lib gdi32.lib /nologo /subsystem:windows /machine:I386 /out:"../Dist/oTuner_for_Windows.exe"
# SUBTRACT LINK32 /incremental:yes

!ELSEIF  "$(CFG)" == "OpenTuner - Win32 Debug"

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
# ADD BASE CPP /nologo /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /G3 /MTd /W3 /Gm /GR /GX /ZI /Od /I "Support" /I "tartiniCore" /I "fft" /I "fft\kiss_fft" /I "fft\kiss_fft\tools" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D FIXED_POINT=32 /D int32_t=__int32 /D int64_t=__int64 /FR /Yu"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /subsystem:windows /debug /machine:I386 /pdbtype:sept
# ADD LINK32 User32.lib version.lib winmm.lib gdi32.lib /nologo /subsystem:windows /debug /machine:I386 /out:"../Dist/d_oTuner_for_Windows.exe" /pdbtype:sept

!ELSEIF  "$(CFG)" == "OpenTuner - Win32 fRelease"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "OpenTuner___Win32_fRelease"
# PROP BASE Intermediate_Dir "OpenTuner___Win32_fRelease"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "OpenTuner___Win32_fRelease"
# PROP Intermediate_Dir "OpenTuner___Win32_fRelease"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GR /GX /O2 /I "Support" /I "tartiniCore" /I "fft" /I "fft\kiss_fft" /I "fft\kiss_fft\tools" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D FIXED_POINT=32 /D int32_t=__int32 /D int64_t=__int64 /Yu"stdafx.h" /FD /c
# ADD CPP /nologo /G3 /MT /W3 /GR /GX /O2 /I "Support" /I "tartiniCore" /I "fft" /I "fft\kiss_fft" /I "fft\kiss_fft\tools" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x809 /d "NDEBUG"
# ADD RSC /l 0x809 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib gdi32.lib advapi32.lib shell32.lib winmm.lib version.lib COMCTL32.LIB /nologo /subsystem:windows /machine:I386 /out:"../Dist/oTuner.exe"
# SUBTRACT BASE LINK32 /incremental:yes
# ADD LINK32 User32.lib version.lib winmm.lib gdi32.lib /nologo /subsystem:windows /machine:I386 /out:"../Dist/foTuner_for_Windows.exe.exe"
# SUBTRACT LINK32 /incremental:yes

!ELSEIF  "$(CFG)" == "OpenTuner - Win32 fDebug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "OpenTuner___Win32_fDebug"
# PROP BASE Intermediate_Dir "OpenTuner___Win32_fDebug"
# PROP BASE Ignore_Export_Lib 0
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "OpenTuner___Win32_fDebug"
# PROP Intermediate_Dir "OpenTuner___Win32_fDebug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GR /GX /ZI /Od /I "Support" /I "tartiniCore" /I "fft" /I "fft\kiss_fft" /I "fft\kiss_fft\tools" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D FIXED_POINT=32 /D int32_t=__int32 /D int64_t=__int64 /Yu"stdafx.h" /FD /GZ /c
# ADD CPP /nologo /G3 /MTd /W3 /Gm /GR /GX /ZI /Od /I "Support" /I "tartiniCore" /I "fft" /I "fft\kiss_fft" /I "fft\kiss_fft\tools" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /Yu"stdafx.h" /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x809 /d "_DEBUG"
# ADD RSC /l 0x809 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 user32.lib gdi32.lib advapi32.lib shell32.lib winmm.lib version.lib COMCTL32.LIB /nologo /subsystem:windows /debug /machine:I386 /out:"../Dist/d_oTuner.exe" /pdbtype:sept
# ADD LINK32 User32.lib version.lib winmm.lib gdi32.lib /nologo /subsystem:windows /debug /machine:I386 /out:"../Dist/d_foTuner_for_Windows.exe" /pdbtype:sept

!ENDIF 

# Begin Target

# Name "OpenTuner - Win32 Release"
# Name "OpenTuner - Win32 Debug"
# Name "OpenTuner - Win32 fRelease"
# Name "OpenTuner - Win32 fDebug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=.\OpenTuner.cpp
# End Source File
# Begin Source File

SOURCE=.\StdAfx.cpp
# ADD CPP /Yc"stdafx.h"
# End Source File
# Begin Source File

SOURCE=.\Testing\WaveFile.cpp
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE=.\Support\BscBblDlg.h
# End Source File
# Begin Source File

SOURCE=.\Support\cBscFileVersion.h
# End Source File
# Begin Source File

SOURCE=.\OpenTuner.h
# End Source File
# Begin Source File

SOURCE=.\OpenTunerCore.h
# End Source File
# Begin Source File

SOURCE=.\OpenTunerDlg.h
# End Source File
# Begin Source File

SOURCE=.\StdAfx.h
# End Source File
# Begin Source File

SOURCE=.\Testing\WaveFile.h
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;cnt;rtf;gif;jpg;jpeg;jpe"
# Begin Group "BMPs"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\res\0.bmp
# End Source File
# Begin Source File

SOURCE=.\res\1.bmp
# End Source File
# Begin Source File

SOURCE=.\res\2.bmp
# End Source File
# Begin Source File

SOURCE=.\res\3.bmp
# End Source File
# Begin Source File

SOURCE=.\res\4.bmp
# End Source File
# Begin Source File

SOURCE=.\res\5.bmp
# End Source File
# Begin Source File

SOURCE=.\res\6.bmp
# End Source File
# Begin Source File

SOURCE=.\res\7.bmp
# End Source File
# Begin Source File

SOURCE=.\res\8.bmp
# End Source File
# Begin Source File

SOURCE=.\res\9.bmp
# End Source File
# Begin Source File

SOURCE=.\res\a.bmp
# End Source File
# Begin Source File

SOURCE=.\res\aSharp.bmp
# End Source File
# Begin Source File

SOURCE=.\res\b.bmp
# End Source File
# Begin Source File

SOURCE=.\res\c.bmp
# End Source File
# Begin Source File

SOURCE=.\res\cSharp.bmp
# End Source File
# Begin Source File

SOURCE=.\res\d.bmp
# End Source File
# Begin Source File

SOURCE=.\res\dSharp.bmp
# End Source File
# Begin Source File

SOURCE=.\res\e.bmp
# End Source File
# Begin Source File

SOURCE=.\res\f.bmp
# End Source File
# Begin Source File

SOURCE=.\res\fSharp.bmp
# End Source File
# Begin Source File

SOURCE=.\res\g.bmp
# End Source File
# Begin Source File

SOURCE=.\res\gSharp.bmp
# End Source File
# Begin Source File

SOURCE=.\res\Hz.bmp
# End Source File
# Begin Source File

SOURCE=.\res\Lemp.bmp
# End Source File
# Begin Source File

SOURCE=.\res\LFul.bmp
# End Source File
# Begin Source File

SOURCE=.\res\MEmp.bmp
# End Source File
# Begin Source File

SOURCE=.\res\MFul.bmp
# End Source File
# Begin Source File

SOURCE=.\res\oTuner.bmp
# End Source File
# Begin Source File

SOURCE=.\res\REmp.bmp
# End Source File
# Begin Source File

SOURCE=.\res\RFul.bmp
# End Source File
# Begin Source File

SOURCE=.\res\volume.bmp
# End Source File
# Begin Source File

SOURCE=.\res\x.bmp
# End Source File
# End Group
# Begin Source File

SOURCE=.\res\0m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\1m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\2m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\3m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\4m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\5m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\6m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\7m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\8m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\9m.bmp
# End Source File
# Begin Source File

SOURCE=.\res\OpenTuner.ico
# End Source File
# Begin Source File

SOURCE=.\OpenTuner.rc
# End Source File
# Begin Source File

SOURCE=.\res\OpenTuner.rc2
# End Source File
# Begin Source File

SOURCE=.\resource.h
# End Source File
# End Group
# Begin Group "Support"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\Support\BscBblDlg.cpp
# End Source File
# Begin Source File

SOURCE=.\Support\cBscFileVersion.cpp
# End Source File
# End Group
# Begin Group "Tartini"

# PROP Default_Filter ""
# Begin Group "h"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FFT\fftw3.h
# End Source File
# Begin Source File

SOURCE=.\tartini_core\tartinilib\tartini_core.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\tartini_core\tartinilib\tartini_core.c
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# End Group
# Begin Group "FFT"

# PROP Default_Filter ""
# Begin Source File

SOURCE=.\FFT\kiss_fft\_kiss_fft_guts.h
# End Source File
# Begin Source File

SOURCE=.\FFT\kiss_fft\kiss_fft.c
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\FFT\kiss_fft\kiss_fft.h
# End Source File
# Begin Source File

SOURCE=.\FFT\kiss_fft\tools\kiss_fftr.c
# SUBTRACT CPP /YX /Yc /Yu
# End Source File
# Begin Source File

SOURCE=.\FFT\kiss_fft\tools\kiss_fftr.h
# End Source File
# End Group
# Begin Source File

SOURCE=.\OpenTunerCore.cpp
# End Source File
# Begin Source File

SOURCE=.\OpenTunerDlg.cpp
# End Source File
# End Target
# End Project
