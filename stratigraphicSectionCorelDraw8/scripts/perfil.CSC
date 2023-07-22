rem aplicacion de creacion de escalas
rem var_in escala, punto de anclaje, de donde a donde
rem

WITHOBJECT "CorelDraw.Automation.8" 
rem INICIO
rem se crea un nuevo documento
A = .FileNew()
rem seteamos la pagina a a4

rem creamos la capa escala
.NewLayer "Escala"
REM HAY QUE OBTENER LAS DIMENSIONES DE LA HOJA



rem tendria que pedir el nombre del proyecto
rem proy_name$ = "Perfiles Columnares V. 0 "+ chr(13) +" por Carlos Gabriel Asato"
proy_name$ = "Codo del Arroyo Blanco"
.CreateArtisticText proy_name 
ID_text& = .GetObjectsCDRStaticID()

rem lo hacemos relativo, luego lo ubicamos bien
rem 10.000 centesimas de micron es 1 mm
ancho = 200 * 10000
alto = 290 * 10000

header1_title = "SECCION COLUMNAR"
header1_alto = 30 * 10000
header1_ancho = ancho
.CreateRectangle 0, 0, -header1_alto , ancho
IDRect1& = .GetObjectsCDRStaticID()
page_der = ancho
page_izq = 0

.SelectObjectOfCDRStaticID ID_text&
.AppendObjectToSelection IDRect1&
.AlignObjects 3, 3


banner1_alto = 50 * 10000
banner1_ancho = 10 * 10000
banner1_top = -header1_alto
banner1_left = 0
banner1_bottom = banner1_top - banner1_alto
bloque1_alto = 200 * 10000
bloque1_ancho = banner1_ancho
bloque1_top = banner1_bottom
bloque1_left = banner1_left
bloque1_bottom = bloque1_top - bloque1_alto

DIM b1(5)

b1(1) = "Grupo"
b1(2) = "Formacion"
b1(3) = "Espesor"
b1(4) = "Muestra"
b1(5) = "Color"

for cont = 1 to 4
  banner1_right = banner1_left + banner1_ancho
  .CreateRectangle banner1_top, banner1_left, banner1_bottom, banner1_right
  IDRect1& = .GetObjectsCDRStaticID()
  .CreateArtisticText b1(cont), banner1_left, banner1_bottom
  .RotateObject 90000000, 0, banner1_right, banner1_bottom
  .AppendObjectToSelection IDRect1&
  .AlignObjects 3, 2

   bloque1_left = banner1_left
   bloque1_right = banner1_right
  .CreateRectangle bloque1_top, bloque1_left, bloque1_bottom, bloque1_right
   banner1_left = cont * banner1_ancho
next

banner1_ancho = 5 * 10000
banner1_right = banner1_left + banner1_ancho
banner1_bottom = banner1_top - banner1_alto
.CreateRectangle banner1_top, banner1_left, banner1_top - banner1_alto, banner1_left + banner1_ancho
IDRect1& = .GetObjectsCDRStaticID()
.CreateArtisticText b1(5), banner1_left, banner1_bottom
.RotateObject 90000000, 0, banner1_right, banner1_bottom
.AppendObjectToSelection IDRect1&
.AlignObjects 3, 2
bloque1_left = banner1_left
bloque1_right = banner1_right
.CreateRectangle bloque1_top, bloque1_left, bloque1_bottom, bloque1_right
banner1_left = cont * banner1_ancho


banner2_ancho = 90 * 10000 
banner2_alto = 9 * 10000
banner2_left = banner1_right
banner2_rigth = banner2_left + banner2_ancho
banner2_top = banner1_top
banner2_bottom = banner2_top - banner2_alto


.CreateRectangle banner2_top, banner2_left, banner2_bottom, banner2_rigth
IDRect2& = .GetObjectsCDRStaticID()
.CreateArtisticText "Columna Litológica", banner2_left, banner2_bottom
IDText2& = .GetObjectsCDRStaticID()
.SelectObjectOfCDRStaticID ID_text2&
.AppendObjectToSelection IDRect2&
.AlignObjects 3, 3

banner22_ancho = banner2_ancho
rem banner22_alto = 9 * 10000 
banner22_left = banner1_right
banner22_rigth = banner2_left + banner2_ancho
banner22_top = banner2_bottom
banner22_bottom = banner1_bottom


.CreateRectangle banner22_top, banner22_left, banner22_bottom, banner22_rigth
rem IDRect2& = .GetObjectsCDRStaticID()
rem .CreateArtisticText "Columna Litológica", banner2_left, banner2_bottom
rem IDText2& = .GetObjectsCDRStaticID()
rem .SelectObjectOfCDRStaticID ID_text2&
rem .AppendObjectToSelection IDRect2&
rem .AlignObjects 3, 3
bloque2_ancho = banner2_ancho
bloque2_top = banner22_bottom
bloque2_left = banner2_left
bloque2_right = banner2_rigth
bloque2_bottom = bloque1_bottom
.CreateRectangle bloque2_top, bloque2_left, bloque2_bottom, bloque2_right


banner3_right = page_der
banner3_left = bloque2_right
banner3_top = banner1_top
banner3_bottom = banner1_bottom
rem conviene una referencia a un origen mas absoluto
.CreateRectangle banner3_top, banner3_left, banner3_bottom, banner3_right
IDRect2& = .GetObjectsCDRStaticID()
.CreateArtisticText "Observaciones", banner3_left, banner3_bottom
IDText2& = .GetObjectsCDRStaticID()
.SelectObjectOfCDRStaticID ID_text2&
.AppendObjectToSelection IDRect2&
.AlignObjects 3, 3

bloque3_top = banner3_bottom
bloque3_left = banner3_left
bloque3_right = page_der
bloque3_bottom = bloque1_bottom
.CreateRectangle bloque3_top, bloque3_left, bloque3_bottom, bloque3_right

END WITHOBJECT 


