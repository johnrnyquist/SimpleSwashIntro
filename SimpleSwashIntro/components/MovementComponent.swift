//
//  MovementComponent.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import Foundation
import Swash


class MovementComponent: Component {

    var velocity = CGPoint()
	

    init(velocityX: Double, velocityY: Double) {
        velocity = CGPoint(x: velocityX, y: velocityY)
    }
}
