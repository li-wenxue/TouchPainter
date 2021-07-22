//
//  Stroke.swift
//  TouchPainter
//
//  Created by liwenxue on 2021/7/21.
//

import UIKit

class Stroke: Mark {
    var color: UIColor = .black
    var size: CGFloat = 0.0
    var location: CGPoint = .zero
    
    var children: [Mark]?
    
    func drawWithContext(context: CGContext) {
        guard let children = self.children else {
            return
        }
        context.move(to: location)
        for mark in children {
            mark.drawWithContext(context: context)
        }
        context.setLineWidth(size)
        context.setLineCap(.round)
        context.setStrokeColor(color.cgColor)
        context.strokePath()
    }
}
