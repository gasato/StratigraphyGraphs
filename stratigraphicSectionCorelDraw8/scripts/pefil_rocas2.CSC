withobject "CorelDraw.Automation.8" 

dim f_escala as long
dim r_left as long
dim r_top as long
dim r_right as long
dim r_bottom as long

rem file$ = "c:\Mis documentos\gabriel\perfiles\tabanos1.csv"
file$ = "c:\Mis documentos\gabriel\perfiles\tabanos2.csv"
rem file$ = "c:\Mis documentos\gabriel\perfiles\losblancos.csv"
rem file$ = "c:\Mis documentos\gabriel\perfiles\losblancos.csv"
rem file$ = "c:\Mis documentos\gabriel\perfiles\alenitas.csv"
rem file$ = "c:\Mis documentos\gabriel\perfiles\ctracodoayobco.csv"

escala = 125

open file$ for input as #1
x = 0
y = 0
r_top = 0
a = 1
espesor_tot = 0
text_yaux = 0
current_formation = ""

do
rem input #1, orden, espesor, litologia$, color$, desde, hasta, formacion$, muestra$
input #1, orden, espesor, litologia$, color$, desde, hasta, formacion$
f_escala = ( 1 / escala ) * 1000000
espesor_num = cdbl(espesor)

r_bottom = desde * f_escala
r_top = hasta * f_escala 
r_left = 0

Select case litologia$
    case "pelitas"
      r_rigth = 25 * 10000
      r = 0
      g = 0
      b = 0
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .StoreColor 5, r, g, b
      .ApplyUniformFillColor
    case "silice"
      r_rigth = 40 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
    case "arena_mf"
      r_rigth = 30 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
    case "arena_f"
      r_rigth = 35 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\arena_f.bmp", 100000,100000 , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    case "arena_m"
      r_rigth = 40 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\arena_m.bmp", 100000,100000 , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    case "arena_g"
      r_rigth = 45 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\arena_g.bmp", 100000, 100000 , 0, 0, 0, 35000, 0, 0, 0, 0, 0, 0, 0, 0
    case "congl_f"
      r_rigth = 50 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\congl_m.bmp", 36000, 16000 , 0, 0, 0, 15300, 0, 0, 0, 0, 0, 0, 0, 0
    case "congl_m"
      r_rigth = 55 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\congl_m.bmp", 36000, 16000 , 0, 0, 0, 15300, 0, 0, 0, 0, 0, 0, 0, 0
    case "congl_g"
      r_rigth = 60 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\congl_g.bmp", 65000, 53000 , 0, 0, 0, 32500, 0, 0, 0, 0, 0, 0, 0, 0
    case "caliza_m"
      r_rigth = 25 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\caliza_m.bmp", 120000,40000 , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    case "caliza_w"
      r_rigth = 30 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0 
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\caliza_w.bmp", 120000,40000 , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    case "caliza_p"
      r_rigth = 35 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\caliza_p.bmp", 120000,40000 , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    case "caliza_g"
      r_rigth = 40 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\caliza_g.bmp", 120000,40000 , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    case "caliza_b"
      r_rigth = 45 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\caliza_b.bmp", 120000,40000 , 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
    case "carbonato_x"
      r_rigth = 50 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "c:\Mis documentos\gabriel\perfiles\pats\carbonato_x.bmp", 120000, 40000, 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0
    case "evaporita"
      r_rigth = 50 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "c:\Mis documentos\gabriel\perfiles\pats\evaporita.bmp", 150000, 110000, 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0

   case "brecha"
      r_rigth = 55 * 10000
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "c:\Mis documentos\gabriel\perfiles\pats\brecha.bmp", 250000, 250000, 100, 100, 0, 100, 0, 0, 0, 0, 0, 0, 0, 0

    case "cubierto"
      r_rigth = 25 * 10000
      r = -1
      g = -1
      b = -1
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .StoreColor 5, r, g, b
      .ApplyUniformFillColor
      .BeginDrawCurve r_left, r_top
      .DrawCurveLineTo r_rigth, r_bottom
      .EndDrawCurve
      .BeginDrawCurve r_rigth, r_top
      .DrawCurveLineTo r_left, r_bottom
      .EndDrawCurve
    case else
      Message "ERROR en definicion de tipo litologico"
  end select

rem cuadraditos de color
c_top = r_top
c_left = -5 * 10000
c_bottom = r_bottom
c_rigth = r_left

select case color$
  case "blanco"
   r = 255
   g = 255
   b = 255
  case "gris"
   r = 150
   g = 150
   b = 150
  case "verde"
   r = 50
   g = 255
   b = 50
  case "amarillo"
   r = 255
   g = 255
   b = 50
  case "rojo"
   r = 255
   g = 50
   b = 50
  case "castano"
   r = 128
   g =128
   b =0
  case "negro"
   r = 0
   g = 0
   b = 0
  case else
   r = 255
   g = 255
   b = 255
