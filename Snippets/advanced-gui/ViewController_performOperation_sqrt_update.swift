class ViewController: UIViewController {
    
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
        
        /********************* Add this code **********************/
    }
    
}


