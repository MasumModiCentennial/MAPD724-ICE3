//
//  Ocean.swift
//  MAPD724-ICE3
//
//  Created by Masum Modi on 2021-02-24.
//  Copyright © 2021 Centennial College. All rights reserved.
//


import SpriteKit
import GameplayKit

class Ocean: GameObject {
    
    //Constructor
    init() {
        super.init(imageString: "ocean", initialScale: 2.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //LifeCycle functions
    override func checkBounds() {
        if position.y <= -773 {
            reset()
        }
    }
    
    override func reset() {
        position.y = 773
    }
    
    //Initialization
    override func start() {
        zPosition = 0
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
