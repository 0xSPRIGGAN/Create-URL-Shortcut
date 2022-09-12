# 
# Author: Connor Hudson
# Date: 12-Sept-2022
# 

<#
# NOTE: Be sure to add a '\' char either at the beginning of $ShortcutName,
# or at the end of $ShortcutPath.
# 
# For example: $ShortcutName = "\Google Search.url"
#              $ShortcutPath = "C:\Users\admin\Desktop"
#       
#              OR
#              
#              $ShortcutName = "Google Search.url"
#              $ShortcutPath = "C:\Users\admin\Desktop\"
#>

$ShortcutName = ""
$ShortcutPath = ""
$URL = ""

$Shell = New-Object -ComObject ("WScript.Shell")

$Shortcut = $Shell.CreateShortcut($ShortcutPath + $ShortcutName)
$Shortcut.Targetpath = $URL
$Shortcut.Save()