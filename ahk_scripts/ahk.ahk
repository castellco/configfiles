#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

<^>!a:: run C:\Program Files\Anki\anki.exe
Return

<^>!d:: run C:\Users\Carolina\Desktop\DocFetcher-4096.lnk ; alt gr + d = docfetcher
Return

<^>!e:: run C:\Program Files\Everything\Everything.exe
Return

<^>!s:: run C:\Users\Carolina\AppData\Roaming\Spotify\spotify.exe
Return

<^>!o:: run C:\Users\Carolina\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Obsidian.lnk
Return

<^>!r:: run C:\Users\Carolina\AppData\Roaming\NppToR\NppToR.exe ; alt + r = rstudio
Return

<^>!t:: run C:\Users\Carolina\AppData\Roaming\Telegram Desktop\Telegram.exe ; alt + t = telegram
Return

<^>!v:: run C:\Users\Carolina\AppData\Local\Programs\Microsoft VS Code\Code.exe ; alt + v = vscode
Return

<^>!w:: run C:\Program Files\WindowsApps\5319275A.WhatsAppDesktop_2.2301.4.0_x64__cv1g1gvanyjgm\WhatsApp.exe
Return

<^>!z:: run C:\Program Files (x86)\Zotero\zotero.exe
Return


<^>!2::   ; alt gr + 2
SendInput %A_YYYY%-%A_MM%-%A_DD%
Return

<^>!-:: send {ASC 0151}
Return

<^>!7:: send {ASC 92}
Return

; R everywhere
!-::Send {ASC 60}{ASC 45}
^+m::Send {ASC 37}{ASC 62}{ASC 37}
;;^!i::Send {ASC 96}{ASC 96}{ASC 96}


;; Backticks
<^>!}::Send {ASC 96}{ASC 96}{ASC 96}