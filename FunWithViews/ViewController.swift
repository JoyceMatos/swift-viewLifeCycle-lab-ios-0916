//
//  ViewController.swift
//  FunWithViews
//
//  Created by James Campagno on 6/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counterNumber = 0

    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var view3: UIView!
    
    @IBOutlet weak var view4: UIView!
   
    @IBOutlet weak var view5: UIView!
    
    @IBOutlet weak var view6: UIView!
    
    @IBOutlet weak var view7: UIView!
    
    @IBOutlet weak var red: UILabel!
   
    @IBOutlet weak var orange: UILabel!

    @IBOutlet weak var yellow: UILabel!
  
    @IBOutlet weak var teal: UILabel!
    
    @IBOutlet weak var blue: UILabel!
    
    @IBOutlet weak var purple: UILabel!
    
    @IBAction func dice(sender: AnyObject) {
//        randomDiceRoll()


        counterNumber += 1
        
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        view4.hidden = true
        view5.hidden = true
        view6.hidden = true
        view7.hidden = true

        let scoreLabel = randomDiceRoll()

        
        if counterNumber == 1 {
            red.text = String(scoreLabel)
            red.hidden = false
        } else if counterNumber == 2 {
            red.hidden = false
            orange.text = String(scoreLabel)
            orange.hidden = false
        }
        else if counterNumber == 3 {
            red.hidden = false
            orange.hidden = false
            yellow.text = String(scoreLabel)
            yellow.hidden = false
        } else if counterNumber == 4 {
            red.hidden = false
            orange.hidden = false
            yellow.hidden = false
            teal.text = String(scoreLabel)
            teal.hidden = false
        } else if counterNumber == 5 {
            red.hidden = false
            orange.hidden = false
            yellow.hidden = false
            teal.hidden = false
            blue.text = String(scoreLabel)
            blue.hidden = false
        } else if counterNumber == 6 {
            red.hidden = false
            orange.hidden = false
            yellow.hidden = false
            teal.hidden = false
            blue.hidden = false
            purple.text = String(scoreLabel)
            purple.hidden = false
        } else {
        }
        

        // Black squares //
            switch scoreLabel {
            case 1:
                view1.hidden = false
            case 2:
                view1.hidden = false
                view6.hidden = false
            case 3:
                view3.hidden = false
                view7.hidden = false
                view4.hidden = false
            case 4:
                view1.hidden = false
                view3.hidden = false
                view4.hidden = false
                view6.hidden = false
            case 5:
                view1.hidden = false
                view3.hidden = false
                view4.hidden = false
                view6.hidden = false
                view7.hidden = false
            case 6:
                view1.hidden = false
                view2.hidden = false
                view3.hidden = false
                view4.hidden = false
                view5.hidden = false
                view6.hidden = false
            default: true }
     
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view1.hidden = true
        view2.hidden = true
        view3.hidden = true
        view4.hidden = true
        view5.hidden = true
        view6.hidden = true
        view7.hidden = true
        
        red.hidden = true
        orange.hidden = true
        yellow.hidden = true
        teal.hidden = true
        blue.hidden = true
        purple.hidden = true
        
        
    }
    
    func randomDiceRoll() -> Int {
        return Int(arc4random_uniform(6) + 1)
        
        }



}
