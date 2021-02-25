//
//  CollisionManager.swift
//  MAPD724-ICE3
//
//  Created by Masum Modi on 2021-02-24.
//  Copyright © 2021 Centennial College. All rights reserved.
//

import SpriteKit
import GameplayKit

class CollisionManager {
    
    public static func squareDistance(point1: CGPoint, point2: CGPoint) -> CGFloat {
        let xs: CGFloat = point2.x - point1.x
        let ys: CGFloat = point2.y - point1.y
        return xs * xs + ys * ys
    }
    
    public static func squareRadiusCheck(obj1: GameObject, obj2: GameObject) -> Void {
        let p1 = obj1.position
        let p2 = obj2.position
        let p1HalfHeight = obj1.halfHeight!
        let p2HalfHeight = obj2.halfHeight!
        let halfHeights = p1HalfHeight + p2HalfHeight
        
        if squareDistance(point1: p1, point2: p2) < halfHeights*halfHeights {
            if !obj2.isColliding! {
                switch obj2.name {
                case "island":
                    print("Collision with island")
                    break
                case "cloud":
                    print("Collision with cloud")
                    break
                default:
                    break
                }
                obj2.isColliding = true
            }
        }
    }
    
}
