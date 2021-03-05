//
//  ViewController.swift
//  Card Game Exc
//
//  Created by Adam O. (Atom Lab) on 6/9/20.
//  Copyright © 2020 Test. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
  
    }

        // Those are the score on each side for the game (The players scores).
    var leftScore = 0
    var rightScore = 0
    
    // The Score Label that would change to another number, for the first player on the left.
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    // The Score Label that would change to another number, for the second player on the right.
    @IBOutlet weak var rightScorePlayer: UILabel!
    
    //That is the action of the left image to change for a different image.
    @IBOutlet weak var leftCard: UIImageView!
    
    //That is the action of the right image to change for a different image.
    @IBOutlet weak var rightCard: UIImageView!
    
    
    //This is for the deal tapping button.
    @IBAction func dealTapped(_ sender: Any) {
        
        // This is the action to change cards to different cards by having it being random through Int.Random and then setting a condition for the numbers from 2 to 14 (which is the numbers of the cards we have in the app).
        let leftCardNumber = Int.random(in: 2...14)
        let rightCardNumber = Int.random(in: 2...14)
        
        // That's the action to change the cards, and pull the numbers and cards from the let's above.
        leftCard.image = UIImage(named: "card\(leftCardNumber)")
        rightCard.image = UIImage(named: "card\(rightCardNumber)")
        
        // That is the condtions for the game in general for both right and left sides.
        
        if leftCardNumber > rightCardNumber {
            // The Player on the left side wins.
            leftScore += 1
            
            // To change the score player on the right side, through a String to an Intger.
            leftScoreLabel.text = String(leftScore)
        }
            //The Player on the right side wins.
        else if leftCardNumber < rightCardNumber {
            rightScore += 1
            
            // To change the score player on the right side, through a String to an Intger.
            rightScorePlayer.text = String(rightScore)
        }
        else {
            
            // That is a tie for both polayers, and therefore we do nothing, or maybe we can try to add numbers for each score.
            leftScore += 1
            rightScore += 1
            
            // To change the scores on both player scores on each side of the app or the game.
            rightScorePlayer.text = String(rightScore)
            leftScoreLabel.text = String(leftScore)
        }
    }
    
}

