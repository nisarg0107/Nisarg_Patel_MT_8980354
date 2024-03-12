//
//  QuadraticFormulaViewController.swift
//  Nisarg_Patel_MT_8980354
//
//  Created by user238292 on 3/10/24.
//

import UIKit

class QuadraticFormulaViewController: UIViewController {

    @IBOutlet weak var TextFieldA: UITextField!     //  text field A linked
    @IBOutlet weak var TextFieldB: UITextField!     //  text field B linked
    @IBOutlet weak var TextFieldC: UITextView!      //  text field C linked
    @IBOutlet weak var error: UILabel!

    // saving values of a,b and c
    
    @IBAction func result(_ sender: UIButton) {
        guard let a = Double(TextFieldA.text ?? ""),
              let b = Double(TextFieldB.text ?? ""),
              let c = Double(TextFieldC.text ?? "") else {
            showError("Enter valid values for A, B, and C.")
            return
        }
        
        if a == 0{
                    error.isHidden = false
                    showError("The value you entered for A is invalid.")
                    return
                }
               
                if b==0{
                    error.isHidden = false
                    showError("The value you entered for B is invalid.")
                    return
                }
               
                if c==0{
                    error.isHidden = false
                    showError("The value you entered for C is invalid.")
                    return
                }

        let discriminant = b * b - 4 * a * c    // formula to calculate the value

        guard discriminant >= 0 else {
            showError("There are no real roots since the discriminant is less than zero.")
            return
        }

        let root1 = (-b + sqrt(discriminant)) / (2 * a)
        let root2 = (-b - sqrt(discriminant)) / (2 * a)

        if discriminant == 0 {
            showResult("There is only one value for X: \(root1)")
        } else {
            showResult("There are two values for X: \(root1) and \(root2)")
        }
    }
    
   
    
    @IBAction func clear(_ sender: UIButton) {  // clear button linked
        clearTextFields()
        showError("Enter the values for A, B, and C to find X.")
    }

    // code for displaying error
    
    func showError(_ message: String) {
        error.textColor = .red
        error.text = message
        error.isHidden = false
    }
    
    // displaying final result

    func showResult(_ message: String) {
        error.textColor = .black
        error.text = message
        error.isHidden = false
    }
    
    // code to clear all values

    func clearTextFields() {
        TextFieldA.text = ""
        TextFieldB.text = ""
        TextFieldC.text = ""
    }
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        error.isHidden = true
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
