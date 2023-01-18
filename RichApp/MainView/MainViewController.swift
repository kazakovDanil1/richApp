//
//  ViewController.swift
//  RichApp
//
//  Created by Kazakov Danil on 18.01.2023.
//

import UIKit

class MainViewController: UIViewController {

    let contentView = MainView()
    
    override func loadView() {
        self.view = contentView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        contentView.mainLabel.text = "i'm rich!"
    }

}

