//
//  ViewController.swift
//  Assignment2
//
//  Created by user238292 on 1/23/24.
//

import UIKit

class Lab_3_ViewController: UIViewController {

 
    @IBOutlet weak var fname: UITextField!      //  first name text field linked
    
    @IBOutlet weak var lname: UITextField!      //  last name text field linked
    
    @IBOutlet weak var country: UITextField!    //  country name text field linked
    
    @IBOutlet weak var age: UITextField!        //  age text field linked
    
    @IBOutlet weak var displayArea: UITextView! //  display area text view linked
    
    @IBOutlet weak var responseArea: UILabel!   //  response label linked
    
    
    @IBOutlet weak var addInfo: UIButton!       //  add button linked
    @IBAction func addInfo(_ sender: Any) {
        displayArea.text = "Full Name : \(fname.text!) \(lname.text!) \nCountry : \(country.text!) \nAge : \(age.text!)"

    }
    
    
    @IBOutlet weak var submitInfo: UIButton!        //  submit button linked
    @IBAction func submitInfo(_ sender: Any) {
        
        if (fname.text!.isEmpty || lname.text!.isEmpty || country.text!.isEmpty || age.text!.isEmpty){
          
            responseArea.text = "Complete the missing Info!"
        }
        else{
            
           
            responseArea.text = "Successfully submitted!"
            displayArea.text = "Full Name : \(fname.text!) \(lname.text!) \nCountry : \(country.text!) \nAge : \(age.text!)"
        }
    }
    
    
    @IBOutlet weak var clearInfo: UIButton!     // clear button linked
    
    // code to clear all values
    
    @IBAction func clearInfo(_ sender: Any) {
        fname.text!.removeAll()
        lname.text!.removeAll()
        country.text!.removeAll()
        age.text!.removeAll()
        displayArea.text!.removeAll()
        responseArea.text!.removeAll()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

