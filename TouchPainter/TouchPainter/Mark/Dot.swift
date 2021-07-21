//
//  Dot.swift
//  TouchPainter
//
//  Created by liwenxue on 2021/7/21.
//

import UIKit

class Dot: Vertex {
    func drawWithContext(context: CGContext) {
        let x = location.x
        let y = location.y
        let frame = CGRect(x: x, y: y, width: x - size / 2.0, height: y - size / 2.0)
        context.setFillColor(color.cgColor)
        context.fill(frame)
    }
}
