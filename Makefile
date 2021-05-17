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
					0.0.Impresion3DParaTodos \
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
					3.1.Cura_v2.md \
					3.2.PrusaSlicer_v2.md \
					3.3.AjustePiezas.md \
					3.4.ReparacionPiezas_v2.md \
					3.5.Modificadores.md \
					3.6.Multicolor.md \
					3.7.soportes.md \
					3.8.DiferenciaBuenaAdherencia.md

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
					4.1.0.Impresoras3D.md \
					4.1.1.Geometrias.md \
					4.1.2.Modelos.md \
					4.1.3.Prusa_i3.md \
					4.1.4.CrealityEnder3v2.md \
					4.1.5.Kingroon_KP3s.md \
					4.1.6.ArtilleryGenius.md \
					4.2.Montaje_Ender3.md \
					4.2.Montaje.Kingroon_KP3s.md \
					4.5.Witbox2.md \
					4.6.EjeZ.infinito.md \
					4.7.multifilamento.md

m5:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m5)  \
					Cabecera.md        \
					Cabecera_latex.md \
					5.0.Uso_creality3.md \
					5.0.Uso_i3.md \
					5.0.Uso_Kingroom_kp3s.md

m6:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m6)  \
					Cabecera.md        \
					Cabecera_latex.md \
					6.3.Proyectos3D.md \
					6.5.2.Cajas.md \
					6.5.MejoraCalidad.md \
					6.7.Escaneado3D.md \
					6.8.ImpresionesGranFormato.md \
					6.9.presupuestos.md

m7:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m7)  \
					Cabecera.md        \
					Cabecera_latex.md \
					7.4.2.Cuidados.md \
					7.4.Mantenimiento.md \
					7.limpieza.md \
					7.10.firmware.md

m8:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m8)  \
					Cabecera.md        \
					Cabecera_latex.md \
					8.0.FallosImpresion.md \
					8.2.Atascos.md \
					8.2.ReconfiguracionEnCaliente.md \
					8.3.erroresFrecuentes.md \
					8.6.ProblemasMasFrecuentes.md

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
