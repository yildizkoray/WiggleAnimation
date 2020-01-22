//
//  CGFloat+Extensions.swift
//  WiggleAnimation
//
//  Created by Koray Yildiz on 22.01.2020.
//  Copyright © 2020 Koray Yildiz. All rights reserved.
//

import CoreGraphics

public extension CGFloat {

  var radian: CGFloat {
    return self * .pi / 180.0
  }
}
