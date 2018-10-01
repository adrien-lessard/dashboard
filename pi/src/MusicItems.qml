import QtQuick 2.9
import QtQuick.Window 2.3
import QtQuick.Controls 2.2
import QtQuick.Extras 1.4
import QtQuick.Layouts 1.3
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2
import QtMultimedia 5.8

Column {
    width: parent.width - 2 * parent.padding

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Françoise Hardy - Les grands numéros 1"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/01 Tous les garçons et les filles.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/02 J'suis D'accord.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/03 C'est à l'amour auquel je pense.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/04 Toi je ne t'oublierai pas.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/05 Avant De T'en Aller.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/06 Je N'attends Plus Personne.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/07 Je veux qu'il revienne.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/08 Mon amie la rose.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/09 L'amitié.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/10 La maison où j'ai grandi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/11 Je ne suis là pour personne.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/12 Voilà.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/13 Des Ronds Dans L'eau.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/14 Comment Te Dire Adieu.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Françoise Hardy/Les grands numéros 1/15 Il n'y a pas d'amour heureux.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Eric Clapton - Complete Clapton [Disc 2]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/01 I've Got A Rock 'N' Roll Heart.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/02 She's Waiting.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/03 Forever Man.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/04 It's In The Way That You Use It.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/05 Miss You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/06 Pretending.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/07 Bad Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/08 Tears In Heaven.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/09 Layla [Unplugged].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/10 Running On Faith [Unplugged].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/11 Motherless Child.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/12 Change The World.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/13 My Father's Eyes.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/14 Riding With The King.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/15 Sweet Home Chicago.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/16 If I Had Possession Over Judgment Day.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 2]/17 Ride The River.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Eric Clapton - Complete Clapton [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/01 I Feel Free.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/02 Sunshine Of Your Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/03 White Room.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/04 Crossroads [Live At Winterland].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/05 Badge.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/06 Presence Of The Lord.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/07 After Midnight.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/08 Let It Rain.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/09 Bell Bottom Blues.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/10 Layla.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/11 Let It Grow.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/12 I Shot The Sheriff.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/13 Knockin' On Heaven's Door.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/15 Cocaine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/17 Wonderful Tonight.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/18 Promises.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Eric Clapton/Complete Clapton [Disc 1]/19 I Can't Stand It.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Adele/21/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Adele - 21"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/01 Rolling In The Deep.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/02 Rumour Has It.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/03 Turning Tables.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/04 Don't You Remember.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/05 Set Fire To The Rain.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/06 He Won't Go.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/07 Take It All.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/08 I'll Be Waiting.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/09 One And Only.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/10 Lovesong.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Adele/21/11 Someone Like You.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Joe Cocker/Ultimate Collection/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Joe Cocker - Ultimate Collection"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/01 With A Little Help From My Friends.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/02 Feelin' Alright.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/03 Delta Lady.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/04 She Came In Through The Bathroom Window.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/05 The Letter.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/06 Cry Me A River.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/07 You Are So Beautiful.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/08 I'm So Glad I'm Standing Here Today.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/09 Sweet Little Woman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/10 Many Rivers To Cross.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/11 Up Where We Belong.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/12 Shelter Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/13 You Can Leave Your Hat On.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/14 Unchain My Heart.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/15 When The Night Comes.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/16 Now That The Magic Has Gone.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/17 Summer In The City.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/18 Have A Little Faith In Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/19 Sail Away.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Joe Cocker/Ultimate Collection/20 First We Take Manhattan.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Michael Jackson - Immortal [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/01 Workin' Day And Night (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/02 The Immortal Intro (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/03 Childhood (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/04 Wanna Be Startin' Somethin' (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/05 Shake Your Body (Down To The Ground) (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/06 Dancing Machine-Blame It On The Boogie (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/07 Ben (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/08 This Place Hotel (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/09 Smooth Criminal (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/10 Dangerous (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/11 The Mime Segment- (I Like) The Way You Love Me-Speed Demon-Another Part Of Me (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/12 The Jackson 5 Medley (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/13 Speechless-Human Nature (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/14 Is It Scary-Threatened (Immortal Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 1]/15 Thriller (Immortal Version).wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Michael Jackson - Immortal [Disc 2]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/01 You Are Not Alone - I Just Can't Stop Loving You [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/02 Beat It - State Of Shock [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/03 Jam [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/04 Planet Earth - Earth Song [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/05 Scream - Little Susie [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/06 Gone Too Soon [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/07 They Don't Care About Us [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/08 Will You Be There [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/09 I'll Be There [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/10 Immortal Megamix- Can You Feel It - Don't Stop 'til You Get Enough - Billie Jean - Black Or White [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/11 Man In The Mirror [Immortal Version].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Michael Jackson/Immortal [Disc 2]/12 Remember The Time - Bad [Immortal Version].wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Chris De Burgh - Spark To A Flame- The Very Best Of"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/01 This Waiting Heart.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/02 Don't Pay The Ferryman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/03 Much More Than This.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/04 Sailing Away.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/05 The Lady In Red.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/06 Borderline.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/07 Say Goodbye To It All.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/08 Spanish Train.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/09 Patricia The Stripper.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/10 Ship To Shore.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/11 Missing You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/12 Diamond In The Dark.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/13 Tender Hands.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/14 A Spaceman Came Travelling.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/15 Where Peaceful Waters Flow.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chris De Burgh/Spark To A Flame- The Very Best Of/16 High On Emotion.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Plamondon - Plamondon J'aurais Voulu Être Un Artiste"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/01 Dans Ma Camaro.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/02 J'ai Rencontré L'homme De Ma Vie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/03 Le Mur Derrière La Grange.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/04 Un Gars Comme Toi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/05 Incognito.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/06 Chanson Pour Elvis.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/07 Les Talons Hauts.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/08 Conversation Téléphonique.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/09 Pars Pas Sans M'dire Bye Bye.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/10 Je T'oublierai, Je T'oublierai.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/11 La Légende De Jimmy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/12 L'enfant Au Walkman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/13 J'ai Douze Ans.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/14 Aime.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/15 Lolita.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/16 Salaud!.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/17 La Dernière Enfance.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/18 Jusqu'à Me Perdre.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/19 Un Garçon Pas Comme Les Autres (Ziggy).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plamondon/Plamondon J'aurais Voulu Être Un Artiste/20 Que Passent Les Saisons.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/AC-DC/Highway To Hell/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "AC-DC - Highway To Hell"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/01 Highway To Hell.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/02 Girls Got Rhythm.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/03 Walk All Over You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/04 Touch Too Much.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/05 Beating Around The Bush.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/06 Shot Down In Flames.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/07 Get It Hot.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/08 If You Want Blood (You've Got It).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/09 Love Hungry Man.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/AC-DC/Highway To Hell/10 Night Prowler.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Plume Latraverse - En Noir Et Blanc"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/01 Léon, Le Caméléon.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/02 Le Loup- Fuck Le Loup!.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/03 Parlage.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/04 Assis.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/05 À Même L'avis.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/06 Chanson Pour Nous-Autres.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/07 La Marde.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/08 Le Blues De La Bêtise Humaine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/09 Terre De Soleil.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/10 Blueberry Hill.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/11 Chambre À Louer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/12 Moutonoir.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/13 Pause.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/14 Vieux Neg.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Plume Latraverse/En Noir Et Blanc/15 Léopold Gibouleau.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Miles Davis - The Essential Miles Davis [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/01 Now's The Time.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/02 Jeru.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/03 Compulsion.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/04 Tempus Fugit.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/05 Walkin'.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/06 'Round Midnight.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/07 Bye Bye Blackbird.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/08 New Rhumba.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/09 Generique.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/10 Summertime.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/11 So What.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/12 The Pan Piper.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 1]/13 Someday My Prince Will Come.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Miles Davis - The Essential Miles Davis [Disc 2]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/01 My Funny Valentine [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/02 E.S.P.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/03 Nefertiti.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/04 Petits Machins (Little Stuff).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/05 Miles Runs The Voodoo Down.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/06 Little Church.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/07 Black Satin.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/08 Jean Pierre.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/09 Time After Time.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Miles Davis/The Essential Miles Davis [Disc 2]/10 Portia.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "ABBA - ABBA Gold- Greatest Hits"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/01 Dancing Queen.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/02 Knowing Me, Knowing You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/03 Take A Chance On Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/04 Mamma Mia.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/05 Lay All Your Love On Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/06 Super Trouper.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/07 I Have A Dream.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/08 The Winner Takes It All.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/09 Money, Money, Money.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/10 S.O.S.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/11 Chiquitita.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/12 Fernando.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/13 Voulez Vous.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/14 Gimme! Gimme! Gimme! (A Man After Midnight).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/15 Does Your Mother Know.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/16 One Of Us.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/17 The Name Of The Game.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/18 Thank You For The Music.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/ABBA/ABBA Gold- Greatest Hits/19 Waterloo.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Queen/A Night At The Opera/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Queen - A Night At The Opera"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/01 Death On Two Legs (Dedicated To...).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/02 Lazing On A Sunday Afternoon.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/03 I'm In Love With My Car.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/04 You're My Best Friend.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/05 '39.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/06 Sweet Lady.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/07 Seaside Rendezvous.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/08 The Prophet's Song.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/09 Love Of My Life.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/10 Good Company.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/11 Bohemian Rhapsody.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/12 God Save The Queen.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/13 I'm In Love With My Car (1991 Remix).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Queen/A Night At The Opera/14 You're My Best Friend (1991 Remix).wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Artistes Variés - Don Juan - Acte 2"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/01 Les amoureux de Séville.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/02 Changer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/03 Qui.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/04 Je pense à lui.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/05 Deux à aimer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/06 Venge-nous.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/07 Seulement l'amour.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/08 Maria.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/09 Jalousie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/10 Pourquoi le bruit.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/11 Pitié pour personne.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/12 Les anges.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/13 L'enfant du diable.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/14 Seul.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/15 Tristesa Andalucia.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/16 Duel à l'aube.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/17 Je meurs d'amour.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 2/18 Don Juan est mort.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Artistes Variés - Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/01 Dans Ma Camaro.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/02 J'ai Rencontré L'homme De Ma Vie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/03 Le Mur Derrière La Grange.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/04 Un Gars Comme Toi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/05 Incognito.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/06 Chanson Pour Elvis.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/07 Les Talons Hauts.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/08 Conversation Téléphonique.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/09 Pars Pas Sans Me Dire Bye Bye.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/10 Je T'oublierai, Je T'oublierai.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/11 La Légende De Jimmy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/12 L'enfant Au Walkman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/13 J'ai Douze Ans.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/14 Aime.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/15 Lolita.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/16 Salaud!.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/17 La Dernière Enfance.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/18 Jusqu'à Me Perdre.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/19 Un Garçon Pas Comme Les Autres (Ziggy).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Plamondon J'aurais Voulu Être Un Artiste... [Disc 1]/20 Qui Passent Les Saisons.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Artistes Variés - Don Juan - Acte 1"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/01 Ouverture - Un grand homme est mort.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/02 L'homme qui a tout.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/03 Coeur de pierre.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/04 Mon nom.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/05 Dites-lui.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/06 Une mèche de cheveux.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/07 Mon fils.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/08 Les fleurs du mal.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/09 Du plaisir.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/10 Vivir.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/11 Belle andalouse.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/12 N'as-tu pas honte -.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/13 Les femmes.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/14 Reste encore.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/15 L'amour quand il vient.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/16 Statue de pierre.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/17 Aimer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Don Juan - Acte 1/18 Le sang des soldats.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Artistes Variés - Essential Love [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/01 All Out Of Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/02 Two Out Of Three Ain't Bad.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/03 True Colors.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/04 When A Man Loves A Woman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/05 Broken Wings.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/06 My Life.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/07 Truly Madly Deeply.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/08 Telephone Line.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/09 Total Eclipse Of The Heart.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/10 Mandy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/11 Heaven.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/12 Take My Breath Away.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/13 The Flame.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/14 Everytime You Go Away.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Artistes Variés/Essential Love [Disc 1]/15 Because Of You.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Robert Charlebois - Les Grands Succès De Robert Charlebois"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/01 Lindberg.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/02 Les Ailes D'un Ange.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/03 Demain L'hiver.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/04 Ya Sa Pichou.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/05 Québec Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/06 La Valse Reno.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/07 Miss Pepsi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/08 C'est Pour Ça.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/09 Terre-Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/10 Mme. Bertrand.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/11 Marie Noël.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/12 Complainte De Presqu'amérique.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/13 Tout Écartillé.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/14 Mr. Plum.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/15 Sensation.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/16 Parle-Moi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/17 50,000,000 D'homme.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Robert Charlebois/Les Grands Succès De Robert Charlebois/18 Ordinaire.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Genesis/Selling England By The Pound/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Genesis - Selling England By The Pound"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Genesis/Selling England By The Pound/01 Dancing With The Moonlight Knight.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Genesis/Selling England By The Pound/02 I Know What I Like (In Your Wardrobe).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Genesis/Selling England By The Pound/03 Firth Of Fifth.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Genesis/Selling England By The Pound/04 More Fool Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Genesis/Selling England By The Pound/05 The Battle Of Epping Forest.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Genesis/Selling England By The Pound/06 After The Ordeal.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Genesis/Selling England By The Pound/07 The Cinema Show.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Genesis/Selling England By The Pound/08 Aisle Of Plenty.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Henry Mancini - All Time Greatest Hits"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/01 Mr. Lucky.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/02 Moon River.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/03 Baby Elephant Walk.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/04 Experiment In Terror.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/05 Days Of Wine And Roses.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/06 Charade (Main Title).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/07 The Pink Panther Theme.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/08 The Sweetheart Tree.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/09 Theme From The Great Imposter.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/10 A Shot In The Dark.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/11 Love Theme From Romeo And Juliet (Piano).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/12 Two For The Road [Instrumental].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/13 Theme From 'Z'.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/14 Theme From Love Story (Piano).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Henry Mancini/All Time Greatest Hits/15 Peter Gunn.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Benny Goodman - The Essential Benny Goodman [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/01 Let's Dance.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/02 Bugle Call Rag.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/03 King Porter Stomp.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/04 Don't Be That Way.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/05 When Buddha Smiles.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/06 Sing, Sing, Sing.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/07 Big John's Special.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/08 Get Happy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/09 Superman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/10 Oh! Baby.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/11 Goody Goody.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/12 There's A Small Hotel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/13 You Turned The Tables On Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/14 Can't Teach My Old Heart New Tricks.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/15 This Can't Be Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/16 I Thought About You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/17 It Never Entered My Mind.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/18 Taking A Chance On Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/19 Let's Do It.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 1]/20 How Long Has This Been Going On-.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Benny Goodman - The Essential Benny Goodman [Disc 2]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/01 After You've Gone.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/02 Runnin' Wild.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/03 The Man I Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/04 Moonglow.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/05 Flying Home.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/06 Rose Room.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/07 Air Mail Special.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/08 The World Is Waiting For The Sunrise.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/09 Wholly Cats.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/10 Rachel's Dream.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/11 Ridin' High.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/12 Sunny Disposish.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/13 Body & Soul.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/14 Sweet Leilani.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/15 Roll 'em.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/16 Life Goes To A Party.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/17 Avalon.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/18 Swingtime In The Rockies.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/19 My Gal Sal [Instrumental].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Benny Goodman/The Essential Benny Goodman [Disc 2]/20 Stealin' Apples.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Avril Lavigne/Under My Skin/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Avril Lavigne - Under My Skin"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/01 Take Me Away.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/02 Together.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/03 Don't Tell Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/04 He Wasn't.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/05 How Does It Feel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/06 My Happy Ending.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/07 Nobody's Home.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/08 Forgotten.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/09 Who Knows.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/10 Fall To Pieces.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/11 Freak Out.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/Under My Skin/12 Slipped Away.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Avril Lavigne/My World [Live]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Avril Lavigne - My World [Live]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/My World [Live]/01 Fuel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/My World [Live]/02 Basketcase [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/My World [Live]/03 Unwanted [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/My World [Live]/04 Sk8er Boi [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/My World [Live]/05 Knockin' On Heaven's Door [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Avril Lavigne/My World [Live]/06 Why.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Harmonium/Harmonium/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Harmonium - Harmonium"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/01 Harmonium.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/02 Si Doucement.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/03 Aujourd'hui, Je Dis Bonjour À La Vie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/03 Aujourd_hui, Je Dis Bonjour À La Vie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/04 Vieilles Courroies.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/05 100,000 Raisons.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/06 Attends-Moi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/07 Pour Un Instant.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/08 De La Chambre Au Salon.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/09 Un Musicien Parmi Tant D'autres.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Harmonium/Harmonium/09 Un Musicien Parmi Tant D_autres.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Garou/Seul/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Garou - Seul"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/01 Gitan.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/02 Que L'amour Est Violent.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/03 Demande Au Soleil.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/04 Seul.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/05 Sous Le Vent.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/06 Je N'attendais Que Vous.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/07 Criminel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/08 Le Calme Plat.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/09 Au Plaisir De Ton Corps.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/10 La Moitié Du Ciel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/11 Lis Dans Mes Yeux.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/12 Jusqu'à Me Perdre.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/13 Gambler.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Garou/Seul/14 L'adieu.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Jacques Dutronc/La Collection/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Jacques Dutronc - La Collection"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/01 Et moi, et moi, et moi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/02 J'ai mis un tigre dans ma guitare.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/03 Les plays boy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/04 Les cactus.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/05 La fille du Père Noël.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/06 Sur une nappe de restaurant.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/07 J'aime Les Filles.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/08 L'idole.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/09 Le plus difficile.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/10 Il est cinq heures, Paris s'éveille.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/11 L'opportuniste.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/12 L'arsène.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/13 L'homme de paille.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/14 Gentlemen cambrioleur.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/15 Le dragueur des supermarchés.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/La Collection/16 L'amour prison.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Jacques Dutronc - Le Meilleur De Jacques Dutronc"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/01 Et Moi, Et Moi, Et Moi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/02 Mini, Mini, Mini.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/03 La Fille Du Père Noël.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/04 Les Playboys.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/05 Les Cactus.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/06 L'idole.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/07 La Publicité.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/08 J'aime Les Filles.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/09 Fais Pas Ci, Fait Pas CA.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/10 Il Est Cinq Heures, Paris S'éveille.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/11 L'Aventurier.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/12 Le Responsable.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/13 L'hôtesse De L'air.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/14 L'Arsène.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/15 Le Fond De L'air Est Frais.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/16 Le Petit Jardin.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/17 Le Dragueur Des Supermarchés.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jacques Dutronc/Le Meilleur De Jacques Dutronc/18 Le Bras Mécanique.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Led Zeppelin - Led Zeppelin IV"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/01 Black Dog.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/02 Rock And Roll.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/03 The Battle Of Evermore.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/04 Stairway To Heaven.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/05 Misty Mountain Hop.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/06 Four Sticks.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/07 Going To California.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Led Zeppelin/Led Zeppelin IV/08 When The Levee Breaks.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Frank Zappa/Cheap Thrills/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Frank Zappa - Cheap Thrills"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/01 I Could Be A Star Now.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/02 Catholic Girls.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/03 Bobby Brown Goes Down.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/04 You Are What You Is.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/05 We Are Not Alone.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/06 Cheap Thrills.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/07 The Mud Shark Interview.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/08 Hot Plate Heaven At The Green Hotel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/09 Zomby Woof.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/10 The Torture Never Stops.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/11 Joe's Garage.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/12 My Guitar Wants To Kill Your Mama.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Frank Zappa/Cheap Thrills/13 Going For The Money.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Bob Dylan/Dylan/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Bob Dylan - Dylan"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/01 Blowin' In The Wind.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/02 The Times They Are A-Changin'.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/03 Subterranean Homesick Blues.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/04 Mr. Tambourine Man.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/05 Like A Rolling Stone.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/06 Maggie's Farm.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/07 Positively 4th Street.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/08 Just Like A Woman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/09 Rainy Day Women #12 & 35.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/10 All Along The Watchtower.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/11 Lay Lady Lay.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/12 Knockin' On Heaven's Door.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/13 Tangled Up In Blue.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/14 Hurricane.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/15 Make You Feel My Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/16 Things Have Changed.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/17 Someday Baby.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Bob Dylan/Dylan/18 Forever Young.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Leonard Cohen/The Best Of/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Leonard Cohen - The Best Of"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/01 Suzanne.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/02 Sisters Of Mercy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/03 So Long, Marianne.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/04 Bird On The Wire.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/05 Lady Midnight.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/06 The Partisan.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/07 Hey, That's No Way To Say Goodbye.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/08 Famous Blue Raincoat.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/09 Last Year's Man.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/10 Chelsea Hotel No. 2.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/11 Who By Fire.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/The Best Of/12 Take This Longing.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Leonard Cohen/Old Ideas/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Leonard Cohen - Old Ideas"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/01 Going Home.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/02 Amen.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/03 Show Me The Place.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/04 Darkness.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/05 Anyhow.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/06 Crazy To Love You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/07 Come Healing.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/08 Banjo.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/09 Lullaby.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Leonard Cohen/Old Ideas/10 Different Sides.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Neil Diamond - Gold [Disc 2]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/01 I Am... I Said.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/02 The Last Thing On My Mind.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/03 Chelsea Morning.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/04 Crunchy Granola Suite.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/05 Stones.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/06 Suzanne.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/07 I Think It's Gonna Rain Today.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/08 Song Sung Blue.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/09 Porcupine Pie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/10 Canta Libre.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/11 Captain Sunshine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/12 Play Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/13 Walk On Water.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/14 Prelude In E Major.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/15 Morningside.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/16 Kentucky Woman [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/17 Thank The Lord For The Night Time [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/18 Solitary Man [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/19 Cherry, Cherry [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/20 Red, Red Wine [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Neil Diamond/Gold [Disc 2]/21 Girl, You'll Be A Woman Soon [Live].wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Britney Spears/Britney/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Britney Spears - Britney"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/01 I'm A Slave 4 U.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/02 Overprotected.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/03 Lonely.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/04 I'm Not A Girl, Not Yet A Woman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/05 Boys.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/06 Anticipating.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/07 I Love Rock 'n' Roll.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/08 Cinderella.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/09 Let Me Be.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/10 Bombastic Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/11 That's Where You Take Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Britney Spears/Britney/12 What It's Like To Be Me.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Gérard Presgurvic - Roméo & Juliette"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/01 Verone.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/02 La Haine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/03 J'ai Peur.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/04 Les Rois Du Monde.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/05 L'amour Heureux.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/06 Le Balcon.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/07 Les Beaux, Les Laids.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/08 Par Amour.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/09 Et Voila Qu'elle Aime.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/10 Aimer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/11 On Dit Dans La Rue.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/12 Le Duel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/13 Le Pouvoir.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/14 Avoir Une Fille.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/15 La Mort De Juliette.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/16 J'sais Plus.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Gérard Presgurvic/Roméo & Juliette/17 Coupables (Final).wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Louis Armstrong - All-Time Greatest Hits"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/01 What A Wonderful World.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/02 Hello Dolly.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/03 Sittin' In The Sun.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/04 Mack The Knife.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/05 A Kiss To Build A Dream On.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/06 It Takes Two To Tango.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/07 That Lucky Old Sun.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/08 Kiss Of Fire.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/09 I Get Ideas.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/10 Gone Fishin'.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/11 Skokiaan.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/12 La Vie En Rose.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/13 The Dummy Song.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/14 Chloe.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/15 I Still Get Jealous.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/16 When You're Smiling.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/17 Blueberry Hill.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/All-Time Greatest Hits/18 When It's Sleepy Time Down South.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Louis Armstrong - 20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/01 What A Wonderful World.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/02 Hello Dolly.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/03 Dream A Little Dream Of Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/04 Cabaret.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/05 That Lucky Old Sun (Just Rolls Around Heaven All Day).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/06 I Still Get Jealous.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/07 Blueberry Hill.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/08 A Kiss To Build A Dream On.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/09 Gone Fishin'.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Louis Armstrong/20th Century Masters- The Millennium Collection - The Best Of Louis Armstrong/10 When It's Sleepy Time Down South.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Les Colocs - Les Années- 1992-1995"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/01 La Rue Principale.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/02 Passe-Moé La Puck.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/03 Julie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/04 Maudit Qu'le Monde Est Beau.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/05 Je Chante Comme Une Casserole.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/06 La Traversée.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/07 La Chanson Du Scorpion.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/08 Dédé.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/09 BonYeu.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/10 La P'tite Bebitte.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/11 Astrocetomique.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/12 On Va Crever En Attendant L'Été (Ou L'Hiver).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/13 Ain't Givin' Up.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/14 Séropositif Boogie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/15 Mauvais Caractère.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Les Colocs/Les Années- 1992-1995/16 Juste Une P'tite Nuite.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Paul Simon - The Essential Paul Simon [Disc 2]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/01 Graceland.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/02 Diamonds On The Soles Of Her Shoes.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/03 The Boy In The Bubble.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/04 You Can Call Me Al.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/05 Under African Skies.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/06 The Obvious Child.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/07 Born At The Right Time.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/08 The Cool, Cool River.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/09 Spirit Voices.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/10 Adios Hermanos.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/11 Born In Puerto Rico.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/12 Quality.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/13 Darling Lorraine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/14 Hurricane Eye.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/15 Father And Daughter.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/16 Outrageous.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 2]/17 Wartime Prayers.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Paul Simon - The Essential Paul Simon [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/01 Mother And Child Reunion.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/02 Loves Me Like A Rock.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/03 Me And Julio Down By The Schoolyard.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/04 Duncan.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/05 Kodachrome.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/06 50 Ways To Leave Your Lover.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/07 Slip Slidin' Away.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/08 Gone At Last.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/09 Something So Right.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/10 Late In The Evening.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/11 Hearts And Bones.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/12 Take Me To The Mardi Gras.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/13 That Was Your Mother.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/14 American Tune.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/15 Peace Like A River.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/16 Stranded In A Limousine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/17 Train In The Distance.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/18 The Late Great Johnny Ace.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Paul Simon/The Essential Paul Simon [Disc 1]/19 Still Crazy After All These Years.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Jean-Pierre Ferland/Jaune/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Jean-Pierre Ferland - Jaune"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/01 Prologue.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/02 Le Petit Roi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/03 Quand On Aime On A Toujours Vingt Ans.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/04 Sing Sing.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/05 God Is An American.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/06 Le Chat Du Café Des Artistes.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/07 ….wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/08 Y'a Des Jours.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/09 Ce Qu'on Dit Quand On Tient Une Femme Dans Ses Bras.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/10 Épilogue.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Jean-Pierre Ferland/Jaune/11 It Ain't Fair.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Corneille - Parce Qu'on Vient De Loin"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/01 Seul Au Monde.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/02 Terre.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/03 Sans Rancune.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/04 Ça Me Va.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/05 Rêves De Star.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/06 Avec Classe.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/07 Parce Qu'on Vient De Loin.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/08 On Regarde.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/09 Tout Va Bien.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/10 Ensemble.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/11 Toi.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/12 Va (On Se Verra).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/13 Qu'est-Ce Que Tu Fais-.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/14 Comme Un Fils.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/15 Parce Qu'on Vient De Loin (Acoustic Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Corneille/Parce Qu'on Vient De Loin/16 D'amour Et D'amitié.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Édith Piaf/Éternelle/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Édith Piaf - Éternelle"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/01 La Vie En Rose.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/02 Hymne À L'amour.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/03 Padam... Padam.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/04 Johnny Tu N'es Pas Un Ange.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/05 La Goualante Du Pauvre Jean.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/06 Sous Le Ciel De Paris.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/07 L'homme À La Moto.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/08 Mon Manège À Moi (Tu Me Fais Tourner La Tête).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/09 Non, Je Ne Regrette Rien.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/10 Milord.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/11 Les Flonflons Du Bal.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/12 Les Mots D'amour.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/13 Fallait-Il -.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/14 La Foule.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/15 Tiens V'là Un Marin.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/16 Le Droit D'aimer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/17 À Quoi Ça Sert L'amour -.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Édith Piaf/Éternelle/18 L' Accordéoniste.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Pink Floyd - The Dark Side Of The Moon"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/01 Speak To Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/02 Breathe.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/03 On The Run.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/04 Time.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/05 The Great Gig In The Sky.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/06 Money.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/07 Us And Them.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/08 Any Colour You Like.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/09 Brain Damage.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Pink Floyd/The Dark Side Of The Moon/10 Eclipse.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Roberta Flack - The Best Of Roberta Flack"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/01 Killing Me Softly With His Song.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/02 The Closer I Get To You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/03 You've Got A Friend.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/04 Feel Like Makin' Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/05 Will You Still Love Me Tomorrow.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/06 Where Is The Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/07 The First Time Ever I Saw Your Face.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/08 Back Together Again.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/09 You Are My Heaven.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/10 If Ever I See You Again.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Roberta Flack/The Best Of Roberta Flack/11 Jesse.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Chuck Berry - The Anthology [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/01 Maybellene.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/02 Wee Wee Hours.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/03 Thirty Days.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/04 You Can't Catch Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/05 Downbound Train.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/06 No Money Down.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/07 Brown Eyed Handsome Man.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/08 Roll Over Beethoven.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/09 Too Much Monkey Business.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/10 Havana Moon.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/11 School Day (Ring Ring Goes The Bell).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/12 Rock And Roll Music.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/13 Oh Baby Doll.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/14 Sweet Little Sixteen [Demo].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/15 Guitar Boogie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/16 Reelin' And Rockin'.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/17 Johnny B. Goode.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/18 Around And Around.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/19 Beautiful Delilah.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/20 House Of Blue Lights.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/21 Carol.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/22 Jo Jo Gunne.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/23 Memphis, Tennessee.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/24 Sweet Little Rock And Roller.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/25 Little Queenie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 1]/26 Almost Grown.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Chuck Berry - The Anthology [Disc 2]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/01 Back In The USA.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/02 Do You Love Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/03 Betty Jean.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/04 Childhood Sweetheart.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/05 Let It Rock.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/06 Too Pooped To Pop.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/07 I Got To Find My Baby.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/08 Don't You Lie To Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/09 Bye Bye Johnny.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/10 Jaguar And Thunderbird.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/11 Down The Road Apiece.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/12 Confessin' The Blues.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/13 I'm Talking About You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/14 Come On.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/15 Nadine (Is It You-).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/16 You Never Can Tell.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/17 Promised Land.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/18 No Particular Place To Go.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/19 Dear Dad.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/20 I Want To Be Your Driver.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/21 Tulane.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/22 My Ding-A-Ling [Single Edit] [Live].wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/23 Reelin' And Rockin'.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Chuck Berry/The Anthology [Disc 2]/24 Bio.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Lionel Richie - The Definitive Collection [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/01 Hello.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/02 Just To Be Close To You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/03 Easy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/04 Running With The Night.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/05 Three Times A Lady.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/06 Still.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/07 All Night Long (All Night).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/08 Endless Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/09 Truly.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/10 Penny Lover.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/11 You Are.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/12 Sail On.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/13 Stuck On You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/14 Say You, Say Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/15 Dancing On The Ceiling.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/16 Do It To Me.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/17 Ballerina Girl.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/18 Angel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/19 To Love A Woman.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Lionel Richie/The Definitive Collection [Disc 1]/20 Goodbye.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "The Beatles - The Beatles [Disc 2]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/01 Birthday.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/02 Yer Blues.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/03 Mother Nature_s Son.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/04 Everybody_s Got Something To Hide Except Me And My Monkey.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/05 Sexy Sadie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/06 Helter Skelter.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/07 Long, Long, Long.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/08 Revolution 1.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/09 Honey Pie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/10 Savoy Truffle.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/11 Cry Baby Cry.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/12 Revolution 9.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 2]/13 Good Night.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "The Beatles - The Beatles [Disc 1]"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/01 Back In The U.S.S.R.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/02 Dear Prudence.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/03 Glass Onion.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/04 Ob-La-Di, Ob-La-Da.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/05 Wild Honey Pie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/06 The Continuing Story Of Bungalow Bill.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/07 While My Guitar Gently Weeps.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/08 Happiness Is A Warm Gun.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/09 Martha My Dear.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/10 I_m So Tired.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/11 Blackbird.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/12 Piggies.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/13 Rocky Racoon.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/14 Don_t Pass Me By.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/15 Why Don_t We Do It In The Road-.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/16 I Will.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/The Beatles [Disc 1]/17 Julia.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/The Beatles/Abbey Road/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "The Beatles - Abbey Road"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/01 Come Together.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/02 Something.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/03 Maxwell_s Silver Hammer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/04 Oh! Darling.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/05 Octopus_s Garden.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/06 I Want You (She_s So Heavy).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/07 Here Comes The Sun.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/08 Because.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/09 You Never Give Me Your Money.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/10 Sun King.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/11 Mean Mr. Mustard.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/12 Polythene Pam.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/13 She Came In Through The Bathroom Window.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/14 Golden Slumbers.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/15 Carry That Weight.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/16 The End.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/Abbey Road/17 Her Majesty.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/The Beatles/1/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "The Beatles - 1"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/01 Love Me Do.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/02 From Me To You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/03 She Loves You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/04 I Want To Hold Your Hand.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/05 Can_t Buy Me Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/06 A Hard Day_s Night.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/07 I Feel Fine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/08 Eight Days A Week.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/09 Ticket To Ride.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/10 Help!.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/11 Yesterday.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/12 Day Tripper.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/13 We Can Work It Out.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/14 Paperback Writer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/15 Yellow Submarine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/16 Eleanor Rigby.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/17 Penny Lane.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/18 All You Need Is Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/19 Hello Goodbye.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/20 Lady Madonna.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/21 Hey Jude.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/22 Get Back.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/23 The Ballad Of John And Yoko.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/24 Something.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/25 Come Together.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/26 Let It Be.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/The Beatles/1/27 The Long And Winding Road.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Claude Dubois - Ma Préférence - Les Grandes Chansons"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/01 Plein De Tendresse.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/02 Comme Un Million De Gens.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/03 Femme De Rêve.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/04 Tu Peux Pas.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/05 Infidèle.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/06 L'immigré.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/07 Femmes Ou Filles.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/08 Pas Question D'aventure.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/09 Bébé Jajou La Toune.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/10 Un Chanteur Chante.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/11 Laisser L'été Avoir 15 Ans.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/12 Chasse Galerie.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/13 Le Vaisseau D'or.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/14 Comme Un Voyou.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/15 Ti-Loup.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Grandes Chansons/16 Artistes.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Claude Dubois - Ma Préférence - Les Plus Belles Chansons 2"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/01 Merlin.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/02 J'ai Souvenir Encore.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/03 Les Petits Cailloux.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/04 L'espace Qui Lui Reste.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/05 Le Labrador.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/06 Derrière Mes Yeux.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/07 Tire La Langue.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/08 Le Vaisseau D'or.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/09 La Calotte À L'envers.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/10 Si Dieu Existe.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/11 Le Mangeur D'étoiles.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/12 Chanson De La Rue.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/13 En Voyage.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/14 La Haine De L'amour.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/15 L'oiseau S'en Va.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/16 Beau Client.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Dubois/Ma Préférence - Les Plus Belles Chansons 2/17 Le Blues Du Businessman.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Ben Charest - The Triplets Of Belleville"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/01 Under The Bridge.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/02 Belleville Rendez-Vous (French Version).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/03 Opening Theme.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/04 Cabaret Opening.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/05 Tour De France.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/06 Attila Marcel.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/07 Thème Bruno.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/08 Easy, Bruno, Easy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/09 Belleville Rendez-Vous (Demo).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/10 French Mafia Theme.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/11 Jazzy Bach.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/12 Cabaret Hoover.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/13 Belleville Jungle.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/14 Barbier 'Cieco, Cieco'.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/15 Pa Pa Pa Palavas.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/16 The Return Of The French Mafia.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/17 The Shadowing.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/18 The Chase.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Ben Charest/The Triplets Of Belleville/19 Belleville Rendez-Vous (English Version).wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Rod Stewart - The Voice- The Very Best Of Rod Stewart"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/01 Rhythm Of My Heart.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/02 Maggie May.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/03 Have I Told You Lately.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/04 This Old Heart Of Mine.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/05 Young Turks.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/06 Downtown Train.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/07 You Wear It Well.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/08 Reason To Believe.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/09 Some Guys Have All The Luck.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/10 Tonight's The Night (Gonna Be Alright).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/11 Hot Legs.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/12 Da Ya Think I'm Sexy-.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/13 My Heart Can't Tell You No.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/14 You're In My Heart (The Final Acclaim).wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/15 Ooh La La.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Rod Stewart/The Voice- The Very Best Of Rod Stewart/16 Forever Young.wma");
                playMusic.play();
            }
        }
    }

    Item {
        width: parent.width
        height: 75

        Row {
            height: parent.height
            Image {
                source: "file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/Folder.jpg"
                width: parent.height
                height: parent.height
            }

            Text {
                text: "Claude Saucier - Claude Saucier Présente C’est Si Bon"
                height: parent.height
                color: "#c4c4c4"
                padding: 0, 0, 0, 10
                verticalAlignment: Text.AlignVCenter
            }
        }

        MouseArea {
            anchors.fill: parent
            onPressed: {
                playMusic.stop();
                playMusic.playlist.clear();
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/01 You're Nobody 'Til Somebody Loves You.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/02 Night And Day.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/03 Love Letters In The Sand.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/04 Break It To Me Gently.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/05 Quizas, Quizas, Quizas.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/06 Daddy's Little Girl.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/07 Crazy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/08 Three Coins In The Fountain.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/09 Eternally.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/10 Stardust.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/11 When I Fall In Love.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/12 Sincerely.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/13 Who's Sorry Now.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/14 The Gypsy.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/15 It's Magic.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/16 My Prayer.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/17 As Time Goes By.wma");
                playMusic.playlist.addItem("file:///home/pi/Music/Claude Saucier/Claude Saucier Présente C’est Si Bon/18 Moonlight Serenade.wma");
                playMusic.play();
            }
        }
    }
}
