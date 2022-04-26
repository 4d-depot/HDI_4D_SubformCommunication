C_TEXT:C284($path)
C_LONGINT:C283($page)
C_PICTURE:C286($pict)

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		Form:C1466.documents:=ds:C1482.Documents.all().orderBy("pageNumber")
		
		Form:C1466.tabControl:=New object:C1471
		Form:C1466.tabControl.values:=Form:C1466.documents.toCollection("title").extract("title")
		Form:C1466.tabControl.index:=0
		
		
		Form:C1466.description:=Form:C1466.documents[0].description
		Form:C1466.trace:=False:C215
		
		
		Form:C1466.pop:=New object:C1471
		Form:C1466.pop.values:=New collection:C1472(0; 1; 2; 3; 4; 5)
		Form:C1466.pop.index:=0
		
		
		FormRandomFill
		
		
	: (Form event code:C388=On Page Change:K2:54)
		
		$page:=FORM Get current page:C276
		
		Form:C1466.description:=Form:C1466.documents[$page-1].description
		
End case 