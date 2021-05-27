//
//  ViewController.swift
//  Games
//
//  Created by period6 on 4/5/21.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var labelTwo: UILabel!
    @IBOutlet weak var labelThree: UILabel!
    @IBOutlet weak var labelFour: UILabel!
    @IBOutlet weak var labelFive: UILabel!
    @IBOutlet weak var labelSix: UILabel!
    @IBOutlet weak var labelSeven: UILabel!
    @IBOutlet weak var labelEight: UILabel!
    @IBOutlet weak var labelNine: UILabel!
    
    @IBOutlet weak var turnLabel: UILabel!
    
    @IBOutlet weak var viewOutlet: UIView!
    
    @IBOutlet weak var myView: UIView!
    
    
    var allLabels: [UILabel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        turnLabel.text = "X"
        allLabels = [labelOne, labelTwo, labelThree, labelFour, labelFive, labelSix, labelSeven, labelEight, labelNine]
    }
    
    func checkForWinner()
        {
            if labelOne.text == labelTwo.text && labelTwo.text == labelThree.text  && labelOne.text != ""{
               winner()
            }
            if labelFour.text == labelFive.text && labelFive.text == labelSix.text && labelFour.text != ""{
            winner()
            }
            if labelSeven.text == labelEight.text && labelEight.text == labelNine.text && labelSeven.text != ""{
           winner()
            }
            if labelOne.text == labelFour.text && labelFour.text == labelSeven.text && labelOne.text != ""{
            winner()
            }
            if labelTwo.text == labelFive.text && labelFive.text == labelEight.text && labelTwo.text != ""{
            winner()
            }
            if labelThree.text == labelSix.text && labelSix.text == labelNine.text && labelThree.text != ""{
            winner()
            }
            if labelOne.text == labelFive.text && labelFive.text == labelNine.text && labelOne.text != ""{
            winner()
            }
            if labelThree.text == labelFive.text && labelFive.text == labelSeven.text && labelThree.text != ""{
           winner()
            }
                    
            }
    
    
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        let selectedPoint = sender.location(in: myView)
        for label in allLabels {
            if label.frame.contains(selectedPoint) {
                placeInToLabel(myLabel: label)
            }
        }
        checkForWinner()
    }
    
    
    //Use the parameter in conditional
        func placeInToLabel(myLabel: UILabel)
        {
            if myLabel.text == ""
            {
                if turnLabel.text == "X" {
                myLabel.text = turnLabel.text
                turnLabel.text = "O"
            }
            else{
                myLabel.text = turnLabel.text
                turnLabel.text = "X"
            }
        }
    }

    
    //reset all the labels
    @IBAction func playAgainButton(sender: UIButton)
        {
            labelOne.text = ""
            labelTwo.text = ""
            labelThree.text = ""
            labelFour.text = ""
            labelFive.text = ""
            labelSix.text = ""
            labelSeven.text = ""
            labelEight.text = ""
            labelNine.text = ""
        }

    
    func winner()
    {
  
    }
    
    
    

    }

        
    

    

