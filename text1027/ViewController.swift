//
//  ViewController.swift
//  text1027
//
//  Created by s20171103184 on 2018/10/27.
//  Copyright © 2018 s20171103184. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var temp:Double = 0
    
   
    @IBOutlet var result: UITextField!
    
    @IBAction func button1(_ sender: Any) {
        result.text = result.text! + "1"
    }
    
    @IBAction func button2(_ sender: Any) {
        result.text = result.text! + "2"
    }
    
    @IBAction func button3(_ sender: Any) {
        result.text = result.text! + "3"
    }
    
    
    @IBAction func buttonadd(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
    }
    
    @IBAction func buttonResult(_ sender: Any) {
        temp = temp + Double(result.text!)!
        result.text = "\(temp)"
    }
    
    
    @IBAction func buttonSub(_ sender: Any) {
        temp = Double(result.text!)!
        result.text = ""
    }
    
    @IBAction func buttonAC(_ sender: Any) {
        result.text = ""
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

