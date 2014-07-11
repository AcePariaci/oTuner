////////////////////////////////////////////////////////////////////////////////////////////////////
// FileVersion.h: interface for the NFileVersion class.
//////////////////////////////////////////////////////////////////////

#if !defined(AFX_FILEVERSION_H__ECE2D0C3_545E_4141_BAF4_1BF299E2BF69__INCLUDED_)
#define AFX_FILEVERSION_H__ECE2D0C3_545E_4141_BAF4_1BF299E2BF69__INCLUDED_

#if _MSC_VER > 1000
#pragma once
#endif // _MSC_VER > 1000

namespace cBscFileVersion  
{
    //See main namespace comment for details; a null filename will ensure the current app
    //or module name is used.
    void Get(TCHAR * pBuf, LPCTSTR strFilename = NULL);
};

#endif // !defined(AFX_FILEVERSION_H__ECE2D0C3_545E_4141_BAF4_1BF299E2BF69__INCLUDED_)
