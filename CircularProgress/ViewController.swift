//
//  ViewController.swift
//  CircularProgress
//
//  Created by Andrew Bancroft on 7/7/15.
//  Copyright (c) 2015 Andrew Bancroft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var circularProgressView: KDCircularProgress!
    
    var currentCount = 0.0
    let maxCount = 5.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
		circularProgressView.angle = 0
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func increaseProgressButtonTapped(sender: UIButton) {
        if currentCount != maxCount {
            currentCount += 1
            let newAngleValue = newAngle()
            
            circularProgressView.animateToAngle(newAngleValue, duration: 0.5, completion: nil)
        }
    }
	
	func newAngle() -> Int {
		return Int(360 * (currentCount / maxCount))
	}
	
    @IBAction func resetButtonTapped(sender: UIButton) {
        currentCount = 0
        circularProgressView.animateFromAngle(circularProgressView.angle, toAngle: 0, duration: 0.5, completion: nil)
    }
}

