//
//  FirstScreen.swift
//  warcraft-mac
//
//  Created by JT on 2020/1/13.
//  Copyright © 2020 JT. All rights reserved.
//

import SpriteKit
import GameplayKit

class LaunchScene: SKScene {
    // global variables
    let bnwImageTexture = SKTexture(); let bnwImage = SKSpriteNode()
    let clrImageTexture = SKTexture(); let clrImage = SKSpriteNode()
    
    // core function. Get called when program compile
    override func didMove(to view: SKView) {
        // set background to black
        backgroundColor = SKColor.black
        
        // add images to screen
        createColorImage()
        createBAndWImage()
    }
    
    func createBAndWImage() {
        let bnwImageTexture = SKTexture(imageNamed: "LaunchScreen/0")
        let bnwImage = SKSpriteNode(texture: bnwImageTexture)
        bnwImage.name = "Black and White Launch Image"
        bnwImage.position = CGPoint(x: frame.midX, y: frame.midY)
        bnwImage.size = CGSize(width: 1024, height: 768)
        bnwImage.zRotation = 0.0
        bnwImage.zPosition = 1.0
        
        let fadeout = SKAction.fadeOut(withDuration: 5.0)
        bnwImage.run(fadeout)
        
        addChild(bnwImage)
    }
    
    func createColorImage() {
        let clrImageTexture = SKTexture(imageNamed: "LaunchScreen/1")
        let clrImage = SKSpriteNode(texture: clrImageTexture)
        clrImage.name = "Colored Launch Image"
        clrImage.position = CGPoint(x: frame.midX, y: frame.midY)
        clrImage.size = CGSize(width: 1024, height: 768)
        clrImage.zRotation = 0.0
        clrImage.zPosition = 0.0
        addChild(clrImage)
    }
}

