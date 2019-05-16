!macro customInstall
  DetailPrint "Register tokl URI Handler"
  DeleteRegKey HKCR "toklio"
  WriteRegStr HKCR "toklio" "" "URL:toklio"
  WriteRegStr HKCR "toklio" "URL Protocol" ""
  WriteRegStr HKCR "toklio\DefaultIcon" "" "$INSTDIR\${APP_EXECUTABLE_FILENAME}"
  WriteRegStr HKCR "toklio\shell" "" ""
  WriteRegStr HKCR "toklio\shell\Open" "" ""
  WriteRegStr HKCR "toklio\shell\Open\command" "" "$INSTDIR\${APP_EXECUTABLE_FILENAME} %1"
!macroend