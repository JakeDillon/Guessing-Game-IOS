//
//  ViewController.swift
//  Guessing-Game
//
//  Created by Jake Dillon on 9/21/18.
//  Copyright © 2018 Jake Dillon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var guessStatusLabel: UILabel!
    
    @IBOutlet weak var numberSlider: UISlider!
    
    @IBOutlet weak var submitButton: UIButton!
    
    @IBOutlet weak var resetButton: UIButton!
   
    @IBOutlet weak var guessedNumber: UILabel!
    
    override func viewDidLoad() {
      

        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        greetingLabel.text = "Guess number between 1-100"
        guessStatusLabel.text = "click button to submit answer"
        submitButton.setTitle("submit", for: .normal)
        resetButton.setTitle("reset", for: .normal)
        guessedNumber.text = "1"
    }

    var randomNumber = Int(arc4random_uniform(100)) + 1
    var userTries = 5
    var newGame = false

    @IBAction func resetButton(_ sender: Any) {
        let newGame = true
        if newGame == true {
            userTries = 5
            randomNumber = Int(arc4random_uniform(100)) + 1
            resetButton.isHidden = false
            viewDidLoad()
        }
        
        
    }
    

    @IBAction func numberSlider(_ sender: Any) {
        let numberGuessed = Int(numberSlider.value)
        guessedNumber.text = "\(numberGuessed)"
    }
    
    
    @IBAction func submitButtonTapped(_ sender: Any) {
        let userInput = Int(numberSlider.value)
    
    
    if userTries == 0 {
    submitButton.isHidden = false
    resetButton.isHidden = false
    greetingLabel.text = "you lost"
    guessStatusLabel.text = """
    \(randomNumber) was the correct number
    """
    
} else if userInput == randomNumber {
        guessStatusLabel.text = "you got it right"
    
    } else if userInput <= randomNumber {
        guessStatusLabel.text = """
    \(userInput) is too low
    you have \(userTries) tries left
    """
    userTries -= 1
    } else if userInput >= randomNumber {
    guessStatusLabel.text = """
    \(userInput) is too high
    you have \(userTries) tries left
    """
    userTries -= 1
    }
    print("\(randomNumber) - \(userTries)")
}


}
