//
//  Pie.swift
//  Memorize
//
//  Created by 张毅成 on 2020/9/24.
//

import SwiftUI

struct Pie: Shape {
    var startAngle: Angle
    var endAngle: Angle
    
    func path(in rect: CGRect) -> Path {
        let center = CGPoint(x: rect.midX, y: rect.midY)
        
        var p = Path()
        p.move(to: center)
        
        return p
    }
}
