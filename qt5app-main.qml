import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Window 2.15

Window {
    id: app

    width: 800
    height: 600
    visible: true
    title: qsTr("QML Promises Demo")

    MainPage {
        anchors.fill: parent
        title: app.title
        info: ( {
            "appTitle": itemInfo.title,
            "appVersion": appInfo.versionString,
            "Qt version": qtVersion
        } )
    }

    Component.onCompleted: console.log(JSON.stringify(appInfo, undefined, 2));
}
