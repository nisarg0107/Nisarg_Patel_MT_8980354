//
//  CanadaSceneViewController.swift
//  Nisarg_Patel_MT_8980354
//
//  Created by user238292 on 3/10/24.
//

import UIKit

class CanadaSceneViewController: UIViewController {

    @IBOutlet weak var cityName: UITextField!    // text field linked
    @IBOutlet weak var error: UILabel!          //  error label linked
    @IBOutlet weak var image: UIImageView!      //  image linked
   
    // code to find image of entered city //
    
    @IBAction func findMyCity(_ sender: UIButton) {     // button linked
        guard let cities = cityName.text?.lowercased(), !cities.isEmpty else {
            showError("Try Again!!")
            return
        }
       
        switch cities {
        case "calgary", "halifax", "montreal", "toronto", "vancouver", "winnipeg":
            error.isHidden = true
            image.image = UIImage(named: cities.capitalized)
            print("Showing Image of \(cities.capitalized)")
           
        default:
            showError("Please Enter Valid City Name!")
        }
    }
   
    // to dismiss keyboard when tap on screen
    
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
   
    // for default image displaying
    
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "Canada")
        error.isHidden = true
       
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    // to showing error while entering wrong image
   
    func showError(_ message: String) {
        error.isHidden = false
        error.textColor = .red
        error.text = message
        print("Enter Valid Input")
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
