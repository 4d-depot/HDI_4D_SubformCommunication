//%attributes = {}
var $folder : Text
ARRAY TEXT:C222($_documents; 0)

$folder:=Get 4D folder:C485(Current resources folder:K5:16)+"Images"+Folder separator:K24:12+"RndPictures"+Folder separator:K24:12
DOCUMENT LIST:C474($folder; $_documents; Ignore invisible:K24:16)
$n:=Size of array:C274($_documents)


$textValues:=New collection:C1472("alpha"; "bravo"; "charlie"; "delta"; "echo"; "foxtrot"; "golf"; "hotel")


Form:C1466.date:=Add to date:C393(Current date:C33; 0; 0; Random:C100%20)
Form:C1466.time:=(Random:C100*Random:C100)%(3600*24)
Form:C1466.numeric:=Form:C1466.time
Form:C1466.text:=$textValues[Random:C100%8]+"-"+String:C10(Random:C100; "000000")+"-"+$textValues[Random:C100%8]
Form:C1466.boolean:=(Random:C100>Random:C100)

READ PICTURE FILE:C678($folder+$_documents{1+(Random:C100%$n)}; $picture)
Form:C1466.picture:=$picture
