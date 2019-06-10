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
                display!.text = String(Double.pi)
            case "√":
                let operand = Double(display!.text!)!
                display!.text = String(sqrt(operand))
            default:
                break
            }
        }
        
        /********************* Update this code **********************/
    }
    
}



