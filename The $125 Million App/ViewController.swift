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

    func showAlert() {
        let alertController = UIAlertController(title: "Entry Error", message: "Please enter a valid number. Not an empty string, no commas, symbols, or non-numeric characters", preferredStyle: .alert)
        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: nil
        )
        alertController.addAction(defaultAction)
        present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func convertButton(_ sender: UIButton) {
        if let miles = Double(textInput.text!) {
            let km = miles * 1.6
            conversionMessage.text = "\(miles) miles is \(km) kilometers."
        } else {
            conversionMessage.text = ""
            //presenting an alert
            showAlert()
        }
}
}
