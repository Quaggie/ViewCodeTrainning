//
//  CodeView.swift
//  ViewCodeTrainning
//
//  Created by jonathan.p.bijos on 30/08/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

protocol CodeView {
  func buildViewHierarchy()
  func setupConstraints()
  func setupAdditionalConfiguration()
  func setupView()
}

extension CodeView {
  func setupView() {
    buildViewHierarchy()
    setupConstraints()
    setupAdditionalConfiguration()
  }

  func setupAdditionalConfiguration() {}
}
