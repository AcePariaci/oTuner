#if !defined(AFX_CBscBblDlg_H__E852D391_8F43_4DDB_89A3_65FCC24D01B0__INCLUDED_)
#define AFX_CBscBblDlg_H__E852D391_8F43_4DDB_89A3_65FCC24D01B0__INCLUDED_
// CBscBblDlg.h: interface for the CBscBblDlg class.
//
////////////////////////////////////////////////////////////////////////////////////////////////////

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

#include <string>
#include <map>

#define DECLARE_MSG_HANDLER(MyHandlerName, MyHandlerClass) virtual long MyHandlerName(unsigned long const wParam, long const lParam); static long stub##MyHandlerName (unsigned long const wParam, long const lParam, CBscBblDlg * pThis){return ((MyHandlerClass*)(pThis))->MyHandlerName(wParam,lParam);};
#define ADD_MSG_HANDLER(Msg, MyHandlerName) AddMsgHandler(Msg, stub##MyHandlerName);

//As "ADD_MSG_HANDLER", but for, e.g., button presses, so put the ID of the control you want to 
//handle as the Msg param
//!!!ADD_CMD_HANDLER is a bit inelegant for handling EN_ messages...
#define ADD_CMD_HANDLER(Msg, MyHandlerName) AddCmdHandler(Msg, stub##MyHandlerName);


#define GET_HWND(x) GetDlgItem(*this, x) //A bit nasty to use a macro:)

class CBscBblDlg
{
public:
    //See main class comment
	CBscBblDlg(WORD wTemplate,
               HINSTANCE hInstance = 0, //E.g., (HINSTANCE)GetWindowLong(m_hWnd, GWL_HINSTANCE)
               HWND hParent = 0, //E.g., GetDesktopWindow()
               bool const bCreateModelessOnConstruction = false, 
               bool const bDeferModelessCreation = false);


    //See main class comment
	virtual ~CBscBblDlg();


    //See main class comment;
    //Analogous to MFC's CDialog::DoModal().
    //The returns IDOK IDCANCEL etc, depending on how the dialog was terminated.
    virtual long DoModal();

    
    //Allows you to use your class instance as an HWND, e.g., 
    //ShowWindow(myInstance, true);
    virtual operator HWND() const {return m_hWnd;};


    //Returns the window text of the supplied control ID
    //This is just because it is slightly more convenient than allocating buffers and having the
    //windows API populate them for you.
    virtual std::basic_string<TCHAR> GetWindowText(unsigned long ctrlID);


    //SetWindowText: Just do ::SetWindowText(GET_HWND(IDD_MY_CONTROL_ID), _T("Whatever"));


protected:
    //This is the function specified to Win32's "DialogBoxParam" function: it handles the messages
    //that we're interested in, and lets Windows handle the rest.
    //Returns either the value returned by the message handler that it ends up calling, or retruns
    //0 (indicating to Windows that it should handle the message).
    virtual LRESULT MyMsgMap(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);

    virtual long OnInitDialog(); //Analogouse to CDialog::OnInitDialog: Override to do your own init
    virtual long OnOK();         //Analogouse to CDialog::OnOK: Override to do your own OnOK handler
    virtual long OnCancel();     //Analogouse to CDialog::OnCancel: Override as above...

    //This is used specifically to handle WM_COMMAND messages: It calls the function you defined with
    //ADD_CMD_HANDLER
    virtual long OnCommand(unsigned short const CtrlID, 
                           unsigned short const HiWordWparam, LPARAM const lParam);


    //See main class comment: these functions are used by the macro at the top of the file to define
    //and implement the message map.
    typedef long (*MsgHandler)(unsigned long const wParam, long const lParam, CBscBblDlg * pvThis);
    virtual void AddMsgHandler(unsigned long  const Msg   , MsgHandler pfnHandleMsg);
    virtual void AddCmdHandler(unsigned short const CtrlID, MsgHandler pfnHandleMsg);

    virtual void CreateIt(); //Associated MyMsgMap() with m_hWnd so that it is called to handle msgs


    HWND m_hWnd;                 //Copy of constructor-supplied param
    HWND const m_hParent;        //Copy of constructor-supplied param
    HINSTANCE const m_hInstance; //Copy of constructor-supplied param


private: //See MyMsgMap, this is where these are mainly used...
    std::map<unsigned long, MsgHandler> m_mapMsgHandlers;
    std::map<unsigned long, MsgHandler> m_mapCmdHandlers;
    static BOOL CALLBACK MyMsgMap_stub(HWND hWnd, UINT Msg, WPARAM wParam, LPARAM lParam);


private:
    WORD const m_wTemplate; //Copy of constructor-supplied param
};

#endif // !defined(AFX_CBscBblDlg_H__E852D391_8F43_4DDB_89A3_65FCC24D01B0__INCLUDED_)
