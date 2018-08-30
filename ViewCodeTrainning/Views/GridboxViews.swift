//
//  GridboxViews.swift
//  ViewCodeTrainning
//
//  Created by jonathan.p.bijos on 30/08/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit.UIView

final class GridboxViews: UIView {
  let gridbox1 = GridboxView()
  let gridbox2 = GridboxView()

  init() {
    super.init(frame: .zero)
    setupView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension GridboxViews: CodeView {
  func buildViewHierarchy() {
    addSubview(gridbox1)
    addSubview(gridbox2)
  }

  func setupConstraints() {
    gridbox1.anchor(top: topAnchor,
                    leading: leadingAnchor,
                    bottom: bottomAnchor,
                    trailing: gridbox2.leadingAnchor,
                    insets: .init(top: 0, left: 0, bottom: 0, right: 8))
    gridbox1.anchor(widthAnchor: gridbox2.widthAnchor)

    gridbox2.anchor(top: topAnchor, bottom: bottomAnchor, trailing: trailingAnchor)
  }

  func setupAdditionalConfiguration() {

  }
}
