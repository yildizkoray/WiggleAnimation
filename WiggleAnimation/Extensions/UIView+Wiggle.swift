//
//  UIView+Wiggle.swift
//  WiggleAnimation
//
//  Created by Koray Yildiz on 22.01.2020.
//  Copyright © 2020 Koray Yildiz. All rights reserved.
//

import UIKit

public extension UIView {

  func wiggle(angle: CGFloat, duration: CFTimeInterval, repeatCount: Float) {
    layer.removeAnimation(forKey: "wiggleAnimation")
    layer.setAnchorPoint(CGPoint(x: 0.5, y: 0))

    CATransaction.begin()
    CATransaction.setCompletionBlock {
      self.layer.setAnchorPoint(CGPoint(x: 0.5, y: 0.5))
    }

    let animation = CAKeyframeAnimation(keyPath: "transform.rotation.z")
    animation.values = [0, -angle.radian, 0, angle.radian, 0]
    animation.duration = duration
    animation.repeatCount = repeatCount
    animation.calculationMode = .cubicPaced

    layer.add(animation, forKey: "wiggleAnimation")
    CATransaction.commit()
  }
}
