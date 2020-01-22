//
//  ViewController.swift
//  WiggleAnimation
//
//  Created by Koray Yildiz on 22.01.2020.
//  Copyright © 2020 Koray Yildiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet private weak var wiggledView: UIImageView!

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }

  @IBAction func wiggle(_ sender: Any) {
    wiggledView.wiggle(angle: 15, duration: 0.45, repeatCount: 3)
  }

}

