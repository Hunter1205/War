//
//  ViewController.swift
//  LessonFour
//
//  Created by user on 2019-12-20.
//  Copyright © 2019 Haasher Ahmad. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func dealTapped(_ sender: Any) {
        //Randomized Numbers
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)
        
        //Updated Image Views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //Comparing Random Numbers
        if leftNumber > rightNumber{
            //Left Player Wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore)
        }else if leftNumber < rightNumber{
            //Right Player Wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        }else{
            //Tie
        }
    }
}
