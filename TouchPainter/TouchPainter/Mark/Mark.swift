//
//  Mark.swift
//  TouchPainter
//
//  Created by liwenxue on 2021/7/21.
//

import UIKit

/// swift原生不支持optional，所有声明的方法都必须实现，否则会报编译错误
/// 第一种方式：使用@objc optional修饰protocol，并使用@objc optional修饰可选实现的方法和属性。缺点是只支持class类型遵循协议，struct、enum都不允许，这是因为和runtime有关
/// 第二种方式：使用extension提供默认实现，缺点是
public protocol Mark {
    /// 颜色
    var color: UIColor { get }
    /// 大小
    var size: CGFloat { get }
    /// 位置
    var location: CGPoint { get }
    
    /// 个数
    func count() -> Int
    /// 最后一个元素
    func lastChild() -> Mark?
    
    /// 绘制
    func drawWithContext(context: CGContext)
}

extension Mark {
    var color: UIColor {
        return .black
    }

    var size: CGFloat {
        return 0
    }

    var location: CGPoint {
        return CGPoint(x: 0, y: 0)
    }
    
    func count() -> Int {
        return 0
    }
    
    func lastChild() -> Mark? {
        return nil
    }
}
