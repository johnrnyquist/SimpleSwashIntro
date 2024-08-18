//
//  ShipEntity.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import Foundation
import Swash
import SpriteKit


class ShipEntity: Entity {

	private static var shipCount = 0


	init(x: CGFloat, y: CGFloat, rotation: CGFloat) {

		// create a position component
		let position = PositionComponent(x: x, y: y, rotation: rotation)

		// create a renderable component, it needs a sprite
		let sprite = SKSpriteNode(imageNamed: "ship")
		let renderable = RenderableComonent(displayObject: sprite)

		// create a movement component
		let cos = cos(position.rotation * Double.pi / 180)
		let sin = sin(position.rotation * Double.pi / 180)
		let speed = Double.random(in: 25...200)
		let movement = MovementComponent(velocityX: speed * cos, velocityY: speed * sin)

		// give the entity a unique name
		Self.shipCount += 1
		let name = "ship\(Self.shipCount)"
		super.init(named: name)

		// configure the entity
		self
			.add(component: position)
			.add(component: renderable)
			.add(component: movement)
	}
}
