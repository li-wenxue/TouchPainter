//
//  Vertex.swift
//  TouchPainter
//
//  Created by liwenxue on 2021/7/21.
//

import UIKit

class Vertex: Mark {
    func drawWithContext(context: CGContext) {
        context.addLine(to: location)
    }
}
