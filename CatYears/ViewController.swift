//
//  ViewController.swift
//  CatYears
//
//  Created by Vijay Xtreme on 5/21/15.
//  Copyright (c) 2015 vijayxtreme. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yearsInput: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBAction func findCatAge(sender: AnyObject) {
        
        if yearsInput.text != "" {
            println(yearsInput.text)
            //remember this is a string value, we want to
            //convert this value
     
            
            var humanYears = yearsInput.text.toInt()
            
            //need to unwrap the Int type to get the number
            var catYears = humanYears! * 7
            
            //output the answer to the result label
            result.text = "Your cat is \(catYears) years old!"
            //but this is an int, so we have to convert to string
        }else {
            result.text = "Please input a number"
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

