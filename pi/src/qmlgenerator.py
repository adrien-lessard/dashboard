
import os

starttext = '''import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtMultimedia 5.8

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
            onPressed: {{
                playMusic.stop();
                playMusic.playlist.clear();
{items}
                playMusic.play();
            }}
        }}
    }}'''

songTemplate = '                playMusic.playlist.addItem("file:///home/pi/Music/{Artist}/{Album}/{Song}");'

import mutagen


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
				imgpath = '/home/pi/Music/{Artist}/{Album}/Folder.jpg'.format(Artist = str(artist), Album = str(album))
				if os.path.isfile(imgpath):
					image = 'file://' + imgpath

				songlist = list()
				playlist = list()
				for song in os.listdir('/home/pi/Music/' + str(artist) + '/' + str(album)):
					if str(song).endswith('.wma'):

						# Fix metadata to match our own, make sure we are not leaving blank fields
						audio = mutagen.File('/home/pi/Music/{Artist}/{Album}/{Song}'.format(	Artist = str(artist),
																								Album = str(album),
																								Song = str(song)))
						audio['Title'] = str(song)[:-4]
						audio['Author'] = str(artist)
						audio.save()

						songlist.append(str(song))
						playlist.append(songTemplate.format(	Artist = str(artist),
																Album = str(album),
																Song = str(song)))

				numList = list()
				for s in songlist:
					numList.append(int(s[:2]))

				sortedPlaylist = [x for _,x in sorted(zip(numList, playlist))]

				f.write(templateStr.format(	Artist = str(artist),
											Album = str(album),
											items = '\n'.join(sortedPlaylist),
											image = image))
	f.write(endtext)
