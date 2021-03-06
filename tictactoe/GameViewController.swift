//
//  GameViewController.swift
//  tictactoe
//
//  Created by Ben on 12/30/17.
//  Copyright © 2017 Ben. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    var activePlayer = 1
    
    @IBAction func action(_ sender: UIButton) {
    
        if (activePlayer == 1) {
            sender.setImage(UIImage(named: "letterX.jpg"), for: UIControlState())
            activePlayer = 0
        }
        else
        {
            sender.setImage(UIImage(named: "letterO.jpg"), for: UIControlState())
            activePlayer = 1
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
