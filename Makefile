m1 = "1. Introducción a la impresión 3D.docx"
m2 = "2. Qué imprimir: modelos y filamentos.docx"
m3 = "3. Cómo imprimir: Laminadores.docx"
m4 = "4. Impresoras 3D.docx"
m5 = "5. Mantenimiento y Cuidados.docx"
m6 = "6. Introducción al diseño 3D.docx"

all: m1 m2 m3 m4 m5 m6


m1:
	pandoc --latex-engine=xelatex   \
					-V papersize:a4paper    \
					--template=./LaTeX_ES.latex    \
					-o  $(m0)  \
					Cabecera.md        \
					Cabecera_latex.md \
