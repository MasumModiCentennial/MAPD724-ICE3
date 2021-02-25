//
//  Plane.swift
//  MAPD724-ICE3
//
//  Created by Masum Modi on 2021-02-24.
//  Copyright © 2021 Centennial College. All rights reserved.
//

import SpriteKit
import GameplayKit


class Plane: GameObject {
    
    //Constructor
    init() {
        super.init(imageString: "plane", initialScale: 2.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //LifeCycle functions
    override func checkBounds() {
        // left boundary
        if position.x <= -310 {
            position.x = -310
        }
        
        // right boundary
        if position.x >= 310 {
            position.x = 310
        }
    }
    
    override func reset() {

    }
    
    //Initialization
    override func start() {
        zPosition = 2
    }
    
    override func update() {
        checkBounds()
    }
    
    func touchMove(newPos: CGPoint) {
        position = newPos
    }
    
}
