//
//  ViewController.swift
//  ViewCodeTrainning
//
//  Created by thiago.lioy on 4/25/18.
//  Copyright © 2018 thiago.lioy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    private let screen = ViewControllerScreen()
    
    override func loadView() {
        self.view = screen
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

  override var prefersStatusBarHidden: Bool {
    return true
  }
}
