

Case of 
	: (Form event code:C388=Sur chargement:K2:1)
		Form:C1466.displayDate:=!00-00-00!
		
	: (Form event code:C388=Sur modif variable liée:K2:52)
		
		If (Form:C1466.trace)
			TRACE:C157
		End if 
		Form:C1466.displayDate:=OBJECT Get subform container value:C1785
		
End case 
