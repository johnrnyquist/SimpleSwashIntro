//
//  DisplayComponent.swift
//  BasicAshProject
//
//  Created by John Nyquist on 11/15/23.
//

import Foundation
import Swash
import SpriteKit

class RenderableComonent: Component {
	var displayObject: SKNode?

	init(displayObject: SKNode) {
		self.displayObject = displayObject
	}
}
