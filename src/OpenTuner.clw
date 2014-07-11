; CLW file contains information for the MFC ClassWizard

[General Info]
Version=1
LastClass=CMetronomeDlg
LastTemplate=CEdit
NewFileInclude1=#include "stdafx.h"
NewFileInclude2=#include "OpenTuner.h"

ClassCount=5
Class1=CMetronomeApp
Class2=CMetronomeDlg
Class3=CAboutDlg

ResourceCount=7
Resource1=IDD_OpenTuner_DIALOG (English (U.S.))
Resource2=IDR_MAINFRAME
Resource3=IDR_ACCELERATOR_MAIN (English (U.S.))
Class4=CMetBlinker
Class5=CGroupEdit
Resource4=IDR_ACCELERATOR1
Resource5=IDR_ACCELERATOR1 (English (U.S.))
Resource6=IDD_ABOUTBOX (English (U.S.))
Resource7=IDD_OpenTuner_DIALOG

[CLS:CMetronomeApp]
Type=0
HeaderFile=OpenTuner.h
ImplementationFile=OpenTuner.cpp
Filter=N
BaseClass=CWinApp
VirtualFilter=AC

[CLS:CMetronomeDlg]
Type=0
HeaderFile=OpenTunerDlg.h
ImplementationFile=OpenTunerDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=CMetronomeDlg

[CLS:CAboutDlg]
Type=0
HeaderFile=OpenTunerDlg.h
ImplementationFile=OpenTunerDlg.cpp
Filter=D
BaseClass=CDialog
VirtualFilter=dWC
LastObject=IDC_PINKANDAINT_URL

[DLG:IDD_OpenTuner_DIALOG]
Type=1
Class=CMetronomeDlg
ControlCount=0

[ACL:IDR_ACCELERATOR1]
Type=1
Class=?
Command1=IDC_BLINK_CHECK
Command2=IDC_RADIO_GROUP
Command3=IDC_RADIO_MEASURE
Command4=IDC_PLAY_BUTTON
Command5=IDC_RADIO_PLAIN
Command6=IDC_PLAY_BUTTON
Command7=IDC_EXIT_BUTTON
CommandCount=7

[CLS:CMetBlinker]
Type=0
HeaderFile=MetBlinker.h
ImplementationFile=MetBlinker.cpp
BaseClass=CStatic
Filter=W

[CLS:CGroupEdit]
Type=0
HeaderFile=GroupEdit.h
ImplementationFile=GroupEdit.cpp
BaseClass=CEdit
Filter=W
VirtualFilter=WC

[DLG:IDD_ABOUTBOX (English (U.S.))]
Type=1
Class=?
ControlCount=7
Control1=IDC_STATIC,static,1342177283
Control2=IDC_PROGRAM_TITLE,static,1342308480
Control3=IDC_STATIC,static,1342308352
Control4=IDOK,button,1342373889
Control5=IDC_STATIC,static,1342308352
Control6=IDC_PINKANDAINT_URL,static,1342308608
Control7=IDC_STATIC,static,1342308352

