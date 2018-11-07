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
    var operatorFlag = 0
    @IBOutlet var result: UITextField!
    
    @IBAction func button0(_ sender: Any) {
        result.text = result.text! + "0"
    }
    @IBAction func button1(_ sender: Any) {
        result.text = result.text! + "1"
    }
    
    @IBAction func button2(_ sender: Any) {
        result.text = result.text! + "2"
    }
    
    @IBAction func button3(_ sender: Any) {
        result.text = result.text! + "3"
    }
    
    @IBAction func button4(_ sender: Any) {
        result.text = result.text! + "4"
    }
    
    @IBAction func button5(_ sender: Any) {
        result.text = result.text! + "5"
    }
    
    @IBAction func button6(_ sender: Any) {
        result.text = result.text! + "6"
    }
    
    @IBAction func button7(_ sender: Any) {
        result.text = result.text! + "7"
    }
    
    @IBAction func button8(_ sender: Any) {
        result.text = result.text! + "8"
    }
    
    @IBAction func button9(_ sender: Any) {
        result.text = result.text! + "9"
    }
    
    @IBAction func buttonPoint(_ sender: Any) {
        result.text = result.text! + "."
    }
    
    @IBAction func buttonadd(_ sender: Any) {
        operatorFlag = 1
        temp = Double(result.text!)!
        result.text = ""
    }
    
    @IBAction func buttonSub(_ sender: Any) {
        operatorFlag = 2
        temp = Double(result.text!)!
        result.text = ""
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        operatorFlag = 3
        temp = Double(result.text!)!
        result.text = ""
    }
    
    @IBAction func buttonDevide(_ sender: Any) {
        operatorFlag = 4
        temp = Double(result.text!)!
        result.text = ""
    }
    
    @IBAction func buttonResult(_ sender: Any) {
        if operatorFlag == 1
        {
            temp = temp + Double(result.text!)!
            result.text = "\(temp)"
        }
        if operatorFlag == 2{
            temp = temp - Double(result.text!)!
            result.text = "\(temp)"
        }
        if operatorFlag == 3{
            temp = temp * Double(result.text!)!
            result.text = "\(temp)"
        }
        if operatorFlag == 4{
            temp = temp / Double(result.text!)!
            result.text = "\(temp)"
        }
    }
    
    @IBAction func buttonAC(_ sender: Any) {
        result.text = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }


}
