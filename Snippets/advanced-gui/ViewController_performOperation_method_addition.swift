class ViewController: UIViewController {
    
    @IBAction func performOperation(_ sender: UIButton) {
        
        /********************* Update this code **********************/
        
        if let mathematicalSymbol = sender.currentTitle{
            switch mathematicalSymbol{
            case "π":
                display!.text = "3.1416"
            default:
                break
            }
        }
        
        /********************* Update this code **********************/
        
    }
    
}

