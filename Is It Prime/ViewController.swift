//
//  ViewController.swift
//  Is It Prime
//
//  Created by Alper on 5/29/16.
//  Copyright © 2016 Alper. All rights reserved.
//

import UIKit
// FIXME: comparison operators with optionals were removed from the Swift Standard Libary.
// Consider refactoring the code to use the non-optional operators.
fileprivate func < <T : Comparable>(lhs: T?, rhs: T?) -> Bool {
  switch (lhs, rhs) {
  case let (l?, r?):
    return l < r
  case (nil, _?):
    return true
  default:
    return false
  }
}


class ViewController: UIViewController {

    @IBOutlet weak var enteredNumber: UITextField!
    
    @IBOutlet weak var result: UILabel!
    
    @IBAction func isItPrime(_ sender: AnyObject) {
        
        let number = Int(enteredNumber.text!)
        
        let unwrappedNumber = number!
        
        if number == nil{
            
            result.text = "Please enter a number!"
            
        }
        else{
            
            var isPrime = true
            
            if (unwrappedNumber == 1 || unwrappedNumber == 0){
                
                isPrime = false
            }
            
            
            if ( unwrappedNumber != 2 && unwrappedNumber != 1){
                
                for i in stride(from: 2, to: 10, by: 1){
                    
                    if unwrappedNumber % i == 0{
                        
                        isPrime = false
                        
                    }
                }
            }
            
            
            if isPrime == true {
                
                result.text = "\(unwrappedNumber) is a prime number!"
            }
            else{
                result.text = "\(unwrappedNumber) is not a prime number!"
            }
            
        }
        
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

