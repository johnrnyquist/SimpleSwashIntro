//
//  GameViewController.swift
//  SimpleSwashIntro
//
//  Created by John Nyquist on 11/15/23.
//

import UIKit
import SpriteKit


class GameViewController: UIViewController {
	
	override func viewDidLoad() {
		super.viewDidLoad()
		let skview = SKView(frame: CGRect(x: 0, y: 0, width: 1024, height: 768))
		view = skview
		view.isUserInteractionEnabled = true

		let scene = GameScene(size: view.frame.size)
		scene.scaleMode = .aspectFit
		skview.isUserInteractionEnabled = true
		skview.isMultipleTouchEnabled = true
		skview.presentScene(scene)
	}
}
