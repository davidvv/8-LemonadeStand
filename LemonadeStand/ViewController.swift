//
//  ViewController.swift
//  LemonadeStand
//
//  Created by David Vences Vaquero on 2/5/15.
//  Copyright (c) 2015 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //HAVE labels:
    @IBOutlet weak var haveCashLabel: UILabel!
    @IBOutlet weak var haveLemonsLabel: UILabel!
    @IBOutlet weak var haveIceLabel: UILabel!
    
    //BUY labels
    @IBOutlet weak var buyLemonLabel: UILabel!
    @IBOutlet weak var buyIceLabel: UILabel!
    
    //MIX labels
    @IBOutlet weak var mixLemonLabel: UILabel!
    @IBOutlet weak var mixIceLabel: UILabel!
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //BUY actions
    @IBAction func buyLessLemonsButtonPressed() {
    }
    @IBAction func buyMoreLemonsButtonPressed() {
    }
    @IBAction func buyLessIceButtonPressed() {
    }
    @IBAction func buyMoreIceButtonPressed() {
    }
    
    
    //MIX actions
    @IBAction func mixLessLemonsButtonPressed() {
    }
    @IBAction func mixMoreLemonsButtonPressed() {
    }
    @IBAction func mixLessIceButtonPressed() {
    }
    @IBAction func mixMoreIcebuttonPressed() {
    }
    
    //Start day action
    @IBAction func startDayButtonPressed() {
    }
    


}

