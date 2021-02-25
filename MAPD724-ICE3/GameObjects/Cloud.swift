//
//  Cloud.swift
//  MAPD724-ICE3
//
//  Created by Masum Modi on 2021-02-24.
//  Copyright © 2021 Centennial College. All rights reserved.
//


import SpriteKit
import GameplayKit

class Cloud: GameObject {
    
    //Constructor
    init() {
        super.init(imageString: "cloud", initialScale: 1.0)
        start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    //LifeCycle functions
    override func checkBounds() {
        if position.y <= -760 {
            reset()
        }
    }
    
    override func reset() {
        dy = CGFloat(Int.random(in: 3...5))
        dx = CGFloat(Int.random(in: -2...2))
        position.y = 760
        position.x = CGFloat(Int.random(in: -250...250))
        isColliding = false
    }
    
    //Initialization
    override func start() {
        zPosition = 3
        alpha = 0.5
        reset()
    }
    
    override func update() {
        move()
        checkBounds()
    }
    
    func move() {
        position.y -= dy!
        position.x -= dx!
    }
    
}
