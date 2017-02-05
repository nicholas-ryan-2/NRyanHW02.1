//
//  ViewController.swift
//  The $125 Million App
//
//  Created by Nick on 2/5/17.
//  Copyright © 2017 Nick Ryan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textInput: UITextField!
    @IBOutlet weak var conversionMessage: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton(_ sender: UIButton) {
        let miles = Double(textInput.text!)
        if let miles = miles {
            let km = miles * 1.6
            conversionMessage.text = "\(miles) miles is \(km) kilometers."
        } else {
            conversionMessage.text = "Error: \(miles!) is not a valid input."
        }
}
}
