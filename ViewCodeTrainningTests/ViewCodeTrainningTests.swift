//
//  ViewCodeTrainningTests.swift
//  ViewCodeTrainningTests
//
//  Created by thiago.lioy on 4/25/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import Quick
import Nimble
import Nimble_Snapshots
@testable import ViewCodeTrainning

class ViewCodeTrainningSpec: QuickSpec {
  override func spec() {
    describe("GridboxView") {
      it("Should have the expected look and feel", closure: {
        let frame = CGRect(x: 0, y: 0, width: 165, height: 198)
        let view = GridboxView()
        view.frame = frame
        expect(view) == snapshot("GridboxView")
      })
    }

    describe("GridboxViews") {
      it("Should have the expected look and feel", closure: {
        let frame = CGRect(x: 0, y: 0, width: 330, height: 198)
        let view = GridboxViews()
        view.frame = frame
        expect(view) == snapshot("GridboxViews")
      })
    }

    describe("TopRightView") {
      it("Should have the expected look and feel", closure: {
        let frame = CGRect(x: 0, y: 0, width: 140, height: 95)
        let view = TopRightView()
        view.frame = frame
        expect(view) == snapshot("TopRightView")
      })
    }

    describe("TopView") {
      it("Should have the expected look and feel", closure: {
        let frame = CGRect(x: 0, y: 0, width: 260, height: 95)
        let view = TopView()
        view.frame = frame
        expect(view) == snapshot("TopView")
      })
    }

    describe("FetchButton") {
      it("Should have the expected look and feel", closure: {
        let frame = CGRect(x: 0, y: 0, width: 280, height: 55)
        let view = FetchButton(title: "Fetch")
        view.frame = frame
        expect(view) == snapshot("FetchButton")
      })
    }

    describe("ViewController") {
      it("Should have the expected look and feel", closure: {
        let frame = CGRect(x: 0, y: 0, width: 375, height: 667)
        let viewController = ViewController()
        viewController.screen.frame = frame
        expect(viewController) == snapshot("ViewController")
      })
    }
  }
}
