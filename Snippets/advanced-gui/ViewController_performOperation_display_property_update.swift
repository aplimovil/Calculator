class ViewController: UIViewController {
    
    /************************ Add this code **************************/
    
    //Pre-computed property to simplify display text update operations
    var displayValue:Double{
        get{
            return Double(display.text!)!
        }
        set{
            display.text = String(newValue)
        }
    }
    
    /************************ Add this code **************************/
    
    
    @IBAction func performOperation(_ sender: UIButton) {
        
        /********************* Update this code **********************/
        
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
        
        /********************* Update this code **********************/
    }
    
}



