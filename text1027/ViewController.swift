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
    var temp1:Double = 0
    var operatorFlag = 0
    

    @IBOutlet var show: UITextField!
    
    @IBAction func button0(_ sender: Any) {
        show.text = show.text! + "0"
    }
    @IBAction func button1(_ sender: Any) {
        show.text = show.text! + "1"
    }
    
    @IBAction func button2(_ sender: Any) {
        show.text = show.text! + "2"
    }
    
    @IBAction func button3(_ sender: Any) {
        show.text = show.text! + "3"
    }
    
    @IBAction func button4(_ sender: Any) {
        show.text = show.text! + "4"
    }
    
    @IBAction func button5(_ sender: Any) {
        show.text = show.text! + "5"
    }
    
    @IBAction func button6(_ sender: Any) {
        show.text = show.text! + "6"
    }
    
    @IBAction func button7(_ sender: Any) {
        show.text = show.text! + "7"
    }
    
    @IBAction func button8(_ sender: Any) {
        show.text = show.text! + "8"
    }
    
    @IBAction func button9(_ sender: Any) {
        show.text = show.text! + "9"
    }
    
    @IBAction func buttonPercentage(_ sender: Any){
        show.text = show.text! + "%"
    }
    @IBAction func buttonPoint(_ sender: Any) {
        show.text = show.text! + "."
    }
    
    @IBAction func buttonadd(_ sender: Any) {
        operatorFlag = 1
        temp = temp + Double(show.text!)!
        show.text = ""
        
    }
    
    @IBAction func buttonSub(_ sender: Any) {
        operatorFlag = 2
        if(temp==0){
            temp1 = Double(show.text!)!
            temp = 1
        }
        else{
        temp1 = temp1 - Double(show.text!)!
        }
        show.text = ""
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        operatorFlag = 3
        if(temp==0){
            temp1 = Double(show.text!)!
            temp = 1
        }
        else{
            temp1 = temp1 * Double(show.text!)!
        }
        show.text = ""
  /*      temp1 = temp1 * Double(show.text!)!
        show.text = ""*/

    }
    
    @IBAction func buttonDevide(_ sender: Any) {
        operatorFlag = 4
        if(temp==0){
            temp1 = Double(show.text!)!
            temp = 1
        }
        else{
            temp1 =  temp1 / Double(show.text!)!
        }
        
        show.text = ""
    }
    
    @IBAction func buttonshow(_ sender: Any) {
        if operatorFlag == 1
        {
            temp = temp + Double(show.text!)!
            show.text = "\(temp)"
        }
        if operatorFlag == 2{
            temp1 = temp1 - Double(show.text!)!
            show.text = "\(temp1)"
            temp1 = 0
            
        }
        if operatorFlag == 3{
            temp1=temp1*Double(show.text!)!
            show.text = "\(temp1)"
            temp1 = 1
            
        }
        if operatorFlag == 4{
            temp = temp1 / Double(show.text!)!
            show.text = "\(temp)"
            temp1 = 1
            temp = 0
            
        }
        
    }
    
    @IBAction func buttonAC(_ sender: Any) {
        show.text = ""
        temp=0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}
