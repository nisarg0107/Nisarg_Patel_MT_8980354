import UIKit

class Lab_2_ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!  // label linked
    var count = 0
    var initial = 0
    
    @IBAction func incButton(_ sender: Any) {  // increment button linked
        if(initial == 0){       // code for increment value by 2
            count += 1
            label.text = String(count)
        }else if(initial == 1){
            count += 2
            label.text = String(count)
        }
    }
    @IBAction func decButton(_ sender: Any) {       // decrement button linked
        if(initial == 0){       // code for decrement value by 2
            count -= 1
            label.text = String(count)
        }else if(initial == 1){
            count -= 2
            label.text = String(count)
        }
    }
    
    // code to reset all values
    
    @IBAction func reset(_ sender: Any) {       // reset button linked
        label.text = String(0)
        count = 0
        initial = 0
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func doubleButton(_ sender: Any) {
        initial = 1
    }
    
}
