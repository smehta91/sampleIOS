//
//  ViewController.swift
//  FoodTracker
//
//  Created by Shrey Mehta on 30/09/20.
//  Copyright © 2020 Shrey Mehta. All rights reserved.
//

import UIKit

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
    
}

