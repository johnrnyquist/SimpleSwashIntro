//
//  MovementSystem.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import Foundation
import Swash


class MovementSystem: ListIteratingSystem {

	var config = (width: 1024.0, height: 768.0)


	init() {
		// here we define the type of nodes we'll iterate on, the MovementNode
		super.init(nodeClass: MovementNode.self)

		// this is the function we'll user to iterate on
		nodeUpdateFunction = updateNode
	}


	private func updateNode(node: Node, time: TimeInterval) {

		guard let position = node[PositionComponent.self],
			  let motion = node[MovementComponent.self]
		else { return }

		// update location
		position.position.x += motion.velocity.x * time
		position.position.y += motion.velocity.y * time

		// check bounds and wrap
		if (position.position.x < 0) {
			position.position.x += config.width
		}
		if (position.position.x > config.width) {
			position.position.x -= config.width
		}
		if (position.position.y < 0) {
			position.position.y += config.height
		}
		if (position.position.y > config.height) {
			position.position.y -= config.height
		}
	}
}
