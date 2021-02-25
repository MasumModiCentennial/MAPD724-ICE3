//
//  Island.swift
//  MAPD724-ICE3
//
//  Created by Masum Modi on 2021-02-24.
//  Copyright © 2021 Centennial College. All rights reserved.
//

import SpriteKit
import GameplayKit

class Island: GameObject {
    
    //Constructor
    init() {
        super.init(imageString: "island", initialScale: 2.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //LifeCycle functions
    override func checkBounds() {
        if position.y <= -730 {
            reset()
        }
    }
    
    override func reset() {
        position.y = 730
        position.x = CGFloat(Int.random(in: -250...250))
        isColliding = false
    }
    
    //Initialization
    override func start() {
        zPosition = 1
        reset()
        dy = 5.0
    }
    
    override func update() {
        move()
        checkBounds()
    }
    
    func move() {
        position.y -= dy!
    }
    
}
