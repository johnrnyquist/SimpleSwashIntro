//
//  PositionComponent.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import Foundation
import Swash


class PositionComponent: Component {

	var position: CGPoint
	var rotation: Double


	init(x: Double, y: Double, rotation: Double) {
		position = CGPoint(x: x, y: y)
		self.rotation = rotation
	}
}
