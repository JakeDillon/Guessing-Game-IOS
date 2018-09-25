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
      
        var randomNumber = Int(arc4random_uniform(100)) + 1
        var UserTries = 5
        var newGame = false
        
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        greetingLabel.text = "Guess number between 1-100"
        guessStatusLabel.text = "click button to submit answer"
        submitButton.setTitle("submit", for: .normal)
        resetButton.setTitle("reset", for: .normal)
        guessedNumber.text = "1"
    }


    @IBAction func submitButtonTapped(_ sender: Any) {
     let userInput = Int(numberSlider.value)

        }
 
    @IBAction func resetButton(_ sender: Any) {
   
    }

    @IBAction func numberSlider(_ sender: Any) {
        let numberGuessed = Int(numberSlider.value)
        guessedNumber.text = "\(numberGuessed)"
    }
    if UserTries == 0 {
    .isHidden = true
    resetButton.isHidden = false
    topLabel.text = "you lost :weary:"
    promptUser.text = """
    \(randomNumber) was the correct number
    better luck next time
    """

}


    


    


        if UserTries == 0 {
            userClicked.isHidden = true
            restartButton.isHidden = false
            topLabel.text = "you lost :weary:"
            promptUser.text = """
            \(randomNumber) was the correct number
            better luck next time
            """
//        } else if userInput == randomNumber {
//            promptUser.text = "you got it right"
//
//        } else if userInput <= randomNumber {
//            promptUser.text = """
//            \(userInput) is to low
//            you have \(UserTries) tries left
//            """
//            UserTries -= 1
//        } else if userInput >= randomNumber {
//            promptUser.text = """
//            \(userInput) is to high
//            you have \(UserTries) tries left
//            """
//            UserTries -= 1
//        }
//        print("\(randomNumber) - \(UserTries)")
//    }
//
//    @IBAction func userRestart(_ sender: Any) {
//        newGame = true
//        if newGame == true {
//            UserTries = 5
//            randomNumber = Int(arc4random_uniform(100)) + 1
//            userClicked.isHidden = false
//            viewDidLoad()
//        }
//    }
//}
