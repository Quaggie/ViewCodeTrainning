//
//  ViewControllerScreen.swift
//  ViewCodeTrainning
//
//  Created by thiago.lioy on 4/25/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

final class ViewControllerScreen: UIView {
  private let topView = TopView()
  private let gridboxViews = GridboxViews()
  private let button = FetchButton(title: "Fetch")

  init() {
     super.init(frame: .zero)
     setupView()
  }

  required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
  }
    
}

extension ViewControllerScreen: CodeView {
    func buildViewHierarchy() {
      addSubview(topView)
      addSubview(gridboxViews)
      addSubview(button)
    }
    
    func setupConstraints() {
      topView.anchor(top: safeAreaLayoutGuide.topAnchor,
                     leading: safeAreaLayoutGuide.leadingAnchor,
                     bottom: gridboxViews.topAnchor,
                     trailing: safeAreaLayoutGuide.trailingAnchor,
                     insets: .init(top: 102, left: 28, bottom: 50, right: 27))
      topView.anchor(height: 95)

      gridboxViews.anchor(leading: leadingAnchor,
                          trailing: trailingAnchor,
                          insets: .init(top: 0, left: 24, bottom: 0, right: 24))
      gridboxViews.anchor(height: 198)

      button.anchor(leading: safeAreaLayoutGuide.leadingAnchor,
                    bottom: safeAreaLayoutGuide.bottomAnchor,
                    trailing: safeAreaLayoutGuide.trailingAnchor,
                    insets: .init(top: 0, left: 24, bottom: 32, right: 24))
      button.anchor(height: 55)
    }
    
    func setupAdditionalConfiguration() {
      backgroundColor = .darkGray
    }
    
}