end select

.CreateRectangle c_top, c_left, c_bottom, c_rigth
.StoreColor 5, r, g, b
.ApplyUniformFillColor
ID_rect& = .GetObjectsCDRStaticID()

rem aqui va el numero de nivel que tiene que ir alineado al cuadradito generado
rem lo vamos a colorcar a 10 cm con respecto al origen x

text_y = ( c_top + c_bottom ) / 2
if text_y < text_yaux and text_xaux_ok <> 1 then
  text_x = c_left + ( -3 * 10000) + ( -2.5 * 10000)
  text_xaux_ok = 1
else
  text_xaux_ok = 0
  text_x = c_left + (-3 * 10000)
endif
text_yaux = text_y + 1.5 * 10000


.CreateArtisticText orden, text_x, text_y
.SetCharacterAttributes 0, 4, "Arial", 13, 50, 0, 0, 0, 0, 0, 0, 0, 1

.AppendObjectToSelection ID_rect&
.AlignObjects 0, 3

if desde = 0 then
  formation_espesor = 0
  current_formation = formacion$
  formation_bottom = 0
endif

if current_formation = formacion$ then
  rem valores reales de espesor
  formation_espesor = formation_espesor + espesor_num
else
  formation_top = c_bottom
  rem revisar el codigo que en el loop no se modifica
  formation_right = c_left - ( 25 * 10000)
  formation_left = formation_right - ( 50 * 10000)
  .CreateRectangle formation_top, formation_left, formation_bottom, formation_right
  ID_rect& = .GetObjectsCDRStaticID()
  .CreateArtisticText current_formation, 60 * 10000, text_y
rem  .SetCharacterAttributes 0, 4, "Arial", 13, 100, 0, 0, 0, 0, 0, 0, 0, 1
  .AppendObjectToSelection ID_rect&
  .AlignObjects 3, 3
  rem aqui tiene que ir la rutina de texto y alineacion
  current_formation = formacion$
  formation_bottom = formation_top
  .CreateArtisticText formation_espesor / 10 , formation_left - ( 20 * 10000) , text_y
  formation_espesor = espesor_num
  .AppendObjectToSelection ID_rect&
  .AlignObjects 0, 3
endif

rem if muestra$ <> "" then
rem    .CreateArtisticText muestra$, 60 * 10000, text_y
rem    .SetCharacterAttributes 0, 4, "Arial", 13, 100, 0, 0, 0, 0, 0, 0, 0, 1
rem    .AppendObjectToSelection ID_rect&
rem    .AlignObjects 0, 3
rem endif

loop until eof(1)

rem ultimo tramo de columna
formation_top = c_top
.CreateRectangle formation_top, formation_left, formation_bottom, formation_right
ID_rect& = .GetObjectsCDRStaticID()
.CreateArtisticText current_formation, 60 * 10000, text_y
rem  .SetCharacterAttributes 0, 4, "Arial", 13, 100, 0, 0, 0, 0, 0, 0, 0, 1
.AppendObjectToSelection ID_rect&
.AlignObjects 3, 3
.CreateArtisticText formation_espesor / 10 , formation_left - ( 20 * 10000) , text_y
.AppendObjectToSelection ID_rect&
.AlignObjects 0, 3

rem UNIDADES

uni_top = hasta * f_escala
uni_bottom = 0
uni_right = c_left
uni_left = uni_right - (10 * 10000)

.CreateRectangle uni_top, uni_left, uni_bottom, uni_right

rem regla
regla_top = hasta * f_escala
regla_bottom = 0
regla_right = uni_left
regla_left = regla_right - (2.5 * 10000)

.CreateRectangle regla_top, regla_left, regla_bottom, regla_right

regla_paso = 100 * f_escala
reglatic_left = regla_left - ( 1 * 10000)
reglatxt_x = reglatic_left - ( 2 * 10000)

 for i = 0 to regla_top step regla_paso
  .BeginDrawCurve regla_right, i
  .DrawCurveLineTo reglatic_left, i
  .EndDrawCurve
  rem aqui vendria el texto
  texto = cstr(i / (f_escala * 10)) + "m"
  rem hay que colocarlo mas a la izquierda y luego alinearlog con el anterior
   reglatictext_left = reglatic_left - 3 * 10000
  .CreateArtisticText texto, reglatictext_left, i
  .SetCharacterAttributes 0, 4, "Arial", 13, 50, 0, 0, 0, 0, 0, 0, 0, 1
next i



close #1
end withobject
