class ViewController: UIViewController {
    
    //Flag to control if the user is typing by first time or in the middle of display
    // (to avoid 0 at left)
    var userIsInTheMiddleOfTyping = false
    
    
    @IBAction func touchDigit(_ sender: UIButton) {
        /****************** Add this code ****************/
        
        let digit = sender.currentTitle!
        let textCurrrentlyInDisplay = display!.text!
        display!.text = textCurrrentlyInDisplay + digit
        
        /****************** Add this code ****************/
    }
    
    @IBAction func touchDigit(_ sender: UIButton) {
        /****************** Update this code ****************/
        let digit = sender.currentTitle!
        //If flag is set, concatenates the text, else clear the display text with the number pressed and set the flag
        if userIsInTheMiddleOfTyping{
            let textCurrrentlyInDisplay = display!.text!
            display!.text = textCurrrentlyInDisplay + digit
        }else{
            display!.text = digit
            userIsInTheMiddleOfTyping = true
        }
        /****************** Update this code ****************/
    }
    
}
