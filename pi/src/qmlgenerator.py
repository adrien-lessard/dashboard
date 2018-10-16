
import os
import mutagen
from PIL import Image

starttext = '''import QtQuick 2.9

Column {
    id: musicColumn
    width: 500'''

endtext = '''
}
'''

templateStr = '''

    Item {{
        width: parent.width
        height: 75

        Row {{
            height: parent.height
            Image {{
                source: "{image}"
                width: parent.height
                height: parent.height
            }}

            Text {{
                text: "{Artist} - {Album}"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }}
        }}

        MouseArea {{
            anchors.fill: parent
            onClicked: {{
                playMusic.stop();
                playMusic.playlist.clear();
{items}
                playMusic.play();
            }}
        }}
    }}'''

songTemplate = '                playMusic.playlist.addItem("file:///home/pi/Music/{Artist}/{Album}/{Song}");'

with open('MusicItems.qml', 'w') as f:
	f.write(starttext)

	artistList = list()
	for artist in os.listdir('/home/pi/Music'):
		artistList.append(str(artist))
	artistList.sort()

	for artist in artistList:
		for album in os.listdir('/home/pi/Music/' + str(artist)):
			if not str(album).endswith('.ini') and not str(album).endswith('.dat'):

				# default image
				image = '../img/play.svg'

				# Make a smaller image
				bigimgpath = '/home/pi/Music/{Artist}/{Album}/Folder.jpg'.format(Artist = str(artist), Album = str(album))
				if os.path.isfile(bigimgpath):
					outfile = os.path.splitext(bigimgpath)[0] + "_small.png"
					if bigimgpath != outfile:
						try:
							im = Image.open(bigimgpath)
							size = 75, 75
							im.thumbnail(size, Image.ANTIALIAS)
							im.save(outfile, "PNG")
						except IOError:
							print('cannot create thumbnail for ' + str(bigimgpath))

				imgpath = '/home/pi/Music/{Artist}/{Album}/Folder_small.png'.format(Artist = str(artist), Album = str(album))
				if os.path.isfile(imgpath):
					image = 'file://' + imgpath

				songlist = list()
				playlist = list()
				for song in os.listdir('/home/pi/Music/' + str(artist) + '/' + str(album)):
					if str(song).endswith('.wma') or str(song).endswith('.wav') or str(song).endswith('.ogg') or str(song).endswith('.mp3'):

						# Fix metadata to match our own, make sure we are not leaving blank fields
						audio = mutagen.File('/home/pi/Music/{Artist}/{Album}/{Song}'.format(	Artist = str(artist),
																								Album = str(album),
																								Song = str(song)))
						if audio is not None:
							try:
								audio['Title'] = str(song)[:-4]
								audio['Author'] = str(artist)
								audio.save()
							except TypeError:
								pass

						songlist.append(str(song))
						playlist.append(songTemplate.format(	Artist = str(artist),
																Album = str(album),
																Song = str(song)))

				numList = list()
				for s in songlist:
					try:
						numList.append(int(s[:2]))
					except ValueError:
						numList.append(0)

				sortedPlaylist = [x for _,x in sorted(zip(numList, playlist))]

				f.write(templateStr.format(	Artist = str(artist),
											Album = str(album),
											items = '\n'.join(sortedPlaylist),
											image = image))
	f.write(endtext)