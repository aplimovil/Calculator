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

    @IBOutlet weak var display: UILabel!
    //Flag to control if the user is typing by first time or in the middle of display
    // (to avoid 0 at left)
    var userIsInTheMiddleOfTyping = false
    
    //Pre-computed property to simplify display text update operations
    var displayValue:Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func touchDigit(_ sender: UIButton) {
        let digit = sender.currentTitle!
        //If flag is set, concatenates the text, else clear the display text with the number pressed and set the flag
        if userIsInTheMiddleOfTyping{
            let textCurrrentlyInDisplay = display!.text!
            display!.text = textCurrrentlyInDisplay + digit
        }else{
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
    }
    
    @IBAction func performOperation(_ sender: UIButton) {
        userIsInTheMiddleOfTyping = false
        if let mathematicalSymbol = sender.currentTitle{
            switch mathematicalSymbol{
            case "π":
                displayValue = Double.pi
            case "√":
                displayValue = sqrt(displayValue)
            default:
                break
            }
        }
    }
}

