# genera el código markdown para que se muestre un video en github
# idea de https://stackoverflow.com/questions/11804820/how-can-i-embed-a-youtube-video-on-github-wiki-pages
# usamos la imagen que youtube usa de portada, 
# creamos un enlace  markdown al video con una imagen como descripción
# [![IMAGE ALT TEXT HERE](https://img.youtube.com/vi/YOUTUBE_VIDEO_ID_HERE/0.jpg)](https://www.youtube.com/watch?v=YOUTUBE_VIDEO_ID_HERE)

import os

v = '0.9'

fileName = os.path.basename(__file__).split('.')[0]

print(f'{fileName} v:{v}')

while True:
    texto = input("URL del video ó Markdown del enlace al vídeo (Enter para terminar): ")
    if texto.count('['): # es markdown
        partes = texto.split(']')
        urlVideo = partes[1].replace('(','').replace(')','')
        descripcion = partes[0].replace('[','')
    else : # es una url del video
        urlVideo = texto
        descripcion = input("Descripcion: ")
    
    if len(urlVideo) < 1:
        break
    
    print('Video = ({}) Descripcion = ({})'.format(urlVideo,descripcion))
    
    if urlVideo.count('=')>0:
        id = urlVideo.split("=")[1]
    else:
        frag = urlVideo.split('/')
        id = frag[len(frag)-1]
    print(id)

    urlImagen='https://img.youtube.com/vi/{}/0.jpg'.format(id)
    print(urlImagen)


    linkURL = '[![{}]({})]({})'.format(descripcion,urlImagen,urlVideo)
    print(linkURL)

