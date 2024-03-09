import UIKit

class Lab_2_ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    var count = 0
    var initial = 0
    
    @IBAction func incButton(_ sender: Any) {
        if(initial == 0){
            count += 1
            label.text = String(count)
        }else if(initial == 1){
            count += 2
            label.text = String(count)
        }
    }
    @IBAction func decButton(_ sender: Any) {
        if(initial == 0){
            count -= 1
            label.text = String(count)
        }else if(initial == 1){
            count -= 2
            label.text = String(count)
        }
    }
    @IBAction func reset(_ sender: Any) {
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
