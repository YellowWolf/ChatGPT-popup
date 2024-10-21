!Space:: ; Alt + Space hotkey
    WinTitle := "ChatGPTX"

    ; Show the hidden window and activate the existing instance
    WinShow, %WinTitle%
    Sleep, 10 ; Wait for 10 milliseconds

    ; Check if the window is open
    IfWinExist, %WinTitle%
    {
        WinGet WinState, MinMax, %WinTitle% ; Retrieve minimized/maximized state
        if (WinState = -1)                    ; If minimized
            WinRestore, %WinTitle%            ; Restore it
        else
        {
            ; Set the window to always be on top
            WinSet, AlwaysOnTop, On, %WinTitle% 
            ; Hide the window from the taskbar by minimizing and then hiding it
            WinMinimize, %WinTitle%
            WinHide, %WinTitle%                ; Hide it from the taskbar
        }
        WinActivate, %WinTitle%
    }
    else
    {
        ; Define possible paths for Edge
        edgePaths := []
        edgePaths.Push("C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe")
        edgePaths.Push("C:\Program Files\Microsoft\Edge\Application\msedge.exe")
        edgePaths.Push("C:\Program Files (x86)\Microsoft\NoMoreEdge\Edge\msedge_proxy.exe")

        ; Attempt to run Edge from each path until one exists
        for index, path in edgePaths
        {
            if FileExist(path)
            {
                Run, % """" path """ --profile-directory=Default --app-id=cadlkienfkclaiaibeoongdcgmdikeeg --app-url=https://chatgpt.com/ --app-launch-source=4"
                break ; Exit the loop once an application is launched
            }
        }
    }
Return
