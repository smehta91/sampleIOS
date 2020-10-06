//
//  ViewController.swift
//  FoodTracker
//
//  Created by Shrey Mehta on 30/09/20.
//  Copyright © 2020 Shrey Mehta. All rights reserved.
//

import UIKit
import React

class ViewController: UIViewController {
    //MARK: Properties
    @IBOutlet weak var SearchBox: UITextField!
    @IBOutlet weak var LabelText: UILabel!
    @IBOutlet weak var Button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: Actions
    @IBAction func onButtonClick(_ sender: Any) {
        LabelText.text = "Shrey Mehta"
    }
    
    @IBAction func portalButtonAction(_ sender: Any) {
        NSLog("Hello")
        let jsCodeLocation = URL(string: "http://localhost:8081/index.bundle?platform=ios")
        let mockData:NSDictionary = ["scores":
            [
                ["name":"Alex", "value":"42"],
                ["name":"Joel", "value":"10"]
            ]
        ]
        
        let rootView = RCTRootView(
            bundleURL: jsCodeLocation,
            moduleName: "RNHighScores",
            initialProperties: mockData as [NSObject : AnyObject],
            launchOptions: nil
        )
        let vc = UIViewController()
        vc.view = rootView
        self.present(vc, animated: true, completion: nil)
    }
}

