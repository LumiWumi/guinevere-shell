import Quickshell
import QtQuick
import QtQuick.Shapes
import Qt5Compat.GraphicalEffects
import "../shutdown"

Shape {
  // Id
  id: bar

  // customize colors through these variables
  property color barColor: "#4c0004"
  property color strokeColor: "transparent"
  property color shadowColor: "#FF000000"
  
  // Shadow
  layer.enabled: true
  layer.effect: DropShadow {
    color: bar.shadowColor
    radius: 20
    samples: 32 
  }

  //Shutdown Button
  ShutdownButton{}

  // Drawing coordinates
  ShapePath {
    // Color of the task bar
    strokeColor: bar.strokeColor
    fillColor: bar.barColor

    //starting position
    startX: 0; startY: 0


    // Initial run around the outer edge of monitor
    PathLine { x: 0; y: Screen.height }
    PathLine { x: Screen.width; y: Screen.height }
    PathLine { x: Screen.width; y: 0 }
    PathLine { x: 0; y: 0 }
    
    // move to inner monitor
    PathMove { x: 60; y: 10 }

    // Inner curvature and cutout of shape
    PathLine { x: Screen.width - 30; y: 10 }
    PathQuad { x: Screen.width - 10; y: 30; controlX: Screen.width - 13; controlY: 11 }
    PathLine { x: Screen.width - 10; y: Screen.height - 30 }
    PathQuad { x: Screen.width - 30; y: Screen.height - 10; controlX: Screen.width - 13; controlY: Screen.height - 9 }
    PathLine { x: 60; y: Screen.height - 10 }
    PathQuad { x: 40; y: Screen.height - 30; controlX: 43; controlY: Screen.height - 9 }
    PathLine { x: 40; y: 30 }
    PathQuad { x: 60; y: 10; controlX: 43; controlY: 11 }
  }
}
