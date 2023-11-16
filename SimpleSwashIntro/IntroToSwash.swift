//
//  BasicSwash.swift
//  BasicAshProject
//
//  Created by John Nyquist on 11/15/23.
//

import Swash
import SpriteKit

class IntroToSwash {
	var container: SKScene
	var engine: Engine!
	var tickProvider: FrameTickProvider!

	init(container: SKScene, width: Double, height: Double) {
		self.container = container
		engine = Engine()
		engine .addSystem(system: RenderSystem(container: container), priority: SystemPriorities.render.rawValue)
		let entity = ShipEntity(x: width/2, y: height/2, rotation: 0)
		try? engine.addEntity(entity: entity)
	}

	func start() {
		tickProvider = FrameTickProvider()
		tickProvider.add(Listener(engine.update))
		tickProvider.start()
	}
}
