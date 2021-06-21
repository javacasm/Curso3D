m1 = "1. Introducción a la impresión 3D.docx"
m2 = "2. Qué imprimir: modelos y filamentos.docx"
m3 = "3. Cómo imprimir: Laminadores.docx"
m4 = "4. Estructura y modelos de Impresoras 3D.docx"
m5 = "5. Uso normal de la impresora.docx"
m6 = "6. Mejorando la calidad de las impresiones.docx"
m7 = "7. Mantenimiento y Cuidados.docx"
m8 = "8. Resolución de Problemas.docx"
m9 = "9. Introducción al diseño 3D.docx"

all: m1 m2 m3 m4 m5 m6 m7 m8 m9


m1:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m1)  \
					Cabecera.md        \
					Cabecera_latex.md \
					0.0.Impresion3DParaTodos.md \
					0.0.Introduccion3D.md \
					0.1.Historia.md \
					0.2.Aplicaciones.md \
					0.3.Tecnologias3D.md \
					0.4.ComprarImpresora3d.md \
					0.5.GuiaRapida.md \
					1.0.ProcesoImpresion3D.md

m2:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m2)  \
					Cabecera.md        \
					Cabecera_latex.md \
					2.0.Repositorios.md \
					2.1.Filamentos.md

m3:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m3)  \
					Cabecera.md        \
					Cabecera_latex.md \
					3.0.Slicers.md \
					3.1.Cura.md \
					3.2.PrusaSlicer.md \
					3.7.soportes.md \

m4:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m4)  \
					Cabecera.md        \
					Cabecera_latex.md \
					4.0.0.EstructuraImpresora3D.md \
					4.0.1.ComponentesImpresora3D.md \
					4.0.2.TiposExtrusores.md \
					4.0.3.Kits.md \
					4.1.0.Geometrias.md \
					4.1.1.EjeZ.infinito.md \
					4.1.2.Modelos.md \
					4.1.3.Prusa_i3.md \
					4.1.4.CrealityEnder3v2.md \
					4.1.5.Kingroon_KP3s.md \
					4.1.6.ArtilleryGenius.md \
					4.1.6.Witbox2.md \
					4.2.Montaje_Ender3.md \
					4.2.Montaje.Kingroon_KP3s.md

m5:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m5)  \
					Cabecera.md        \
					Cabecera_latex.md \
					5.0.0.UsoImpresoras3D.md \
					5.1.Uso_i3.md \
					5.2.Uso_creality3.md \
					5.3.Uso_Kingroom_kp3s.md

m6:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m6)  \
					Cabecera.md        \
					Cabecera_latex.md \
					6.0.0.Mejoras.md \
					6.0.1.TestCalidad.md \
					6.0.2.Adherencia.md \
					6.0.3.PosicionMpresion.md \
					6.0.4.Relleno.md \
					6.0.5.FaltaFilamento.md \
					6.1.0.PrusaSlicer_avanzado.md \
					6.2.Cura_avanzado.md \
					6.3.0.ImpresionPieza.md \
					6.3.1.Modificadores.md \
					6.3.2.AjustePiezas.md \
					6.3.3.Multicolor.md \
					6.3.3.TorreCalibracion.md \
					6.5.ImpresionFilamentos.md \
					6.6.Proyectos3D.md \
					6.9.0.MejorasHardware.md \
					6.9.1.Mejoras_kp3s.md \
					6.9.4.Cajas.md

m7:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m7)  \
					Cabecera.md        \
					Cabecera_latex.md \
					7.0.Mantenimiento.md \
					7.1.limpieza.md \
					7.4.0.Mantenimiento.md \
					7.4.2.Cuidados.md \
					7.5.0.ControlRemotoImpresora.md \
					7.5.1.Octoprint.md \
					7.10.firmware.md

			

m8:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m8)  \
					Cabecera.md        \
					Cabecera_latex.md \
					8.0.0.FallosImpresion.md \
					8.1.ErroresPorFilaamento.md \
					8.2.Atascos.md \
					8.3.erroresFrecuentes.md \
					8.5.ReconfiguracionEnCaliente.md


m9:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m9)  \
					Cabecera.md        \
					Cabecera_latex.md \
					9.0.HerramientasDiseño3D.md \
					9.2.Tinkercad.md \
					9.3.Freecad.md \
					9.4.Blender.md \
					9.5.BlockScad.md \
					9.6.SketchUp.md \
					9.7.OpenScad.md \
					9.9.2d-To-3D.md

clean:
	rm $(m1) $(m2) $(m3) $(m4) $(m5) $(m6) $(m7) $(m8) $(m9)