[DLG:IDD_OpenTuner_DIALOG (English (U.S.))]
Type=1
Class=CMetronomeDlg
ControlCount=61
Control1=IDC_PRESETS,static,1342308352
Control2=IDC_RADIO_PLAIN,button,1342373897
Control3=IDC_RADIO_MEASURE,button,1342177289
Control4=IDC_RADIO_GROUP,button,1342177289
Control5=IDC_BPMEASURE_EDIT,edit,1484857472
Control6=IDC_BPMEASURE_SPIN,msctls_updown32,1476395062
Control7=IDC_GROUP_EDIT,edit,1484849280
Control8=IDC_PLAY_BUTTON,button,1342242817
Control9=IDC_BLINK_CHECK,button,1342242819
Control10=IDC_TICK_COMBO_1,combobox,1344339971
Control11=IDC_TICK_VOLUME_SLIDER1,msctls_trackbar32,1342242840
Control12=IDC_BLINK_SIZE_SLIDER1,msctls_trackbar32,1342242840
Control13=IDC_TICK_COMBO_2,combobox,1344339971
Control14=IDC_TICK_VOLUME_SLIDER2,msctls_trackbar32,1342242840
Control15=IDC_BLINK_SIZE_SLIDER2,msctls_trackbar32,1342242840
Control16=IDC_TICK_COMBO_3,combobox,1344339971
Control17=IDC_TICK_VOLUME_SLIDER3,msctls_trackbar32,1342242840
Control18=IDC_BLINK_SIZE_SLIDER3,msctls_trackbar32,1342242840
Control19=IDC_TICK_COMBO_4,combobox,1344339971
Control20=IDC_TICK_VOLUME_SLIDER4,msctls_trackbar32,1342242840
Control21=IDC_BLINK_SIZE_SLIDER4,msctls_trackbar32,1342242840
Control22=IDC_TICK_COMBO_5,combobox,1344339971
Control23=IDC_TICK_VOLUME_SLIDER5,msctls_trackbar32,1342242840
Control24=IDC_BLINK_SIZE_SLIDER5,msctls_trackbar32,1342242840
Control25=IDC_TICK_COMBO_6,combobox,1344339971
Control26=IDC_TICK_VOLUME_SLIDER6,msctls_trackbar32,1342242840
Control27=IDC_BLINK_SIZE_SLIDER6,msctls_trackbar32,1342242840
Control28=IDC_TICK_COMBO_7,combobox,1344339971
Control29=IDC_TICK_VOLUME_SLIDER7,msctls_trackbar32,1342242840
Control30=IDC_BLINK_SIZE_SLIDER7,msctls_trackbar32,1342242840
Control31=IDC_TICK_COMBO_8,combobox,1344339971
Control32=IDC_TICK_VOLUME_SLIDER8,msctls_trackbar32,1342242840
Control33=IDC_BLINK_SIZE_SLIDER8,msctls_trackbar32,1342242840
Control34=IDC_TICK_COMBO_9,combobox,1344339971
Control35=IDC_TICK_VOLUME_SLIDER9,msctls_trackbar32,1342242840
Control36=IDC_BLINK_SIZE_SLIDER9,msctls_trackbar32,1342242840
Control37=IDC_BPMINUTE_SLIDER,msctls_trackbar32,1342242840
Control38=IDC_BPMINUTE_EDIT,edit,1350639744
Control39=IDC_DELETE_PRESET_BUTTON,button,1342242816
Control40=IDC_SAVE_PRESET_BUTTON,button,1342242816
Control41=IDC_PRESET_COMBO,combobox,1344340290
Control42=IDC_TICK_LABEL_1,static,1342308864
Control43=IDC_TICK_LABEL_2,static,1342308864
Control44=IDC_TICK_LABEL_3,static,1342308864
Control45=IDC_TICK_LABEL_4,static,1342308864
Control46=IDC_TICK_LABEL_5,static,1342308864
Control47=IDC_TICK_LABEL_6,static,1342308864
Control48=IDC_TICK_LABEL_7,static,1342308864
Control49=IDC_TICK_LABEL_8,static,1342308864
Control50=IDC_TICK_LABEL_9,static,1342308864
Control51=IDC_BEAT_INDICATOR,static,1342177294
Control52=IDC_BLINK_SIZE_1,static,1342177294
Control53=IDC_BLINK_SIZE_2,static,1342177294
Control54=IDC_BLINK_SIZE_3,static,1342177294
Control55=IDC_BLINK_SIZE_4,static,1342177294
Control56=IDC_BLINK_SIZE_5,static,1342177294
Control57=IDC_BLINK_SIZE_6,static,1342177294
Control58=IDC_BLINK_SIZE_7,static,1342177294
Control59=IDC_BLINK_SIZE_8,static,1342177294
Control60=IDC_BLINK_SIZE_9,static,1342177294
Control61=IDC_TEMPO,static,1342308352

[ACL:IDR_ACCELERATOR1 (English (U.S.))]
Type=1
Class=?
Command1=IDC_BLINK_CHECK
Command2=IDC_RADIO_GROUP
Command3=IDC_RADIO_MEASURE
Command4=IDC_PLAY_BUTTON
Command5=IDC_RADIO_PLAIN
Command6=IDC_PLAY_BUTTON
Command7=ID_APP_EXIT
CommandCount=7

[ACL:IDR_ACCELERATOR_MAIN (English (U.S.))]
Type=1
Class=?
Command1=IDC_BLINK_CHECK
Command2=IDC_RADIO_GROUP
Command3=IDC_RADIO_MEASURE
Command4=IDC_PLAY_BUTTON
Command5=IDC_RADIO_PLAIN
Command6=IDC_PLAY_BUTTON
CommandCount=6

