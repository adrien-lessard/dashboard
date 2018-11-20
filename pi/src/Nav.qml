import QtQuick 2.9
import QtLocation 5.6
import QtPositioning 5.6

Item {
    anchors.fill: parent
    objectName: "NavPage"

    function setNewCoo(lat, lon) {
        map.center = QtPositioning.coordinate(lat, lon)
    }

    Plugin {
        id: mapboxglPlugin
        name: "mapboxgl"
        PluginParameter {
            name: "mapboxgl.access_token"
            value: "pk.eyJ1IjoiYWRyaWVuLWxlc3NhcmQiLCJhIjoiY2pucXljamxpMDJueDNxcXBmcnpvb2gyZiJ9.C0U26td5kudACofZLgqHEg"
        }
    }

    RouteQuery {
        id: aQuery
    }

    RouteModel {
        id: routeModel
        plugin: Plugin {
            name: "mapbox"
			PluginParameter {
	            name: "mapbox.access_token"
	            value: "pk.eyJ1IjoiYWRyaWVuLWxlc3NhcmQiLCJhIjoiY2pucXljamxpMDJueDNxcXBmcnpvb2gyZiJ9.C0U26td5kudACofZLgqHEg"
	        }
        }
        query: aQuery

        Component.onCompleted: {
            query.addWaypoint(QtPositioning.coordinate(45.5070152,-73.6233069))
            query.addWaypoint(QtPositioning.coordinate(45.5112417,-73.6168672))
            query.addWaypoint(QtPositioning.coordinate(45.6883239,-73.9344572))
            routeModel.update();
        }

        autoUpdate: false

        onStatusChanged: console.debug("current route model status", status, count, errorString)
    }

    Map {
        id: map
        anchors.fill: parent
        plugin: mapboxglPlugin
        center: QtPositioning.coordinate(45.5063218,-73.6228451)
        zoomLevel: 14

        MapItemView {
            model: routeModel
            delegate: MapRoute {
                route: routeData
                line.color: "#800000FF"
                line.width: 5
                smooth: true
            }
        }
    }
}
