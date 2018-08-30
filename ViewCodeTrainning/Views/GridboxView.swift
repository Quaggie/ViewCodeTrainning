//
//  GridboxView.swift
//  ViewCodeTrainning
//
//  Created by jonathan.p.bijos on 30/08/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit.UIView

final class GridboxView: UIView {
  private let greenView = ColorView(color: .green)
  private let orangeView = ColorView(color: .orange)
  private let redView = ColorView(color: .red)

  init() {
    super.init(frame: .zero)
    setupView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension GridboxView: CodeView {
  func buildViewHierarchy() {
    addSubview(greenView)
    addSubview(orangeView)
    addSubview(redView)
  }

  func setupConstraints() {
    greenView.anchor(top: topAnchor,
                     leading: leadingAnchor,
                     bottom: orangeView.topAnchor,
                     trailing: trailingAnchor,
                     insets: .init(top: 0, left: 0, bottom: 16, right: 0))

    orangeView.anchor(leading: leadingAnchor,
                      bottom: redView.topAnchor,
                      trailing: trailingAnchor,
                      insets: .init(top: 0, left: 0, bottom: 8, right: 0))
    orangeView.anchor(height: 18)

    redView.anchor(leading: leadingAnchor,
                   bottom: bottomAnchor,
                   trailing: trailingAnchor)
    redView.anchor(height: 18)
  }

  func setupAdditionalConfiguration() {

  }
}
