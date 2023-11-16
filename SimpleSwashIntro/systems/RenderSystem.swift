//
//  RenderSystem.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import Foundation
import Swash
import SpriteKit

class RenderSystem: System {

	private var scene: SKScene
	private var nodes: NodeList?


	init(container: SKScene) {
		scene = container
	}


	override func addToEngine(engine: Engine) {
		nodes = engine.getNodeList(nodeClassType: RenderNode.self)
		var node = nodes?.head
		while node != nil {
			addToDisplay(node!)
			node = node!.next
		}
		nodes?.nodeAdded.add(Listener(addToDisplay))
		nodes?.nodeRemoved.add(Listener(removeFromDisplay))
	}


	private func addToDisplay(_ node: Node) {
		guard
			let component = node[RenderableComonent.self],
			let sprite = component.displayObject
		else { return }
		scene.addChild(sprite)
	}


	private func removeFromDisplay(_ node: Node) {
		guard
			let component = node[RenderableComonent.self],
			let sprite = component.displayObject
		else { return }
		sprite.removeFromParent()
	}


	override func update(time: TimeInterval) {
		var renderNode = nodes?.head
		while renderNode != nil {
			let displayDisplayComponent = renderNode?[RenderableComonent.self]
			let sprite = displayDisplayComponent?.displayObject
			let positionComponent = renderNode?[PositionComponent.self]
			if let positionComponent = positionComponent {
				sprite?.position = positionComponent.position
				sprite?.zRotation = positionComponent.rotation * Double.pi / 180
			}
			renderNode = renderNode!.next
		}
	}
	

	override func removeFromEngine(engine: Engine) {
		nodes = nil
	}
}
