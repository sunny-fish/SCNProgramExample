/*:
## SCNProgram Example
This playground demonstrates how to use SCNProgram to supply custom shaders to SceneKit objects.

Made by Eric Berna, 2016. This is free and unencumbered software released into the public domain (see LICENSE file).
*/
import UIKit
import SceneKit
import XCPlayground

/*:
A `ProgramExample` object is a SceneKit view setup to have a geomentry to accept our `SCNProgram`.
Choose a rendering API, `Metal` or `OpenGLES2`. Adjust your shaders appropriately for your choice of rendering API.
*/
let programExample = ProgramExample(renderingAPI: .Metal)

/*: Show the view. */
XCPlaygroundPage.currentPage.liveView = programExample
