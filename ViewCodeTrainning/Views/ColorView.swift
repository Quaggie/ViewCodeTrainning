//
//  ColorView.swift
//  ViewCodeTrainning
//
//  Created by jonathan.p.bijos on 30/08/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit.UIView
import UIKit.UIColor

final class ColorView: UIView {
  init(color: UIColor) {
    super.init(frame: .zero)
    backgroundColor = color
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
