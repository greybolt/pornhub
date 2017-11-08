#NoEnv 		 	; Recommended for performance and compatibility with future AutoHotkey releases.
#Warn  			; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.

SetKeyDelay, 500, 50

^F12::
  Loop, parse, clipboard, `n, `r
  {
      ; loops through clipboard links. Don't past more than 10 links!
	  
	  send, %A_LoopField% {Tab}{down}{tab}{tab}{space}+{tab}+{tab}
  }
  send, {tab}{tab}					;
  send, John{tab}					; First Name
  send, Thomas{tab}					; Last Name
  send, 1 Anytown Lane{Tab}			; Address (A-Z, 0-0 only)
  send, bondagejunkies.com{tab}		; Website or company
  send, AnyCity{Tab}				; City
  send, NH{Tab}						; State
  send, United States{Tab}			; Country
  send, 00000{tab}					; Zipcode
  send, 000-000-0000{tab}			; Phone	
  send, noreply@noreply.com{tab}	; Contact Email
  send, {space}{tab}{space}{tab}{space}{tab}{space}{tab}{space}{tab}
  send, John Thomas{tab}			; Signature Name
  send, {space}
Return
