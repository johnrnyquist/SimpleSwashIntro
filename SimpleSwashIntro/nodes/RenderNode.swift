//
//  RenderNode.swift
//  BasicAshProject
//
//  Created by John Nyquist on 11/15/23.
//

import Foundation
import Swash

class RenderNode: Node {
	required init() {
		super.init()
		components = [
			RenderableComonent.name: nil_component,
			PositionComponent.name: nil_component,
		]
	}
}
