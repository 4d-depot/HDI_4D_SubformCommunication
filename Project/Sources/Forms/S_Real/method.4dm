Case of 
	: (Form event code:C388=On Load:K2:1)
		Form:C1466.displayNumeric:=0
		
	: (Form event code:C388=On Bound Variable Change:K2:52)
		If (Form:C1466.trace)
			TRACE:C157
		End if 
		Form:C1466.displayNumeric:=OBJECT Get subform container value:C1785
		
End case 
