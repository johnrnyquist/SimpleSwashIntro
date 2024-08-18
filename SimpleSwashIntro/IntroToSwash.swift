//
//  BasicSwash.swift
//  SimpleSwashIntro
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

		// our container is an SKScene, we use it to render things to
		self.container = container

		// this is the Swash engine
		engine = Engine()

		// add some systems to the engine
		engine
			.add(system: MovementSystem(), priority: SystemPriorities.move.rawValue)
			.add(system: RenderSystem(container: container), priority: SystemPriorities.render.rawValue)

		// create a ship entity so we see something when it starts
		let ship = ShipEntity(x: width/2, y: height/2, rotation: 0)

		// the entity must be added to the engine
		try? engine.add(entity: ship)
	}


	func start() {
		tickProvider = FrameTickProvider()

		// listen for ticks, the engine's update() method will be called whenever there's a tick
		tickProvider.add(Listener(engine.update))

		tickProvider.start()
	}
}
