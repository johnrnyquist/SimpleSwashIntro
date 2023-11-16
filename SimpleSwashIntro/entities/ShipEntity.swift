//
//  ShipEntity.swift
//  BasicAshProject
//
//  Created by John Nyquist on 11/15/23.
//

import Foundation
import Swash
import SpriteKit

class ShipEntity: Entity {
	private static var shipCount = 0

	init(x: CGFloat, y: CGFloat, rotation: CGFloat) {
		Self.shipCount += 1
		super.init(name: "ship\(Self.shipCount)")
		self
			.add(component: PositionComponent(x: x, y: y, rotation: rotation))
			.add(component: RenderableComonent(displayObject: SKSpriteNode(imageNamed: "ship")))
	}
}
