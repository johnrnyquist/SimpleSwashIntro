//
//  MovementNode.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import Swash

class MovementNode: Node {
    required init() {
        super.init()
        components = [
            MovementComponent.name: nil_component,
            PositionComponent.name: nil_component,
        ]
    }
}
