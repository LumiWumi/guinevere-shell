import Quickshell
import QtQuick
import QtQuick.Shapes

Shape {
  id: bar
  ShapePath {
    strokeColor: "transparent"
    fillColor: "#b12343"

    startX: 0; startY: 0
    PathLine { x: 0; y: 1080 }
    PathLine { x: 1920; y: 1080 }
    PathLine { x: 1920; y: 0 }
    PathMove { x: 40; y: 20 }
    PathLine { x: 1880; y: 20 }
    PathQuad { x: 1900; y: 40; controlX: 1890; controlY: 30 }
    PathLine { x: 1900; y: 1040 }
    PathQuad { x: 1880; y: 1060; controlX: 1890; controlY: 1050 }
    PathLine { x: 40; y: 1060 }
    PathQuad { x: 20; y: 1040; controlX: 30; controlY: 1050 }
    PathLine { x: 20; y: 40 }
    PathQuad { x: 40; y: 20; controlX: 30; controlY: 30 }
    


    
  }
}
