//
//  TopView.swift
//  ViewCodeTrainning
//
//  Created by jonathan.p.bijos on 30/08/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit.UIView

final class TopView: UIView {
  private let yellowView = ColorView(color: .yellow)
  private let topRightView = TopRightView()

  init() {
    super.init(frame: .zero)
    setupView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension TopView: CodeView {
  func buildViewHierarchy() {
    addSubview(yellowView)
    addSubview(topRightView)
  }

  func setupConstraints() {
    yellowView.anchor(top: topAnchor,
                      leading: leadingAnchor,
                      bottom: bottomAnchor,
                      trailing: topRightView.leadingAnchor,
                      insets: .init(top: 0, left: 0, bottom: 0, right: 12))
    yellowView.anchor(width: 104)

    topRightView.anchor(top: topAnchor,
                        bottom: bottomAnchor,
                        trailing: trailingAnchor)
  }

  func setupAdditionalConfiguration() {

  }
}
