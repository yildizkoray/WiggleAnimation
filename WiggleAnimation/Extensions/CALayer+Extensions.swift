//
//  CALayer+Extensions.swift
//  WiggleAnimation
//
//  Created by Koray Yildiz on 22.01.2020.
//  Copyright © 2020 Koray Yildiz. All rights reserved.
//

import UIKit

public extension CALayer {

  func setAnchorPoint(_ point: CGPoint) {
    var newPoint = CGPoint(x: bounds.size.width * point.x, y: bounds.size.height * point.y)
    var oldPoint = CGPoint(x: bounds.size.width * anchorPoint.x, y: bounds.size.height * anchorPoint.y)

    newPoint = newPoint.applying(CATransform3DGetAffineTransform(transform))
    oldPoint = oldPoint.applying(CATransform3DGetAffineTransform(transform))

    var currentPosition = position

    currentPosition.x -= oldPoint.x
    currentPosition.x += newPoint.x

    currentPosition.y -= oldPoint.y
    currentPosition.y += newPoint.y

    position = currentPosition
    anchorPoint = point
  }
}
