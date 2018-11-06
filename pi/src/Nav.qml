import QtQuick 2.9
import QtLocation 5.6
import QtPositioning 5.6

Item {
    anchors.fill: parent

    Plugin {
        id: mapboxglPlugin
        name: "mapbox"
        PluginParameter {
            name: "mapbox.access_token"
            value: "pk.eyJ1IjoiYWRyaWVuLWxlc3NhcmQiLCJhIjoiY2pucXljamxpMDJueDNxcXBmcnpvb2gyZiJ9.C0U26td5kudACofZLgqHEg"
        }
    }

    RouteQuery {
        id: aQuery
    }

    RouteModel {
        id: routeModel
        plugin: mapboxglPlugin
        query: aQuery

        Component.onCompleted: {
            query.addWaypoint(QtPositioning.coordinate(45.5063218,-73.6228451));
            query.addWaypoint(QtPositioning.coordinate(45.5077931,-73.6257011));
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
