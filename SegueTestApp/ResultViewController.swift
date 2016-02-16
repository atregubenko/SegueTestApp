//
//  ResultViewController.swift
//  SegueTestApp
//
//  Created by nnet on 2/16/16.
//  Copyright © 2016 nnet. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var result : RPSMatch!

    @IBOutlet weak var relustLabel: UILabel!
    @IBOutlet weak var playAgain: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        resultImageView.image = getImageForMatch(self.result)
        relustLabel.text = getTextForMatch(self.result)
    }
    
    @IBAction func playAgain(sender: AnyObject) {
        dismissViewControllerAnimated( true, completion: nil)
    }
    
    @IBOutlet weak var resultImageView: UIImageView!
    
    func getImageForMatch(match : RPSMatch) -> UIImage {
        let imageName: String
        if (match.p1 == match.p2) {
            imageName = "tie"
        } else {
            switch match.winner {
            case RockScissorsPaperEnum.Rock:
                imageName = "rockCrashesScissors"
            case RockScissorsPaperEnum.Scissors:
                imageName = "scissorsCutPaper"
            case RockScissorsPaperEnum.Paper:
                imageName = "paperCoversRock"
            }
        }
        return UIImage(named : imageName)!
    }
    
    func getTextForMatch(match : RPSMatch) -> String {
        let stringResult : String
        if (match.p1 == match.p2) {
            stringResult = "It's a tie"
        } else {
            let stringAction : String
            switch match.winner {
            case RockScissorsPaperEnum.Rock:
                stringAction = "crashes"
            case RockScissorsPaperEnum.Paper:
                stringAction = "covers"
            default:
                stringAction = "cut"
            }
            stringResult = String(format: "%@ %@ %@ \n %@", match.winner.stringValue, stringAction, match.loser.stringValue, match.p1 == match.winner ? "You win!": "You lose!")
        }
        return stringResult
    }
}
