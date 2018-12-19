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
    var sign = 0
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
    
    @IBAction func buttonPercentage(_ sender: Any) {
        sign=20
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
    
    class Stack {
        
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
    
    
    /*@IBAction func buttonAC(_ sender: Any) {
        show.text = ""
    }
    
    // MARK: - 实现一个基本的Stack类型
    public struct Stack<T> {
        
        // 声明一个泛型数组，用于存储栈里面的元素
        fileprivate var elements = [T]()
        
        
        
        /// 计算属性：获取栈中元素的个数
        public var count: Int {
            
            // 返回数组elements中的元素个数
            return elements.count
        }
        
        
        
        /// 构造函数：创建一个空的栈
        public init() {}
        
        
        
        /// 出栈操作：删除并返回栈顶元素
        /// - returns:
        /// - 如果栈不为空，则返回第一个类型为T的元素
        /// - 如果栈为空，则返回nil
        mutating public func pop() -> T? {
            
            // 删除数组中的最后一个元素
            return elements.popLast()
        }
        
        
        
        /// 入栈操作：将元素压入栈顶
        /// - 复杂度: O(1)
        /// - 参数element: 一个类型为T的元素
        public mutating func push(_ element: T){
            
            // 将元素添加到数组中
            elements.append(element)
        }
        
        
        
        /// 返回栈顶元素(不删除)
        /// - returns:
        /// - 如果栈不为空，则返回第一个类型为T的元素
        /// - 如果栈为空，则返回nil
        public func peek() -> T? {
            
            // 返回数组最后一个元素
            return elements.last
        }
        
        
        
        /// 检查栈是否为空
        /// - returns: 如果栈为空，则返回True，否则返回False
        public func isEmpty() -> Bool {
            
            // 判断数组是否为空
            return elements.isEmpty
        }
        
    }
    
    
    
    // MARK: - 打印栈及其类型时，输出简洁漂亮的格式
    extension Stack: CustomStringConvertible, CustomDebugStringConvertible {
        
        
        /// 在打印栈及其元素时，输出简洁漂亮的格式
        /// 如果不实现这些代码，打印栈的结果为：ArrayStack<Int>(elements: [5, 44, 23])
        /// 实现下面这些代码之后，打印栈的结果为：[5, 44, 23]
        /// - returns: 返回栈及其元素的文本表示
        public var description: String {
            return elements.description
        }
        
        /// 打印时输出简洁漂亮的格式，主要用于调试
        /// - returns: 返回栈及其元素的文本表示，适用于调试
        public var debugDescription: String {
            return elements.debugDescription
        }
        
    }
    
    
    
    // MARK: - 以现有栈实例为基础，创建新的栈实例
    extension Stack {
        
        /// 使用现有栈实例作为副本创建一个新的栈实例
        /// 这是一个泛型构造函数，其中占位类型S必须是符合Sequence协议的；
        /// 另外，where关键字限制了这个构造函数只对元素类型是T类型的序列有效；
        /// 最后，这个构造函数主要是用来实现在已经存在的栈实例的基础上创建一个实例：
        ///     // var myStack = [1, 2, 3]
        ///     // var anotherStack = Stack(myStack)
        ///
        /// 说明：只有实现了这个构造函数，后面才能实现字面量构造函数
        public init<S : Sequence>(_ s: S) where S.Iterator.Element == T {
            
            // 使用现有的数组副本创建一个新的数组
            // 调用reversed()函数，返回一个包含相同元素，但是顺序相反的新数组；
            // 因为栈是先入后出的数据结构，参数s调用reversed()函数，可以确保基于
            // 现有栈实例创建出来的新实例，可以以同样的次数输出元素。如果参数s不调用
            // reverse()函数，那么新创建出来的栈实例，其内部元素顺序则是反的：
            //  - 比如说，原有栈实例是这样的：var myStack = [1, 2, 3]
            //  - 如果将myStack作为参数来创建新的栈实例：var anotherStack = Stack(myStack)
            //  - 那么，anotherStack的顺序将是这样的：[3, 2, 1]
            self.elements = Array(s.reversed())
        }
    }
    
    
    
    // MARK: - 实现栈的字面量语法
    extension Stack: ExpressibleByArrayLiteral {
        
        /// 实现用字面量语法初始化一个栈
        /// 比如说，你可能希望像用字面量语法创建数组一样创建Stack实例：
        ///     // var myStack: Stack = [4, 5, 6, 7]
        /// - 参数elements：它是一个变长参数，类型为T
        public init(arrayLiteral elements: T...) {
            self.init(elements)
        }
    }
    
    
    
    /********** 下面的代码是给栈添加for...in语法支持，有改进的余地 **********/
    
    
    // MARK: - 定义一个ArrayIterator结构体
    public struct ArrayIterator<T> : IteratorProtocol {
        
        // 临时数组
        var currentElement: [T]
        
        /// 构造函数：创建一个[T]类型的数组
        /// - 参数elements：一个[T]类型的数组
        init(elements: [T]){
            currentElement = elements
        }
        
        /// 负责返回序列中的下一个元素
        /// - returns:
        /// - 如果数组不为空，则删除并返回最后一个元素
        /// - 如果数组为空，则返回nil
        mutating public func next() -> T? {
            
            if (!currentElement.isEmpty) {
                return currentElement.popLast()
            }
            
            return nil
        }
    }
    
    
    // MARK: - 给栈添加for..in语法支持
    extension Stack: Sequence {
        
        /// 用于初始化for...in循环迭代器
        /// - returns：返回一个ArrayIterator类型的实例
        public func makeIterator() -> ArrayIterator<T> {
            return ArrayIterator<T>(elements: elements)
        }
    }*/
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
}
