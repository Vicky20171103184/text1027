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
        temp = Double(show.text!)!
        show.text = ""
    }
    
    @IBAction func buttonSub(_ sender: Any) {
        operatorFlag = 2
        temp = Double(show.text!)!
        show.text = ""
    }
    
    @IBAction func buttonMultiply(_ sender: Any) {
        operatorFlag = 3
        temp = Double(show.text!)!
        show.text = ""
    }
    
    @IBAction func buttonDevide(_ sender: Any) {
        operatorFlag = 4
        temp = Double(show.text!)!
        show.text = ""
    }
    
    @IBAction func buttondel(_ sender: Any) {
    }
    @IBAction func buttonshow(_ sender: Any) {
        if operatorFlag == 1
        {
            temp = temp + Double(show.text!)!
            show.text = "\(temp)"
        }
        if operatorFlag == 2{
            temp = temp - Double(show.text!)!
            show.text = "\(temp)"
            
        }
        if operatorFlag == 3{
            temp = temp * Double(show.text!)!
            show.text = "\(temp)"
            
        }
        if operatorFlag == 4{
            temp = temp / Double(show.text!)!
            show.text = "\(temp)"
            
        }
    }
    
    @IBAction func buttonAC(_ sender: Any) {
        show.text = ""
        temp=0
    }
    /*  class Stack {
        
        var stack: [AnyObject]
        
        init() {
            
            stack = [AnyObject]()
            
        }
        
        func push(object: AnyObject) {
            
            stack.append(object)
            
        }
        
        func pop() -> AnyObject? {
            
            if !isEmpty() {
                
                return stack.removeLast()
                
            } else {
                
                return nil
                
            }
            
        }
        
        func isEmpty() -> Bool {
            
            return stack.isEmpty
            
        }
        
        func peek() -> AnyObject? {
            
            return stack.last
            
        }
        
        func size() -> Int {
            
            return stack.count
            
        }
        
}
    
    
  */
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}
