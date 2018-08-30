//
//  TopRightView.swift
//  ViewCodeTrainning
//
//  Created by jonathan.p.bijos on 30/08/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit.UIView

final class TopRightView: UIView {
  private let orangeView = ColorView(color: .orange)
  private let lightGreenView = ColorView(color: .green)
  private let pinkView =  ColorView(color: .purple)
  private let lightBlueView = ColorView(color: .blue)

  init() {
    super.init(frame: .zero)
    setupView()
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension TopRightView: CodeView {
  func buildViewHierarchy() {
    addSubview(orangeView)
    addSubview(lightGreenView)
    addSubview(pinkView)
    addSubview(lightBlueView)
  }

  func setupConstraints() {
    orangeView.anchor(top: topAnchor,
                      leading: leadingAnchor,
                      bottom: lightGreenView.topAnchor,
                      trailing: trailingAnchor,
                      insets: .init(top: 0, left: 0, bottom: 8, right: 0))
    orangeView.anchor(height: 23)

    lightGreenView.anchor(leading: leadingAnchor,
                          bottom: pinkView.topAnchor,
                          trailing: trailingAnchor,
                          insets: .init(top: 0, left: 0, bottom: 8, right: 0))
    lightGreenView.anchor(height: 21)

    pinkView.anchor(leading: leadingAnchor,
                    bottom: bottomAnchor,
                    trailing: lightBlueView.leadingAnchor,
                    insets: .init(top: 0, left: 0, bottom: 0, right: 10))
    pinkView.anchor(widthAnchor: lightBlueView.widthAnchor)

    lightBlueView.anchor(top: pinkView.topAnchor,
                         bottom: pinkView.bottomAnchor,
                         trailing: trailingAnchor)
  }

  func setupAdditionalConfiguration() {

  }
}
