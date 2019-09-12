//
//  ViewController.swift
//  Calculator
//
//  Created by Htin Lynn on 9/10/19.
//  Copyright © 2019 Htin Lynn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayText: UITextField!
    
    let brain:Calculate = Calculate()
    
    let operatorSign = ["+","-","*","/","="]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonOnClick(sender: UIButton) {
        guard let input = sender.titleLabel?.text else {
            return
        }
        if operatorSign.firstIndex(of: input) != nil {
            if input != "=" {
                brain.var1 = Int(self.displayText.text!)!
                self.displayText.text = ""
                brain.sign = input
            } else {
                brain.var2 = Int(self.displayText.text!)!
                self.displayText.text = String(brain.calculate())
            }
        } else {
            self.displayText.text = String(self.displayText.text!) + String(input)
        }
    }
    
    @IBAction func clear() {
        self.displayText.text = ""
        brain.var1 = 0
        brain.var2 = 0
    }


}


