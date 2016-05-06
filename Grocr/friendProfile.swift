//
//  friendProfile.swift
//  Grocr
//
//  Created by William Quan on 5/6/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import UIKit

class friendProfile: UIViewController {
    @IBOutlet weak var backgroundProf: UIImageView!
    @IBOutlet weak var circleProf: UIImageView!
    @IBOutlet weak var greyAcross: UIView!
    @IBOutlet weak var scoreView: UIView!
    @IBOutlet weak var thirdBuddy: UIImageView!
    @IBOutlet weak var secondBuddy: UIImageView!
    @IBOutlet weak var firstBuddy: UIImageView!
    
    
    override func viewDidLoad() {
        
   
        
        //only apply the blur if the user hasn't disabled transparency effects
        if !UIAccessibilityIsReduceTransparencyEnabled() {
            backgroundProf.backgroundColor = UIColor.clearColor()
            
            let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.Dark)
            let blurEffectView = UIVisualEffectView(effect: blurEffect)
            //always fill the view
            blurEffectView.frame = backgroundProf.bounds
            blurEffectView.autoresizingMask = [.FlexibleWidth, .FlexibleHeight]
            
            self.view.addSubview(blurEffectView) //if you have more UIViews, use an insertSubview API to place it where needed
            self.view.addSubview(scoreView)
        }
        else {
            backgroundProf.backgroundColor = UIColor.blackColor()
        }
        
        circleProf.layer.borderWidth = 1
        circleProf.layer.masksToBounds = false
        circleProf.layer.borderColor = UIColor.whiteColor().CGColor
        circleProf.layer.cornerRadius = circleProf.frame.size.width / 2
        circleProf.clipsToBounds = true
        
        self.view.bringSubviewToFront(circleProf)
        self.view.bringSubviewToFront(greyAcross)
        
        
        firstBuddy.layer.borderWidth = 1
        firstBuddy.layer.masksToBounds = false
        firstBuddy.layer.borderColor = UIColor.blackColor().CGColor
        firstBuddy.layer.cornerRadius = circleProf.frame.size.width / 4.25
        firstBuddy.clipsToBounds = true
        
        secondBuddy.layer.borderWidth = 1
        secondBuddy.layer.masksToBounds = false
        secondBuddy.layer.borderColor = UIColor.blackColor().CGColor
        secondBuddy.layer.cornerRadius = circleProf.frame.size.width / 4.25
        secondBuddy.clipsToBounds = true
        
        thirdBuddy.layer.borderWidth = 1
        thirdBuddy.layer.masksToBounds = false
        thirdBuddy.layer.borderColor = UIColor.blackColor().CGColor
        thirdBuddy.layer.cornerRadius = circleProf.frame.size.width / 4.25
        thirdBuddy.clipsToBounds = true

        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
