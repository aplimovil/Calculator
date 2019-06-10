/**
 *
 * Applications development for mobile devices
 * -------------------------------------------
 *
 * ViewController for Calculator App
 *
 * @author Francisco Martinez
 *
 * This This example is based on the source code from the
 * Stanford - Developing iOS 11 Apps with Swift course.
 *
 *
 *
 */

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        /****************** Add this code ****************/
        
        let digit = sender.currentTitle
        print ("\(digit) was called")
        
        /****************** Add this code ****************/
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        /****************** Update this code ****************/
        //Update to avoid optional warnings
        let digit = sender.currentTitle!
        print ("\(digit) was called")
        
        /****************** Update this code ****************/
    }
    
}
