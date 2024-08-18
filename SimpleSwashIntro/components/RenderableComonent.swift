//
//  DisplayComponent.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import Swash
import SpriteKit


class RenderableComonent: Component {
	
	var displayObject: SKNode?

	
	init(displayObject: SKNode) {
		self.displayObject = displayObject
	}
}
