////////////////////////////////////////////////////////////////////////////////////////////////////
// OpenTuner.cpp : Defines the class behaviors for the application.
//

#include "stdafx.h"
#include "OpenTuner.h"
#include "OpenTunerDlg.h"

#ifdef _DEBUG
#ifdef _AFX
#define new DEBUG_NEW
#endif
#undef THIS_FILE
static char THIS_FILE[] = __FILE__;
#endif


#ifdef  _UNICODE
int APIENTRY wWinMain( //Should be a better way of doing this, but _tWinMain does not seem to be working in CE:/
#else
int APIENTRY WinMain(
#endif
                       HINSTANCE hInstance,
                     HINSTANCE hPrevInstance,
                     LPTSTR     lpCmdLine,
                     int       nCmdShow)
{
    {
        COpenTunerDlg dlgMain = COpenTunerDlg(hInstance, 0);

        int nResponse = dlgMain.DoModal();
	    if (nResponse == IDOK)
	    {
	    }
	    else if (nResponse == IDCANCEL)
	    {
	    }
    }
    
	// Since the dialog has been closed, return FALSE so that we exit the
	//  application, rather than start the application's message pump.
	return FALSE;
}
