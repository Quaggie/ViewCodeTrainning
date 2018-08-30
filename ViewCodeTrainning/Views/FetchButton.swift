//
//  FetchButton.swift
//  ViewCodeTrainning
//
//  Created by jonathan.p.bijos on 30/08/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit.UIButton
import UIKit.UIFont

final class FetchButton: UIButton {
  init(title: String?) {
    super.init(frame: .zero)
    setTitle(title, for: .normal)
    setTitleColor(.white, for: .normal)
    backgroundColor = .red
    layer.cornerRadius = 5
    titleLabel?.font = UIFont.systemFont(ofSize: UIFont.labelFontSize, weight: UIFont.Weight.heavy)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
