
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
    width: parent.width - 2 * parent.padding'''

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
                source: "file:///home/pi/Music/{Artist}/{Album}/Folder.jpg"
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

with open('MusicItems.qml', 'w') as f:
	f.write(starttext)

	for artist in os.listdir('/home/pi/Music'):
		for album in os.listdir('/home/pi/Music/' + str(artist)):
			if not str(album).endswith('.ini') and not str(album).endswith('.dat'):
				print(album)

				songlist = list()
				playlist = list()
				for song in os.listdir('/home/pi/Music/' + str(artist) + '/' + str(album)):
					if str(song).endswith('.wma'):
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
											items = '\n'.join(sortedPlaylist)))
	f.write(endtext)
