//
//  ViewController.swift
//  SegueTestApp
//
//  Created by nnet on 2/16/16.
//  Copyright © 2016 nnet. All rights reserved.
//

import UIKit

class RockScisorsPaperViewController: UIViewController {

    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!

    var match : RPSMatch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let resultController = segue.destinationViewController as? ResultViewController
        resultController!.result = match
    }
    
    @IBAction func makeYourChoice(sender: UIButton) {
        switch sender {
        case rockButton:
            matchChoices(RockScissorsPaperEnum.Rock)
        case paperButton:
            matchChoices(RockScissorsPaperEnum.Paper)
        default:
            matchChoices(RockScissorsPaperEnum.Scissors)
        }
        performSegueWithIdentifier("showResult", sender: self)
    }
    
    func matchChoices(selectedChoice : RockScissorsPaperEnum) {
        let opponentChoice = RockScissorsPaperEnum()
        print("\(opponentChoice) \(opponentChoice.stringValue)")
        self.match = RPSMatch(p1 : selectedChoice, p2 : opponentChoice)
    }
}

