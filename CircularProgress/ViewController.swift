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
    
    var currentProgress = 0.0
    let maxProgress = 5.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func increaseProgressButton(sender: UIButton) {
        if currentProgress != maxProgress {
            currentProgress += 1
            let newAngleValue = newAngle()
            
            circularProgressView.animateToAngle(newAngleValue, duration: 0.5, completion: nil)
        }
    }
    
    @IBAction func resetButton(sender: UIButton) {
        currentProgress = 0
        circularProgressView.animateFromAngle(circularProgressView.angle, toAngle: 0, duration: 0.5, completion: nil)
    }
    
    func newAngle() -> Int {
        return Int(360 * (currentProgress / maxProgress))
    }
}

