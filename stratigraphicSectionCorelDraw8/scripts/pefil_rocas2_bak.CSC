withobject "CorelDraw.Automation.8" 

dim f_escala as long
dim r_left as long
dim r_top as long
dim r_right as long
dim r_bottom as long

file$ = "c:\Mis documentos\gabriel\perfiles\codoabcoc.csv"
rem file$ = "c:\Mis documentos\gabriel\perfiles\a.csv"
escala = 200

open file$ for input as #1
x = 0
y = 0
r_top = 0
a = 1
do
input #1, orden, espesor, litologia$, color$, desde, hasta, formacion$
f_escala = ( 1 / 200 ) * 1000000

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
    case "arena_mf"
      r_rigth = 30 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
    case "arena_f"
      r_rigth = 35 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
    case "arena_m"
      r_rigth = 40 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
    case "arena_g"
      r_rigth = 45 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\arena_g.bmp", 75000, 90000 , 0, 0, 0, 35000, 0, 0
    case "congl_f"
      r_rigth = 50 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\congl_m.bmp", 36000, 16000 , 0, 0, 0, 15300, 0, 0
    case "congl_m"
      r_rigth = 55 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\congl_m.bmp", 36000, 16000 , 0, 0, 0, 15300, 0, 0
    case "congl_g"
      r_rigth = 60 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\congl_g.bmp", 65000, 53000 , 0, 0, 0, 32500, 0, 0
    case "caliza_m"
      r_rigth = 25 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\caliza_m.bmp", 120000,40000 , 0, 0, 0, 0, 0, 0
    case "caliza_w"
      r_rigth = 30 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
    case "caliza_p"
      r_rigth = 35 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
    case "caliza_g"
      r_rigth = 40 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "C:\Mis documentos\gabriel\perfiles\pats\caliza_g.bmp", 120000,40000 , 0, 0, 0, 0, 0, 0
    case "caliza_b"
      r_rigth = 45 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
    case "carbonato_x"
      r_rigth = 50 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "c:\Mis documentos\gabriel\perfiles\pats\carbonato_x.bmp", 120000, 40000, 100, 100, 0, 100, 0, 0
    case "evaporita"
      r_rigth = 50 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "c:\Mis documentos\gabriel\perfiles\pats\evaporita.bmp", 250000, 250000, 100, 100, 0, 100, 0, 0

   case "brecha"
      r_rigth = 55 * 10000
      r = 255
      g = 255
      b = 255
      .Createrectangle r_top, r_left, R_bottom ,r_rigth, 0
      .ApplyFullColorFill "c:\Mis documentos\gabriel\perfiles\pats\brecha.bmp", 250000, 250000, 100, 100, 0, 100, 0, 0

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

rem .CreateArtisticText linea$, x, y
rem y = y + 8 * 10000

loop until eof(1)

close #1
end withobject
