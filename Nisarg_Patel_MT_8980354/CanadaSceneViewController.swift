//
//  CanadaSceneViewController.swift
//  Nisarg_Patel_MT_8980354
//
//  Created by user238292 on 3/10/24.
//

import UIKit

class CanadaSceneViewController: UIViewController {

    @IBOutlet weak var cityName: UITextField!
    @IBOutlet weak var error: UILabel!
    @IBOutlet weak var image: UIImageView!
   
    @IBAction func findMyCity(_ sender: UIButton) {
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
   
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        image.image = UIImage(named: "Canada")
        error.isHidden = true
       
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
   
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
