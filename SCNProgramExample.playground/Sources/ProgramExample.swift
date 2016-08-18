import UIKit
import SceneKit
import XCPlayground

public class ProgramExample: SCNView {

	// Make a node for the camera.
	var cameraNode = SCNNode()

	// Make a simple sphere.
	var sphere = SCNSphere(radius: 1)

	// Make a node for the sphere.
	public var sphereNode = SCNNode()

	public init(renderingAPI: SCNRenderingAPI) {

		// Make the view this size
		super.init(frame: CGRect(x: 0, y: 0, width: 200, height: 200), options:[SCNPreferredRenderingAPIKey: NSNumber(unsignedLong: renderingAPI.rawValue)])

		// Use default lighting.
		self.autoenablesDefaultLighting	= true

		// Make a SCNScene.
		self.scene = SCNScene()

		// Attach a camera to the camera node.
		cameraNode.camera = SCNCamera()

		// Position the camera, three units away from the origin along the z axis.
		cameraNode.position = SCNVector3(x:0, y:0, z:3)

		// Add the camera node to the scene.
		self.scene!.rootNode.addChildNode(cameraNode)

		// Configure the sphere.

		// Give it a diffuse color of red.
		sphere.firstMaterial?.diffuse.contents = UIColor.redColor()

		// Make it shiny by giving it a specular color of white.
		sphere.firstMaterial?.specular.contents = UIColor.whiteColor()

		// Add the sphere to its node
		sphereNode.geometry = sphere
		
		// Add the sphere node to the scene.
		self.scene!.rootNode.addChildNode(sphereNode)

	}
	
	required public init?(coder aDecoder: NSCoder) {
		fatalError("init(coder:) has not been implemented")
	}

}

