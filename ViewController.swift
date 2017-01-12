//
//  ViewController.swift
//  FoodMonitor
//
//  Created by Developer on 28/12/2016.
//  Copyright © 2016 nicolas.faqir. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var datePeremp: UIDatePicker!
    @IBOutlet weak var dateDisp: UILabel!
    

    var storage: Storage?

    var formIsValide: Bool {
        guard nameTextField.text != nil else {
            return false
        }
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM YYYY"
        dateDisp.text = formatter.string(from: datePeremp.date)
    }

 

    @IBAction func createAliment(_ sender: UIButton) {

        guard formIsValide else {
            return
        }

        let alim = Aliment(name: nameTextField.text!, datePeremp: dateDisp.text!)
        storage!.add(alim)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func pickerValueChange(_ sender: AnyObject) {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd MMMM YYYY"
        dateDisp.text = formatter.string(from: datePeremp.date)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

