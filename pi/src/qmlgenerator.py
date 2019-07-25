
import os
import unidecode
from PIL import Image

starttext = '''import QtQuick 2.9

import "Theme.js" as Theme;

Column {
    id: musicColumn
    anchors.left: parent.left
    anchors.right: parent.right
'''

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
                color: Theme.txColor
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
    }}
'''

songTemplate = '                playMusic.playlist.addItem("file:///home/pi/Music/{Artist}/{Album}/{Song}");'

with open('MusicItems.qml', 'w') as f:
	f.write(starttext)

	# Sort artists in alphabetical order
	artistList = []
	nonAccentedArtistList = []
	for artist in os.listdir('/home/pi/Music'):
		if os.path.isdir('/home/pi/Music/' + str(artist)):
			artistList.append(str(artist))
			nonAccentedArtistList.append(unidecode.unidecode(str(artist)))
	artistList = [x for _,x in sorted(zip(nonAccentedArtistList, artistList))]

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
						print(song)
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
