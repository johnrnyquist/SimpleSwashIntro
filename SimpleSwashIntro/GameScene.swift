//
//  GameScene.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import SpriteKit
import Swash


class GameScene: SKScene {

	var game: IntroToSwash!
	var ship: Entity?


	override func didMove(to view: SKView) {
		super.didMove(to: view)
		game = IntroToSwash(container: self, width: frame.width, height: frame.height)
		game.start()
	}


	override func update(_ currentTime: TimeInterval) {
		game.tickProvider.dispatchTick()
	}


	func touchDown(atPoint pos: CGPoint, touch: UITouch) {
		let entity = ShipEntity(x: pos.x, y: pos.y, rotation: CGFloat.random(in: 0...360))
		try? game.engine.add(entity: entity)
	}


	override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
		super.touchesBegan(touches, with: event)
		for t in touches {
			touchDown(atPoint: t.location(in: self), touch: t)
		}
	}

	
	override var isUserInteractionEnabled: Bool {
		get { true }
		set {}
	}
}


