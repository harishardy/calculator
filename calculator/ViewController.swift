//
//  ViewController.swift
//  calculator
//
//  Created by Harish Hardy on 15/05/19.
//  Copyright © 2019 iosdev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    var a = 0
    
    var b = 0
    
    var c = ""
    
    var d = ""
    
    var operationTag : Int = 0
    
    var ans : Int = 0
    
    var tap = 0
    
    var touch1 = 0
    
    var touch2 = 0
    
    var touch3 = 0
    
    var touch4 = 0
    
    
    
    
    @IBOutlet weak var labelX1: UILabel!
    
    

    @IBAction func buttonX1(_ sender: Any) {
        
        tap = tap + 1
        
        if tap == 1
        {
            labelX1.text = String ((sender as AnyObject).tag)
            
            
        }
        
        else
        {
            labelX1.text = labelX1.text! + String ((sender as AnyObject).tag)
        }
    }
    
    
    
    @IBAction func buttonX2(_ sender: Any) {
        
        tap = 0
        
        
        operationTag = (sender as AnyObject).tag
        
        
        a = Int (labelX1.text!)!
        
        
        
        if (operationTag == 11)
        {
            touch2 = 0
            
            touch3 = 0
            
            touch4 = 0

            
            touch1 = touch1 + 1
            
            if touch1 == 1
            {
                labelX1.text = "\(a)"
                
                ans = a
            }
            
            else
            {
                ans = ans + a
                
                labelX1.text = "\(ans)"
            }
            
            
        }
        
        if (operationTag == 12)
        {
            touch1 = 0
            
            touch3 = 0
            
            touch4 = 0
            
            touch2 = touch2 + 1
            
            if touch2 == 1
            {
                labelX1.text = "\(a)"
                
                ans = a
            }
                
            else
            {
                ans = ans - a
                
                labelX1.text = "\(ans)"
            }
            
            
            
        }
        
        if (operationTag == 13)
        {
            touch1 = 0
            
            touch2 = 0
            
            touch4 = 0

            
            touch3 = touch3 + 1
            
            if touch3 == 1
            {
                labelX1.text = "\(a)"
                
                ans = a
            }
                
            else
            {
                ans = ans * a
                
                labelX1.text = "\(ans)"
            }
            
            
            
        }
        
        if (operationTag == 14)
        {
            touch1 = 0
            
            touch2 = 0
            
            touch3 = 0

            
            touch4 = touch4 + 1
            
            if touch4 == 1
            {
                labelX1.text = "\(a)"
                
            }
                
            else
            {
                ans = ans / a
                
                labelX1.text = "\(ans)"
            }
            
            
        }
        
        
        
    }
    
    
    
    @IBAction func buttonX3(_ sender: Any) {
    
        labelX1.text = "\(ans)"
        
    }
    
    
    
    @IBAction func buttonX4(_ sender: Any) {
        
        
        tap = 0
        
        ans = 0
        
        labelX1.text = ""
        
    }
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

