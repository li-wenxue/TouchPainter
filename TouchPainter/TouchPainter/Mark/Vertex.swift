//
//  Vertex.swift
//  TouchPainter
//
//  Created by liwenxue on 2021/7/21.
//

import UIKit

class Vertex: Mark {
    var color: UIColor = .black
    var size: CGFloat = 0.0
    var location: CGPoint = .zero
    
    func drawWithContext(context: CGContext) {
        context.addLine(to: location)
    }
}
