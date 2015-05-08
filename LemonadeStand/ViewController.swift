//
//  ViewController.swift
//  LemonadeStand
//
//  Created by David Vences Vaquero on 2/5/15.
//  Copyright (c) 2015 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Weather ImageViews
    @IBOutlet weak var weatherImageView1: UIImageView!
    @IBOutlet weak var weatherImageView2: UIImageView!
    @IBOutlet weak var weatherImageView3: UIImageView!
    @IBOutlet weak var weatherImageView4: UIImageView!
    
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
    
    var haveCash = 10
    var haveLemons = 1
    var haveIce = 1
    
    var buyLemons = 0
    var buyIce = 0
    
    //tengo que meter en algún sitio una función que calcule la acidez, siendo de 0-0,4 ácido, 0,4-0,6 medio y 0,6-1 diluido
    var mixLemon = 0
    var mixIce = 0
    
    
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        haveCashLabel.text = "$\(haveCash)"
        haveLemonsLabel.text = "\(haveLemons) lemon"
        haveIceLabel.text = "\(haveIce) ice cubes"
        buyLemonLabel.text = "\(buyLemons)"
        buyIceLabel.text = "\(buyIce)"
        mixLemonLabel.text = "\(mixLemon)"
        mixIceLabel.text = "\(mixIce)"
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //BUY actions
    @IBAction func buyLessLemonsButtonPressed() {
        if buyLemons > 0 {
        buyLemons -= 1
        haveLemons -= 1
        haveCash += 2
        
        updateView()
        }else{
            if haveLemons > 0 {
                buyLemons -= 1
                haveLemons -= 1
                haveCash += 2
                updateView()
            }
        }
    }
    @IBAction func buyMoreLemonsButtonPressed() {
        if haveCash > 1 {
            buyLemons += 1
            haveLemons += 1
            haveCash -= 2
            updateView()
        }
    }
    @IBAction func buyLessIceButtonPressed() {
        if buyIce > 0 {
            buyIce -= 1
            haveIce -= 1
            haveCash += 1
            
            updateView()
        }else{
            if haveIce > 0 {
                buyIce -= 1
                haveIce -= 1
                haveCash += 1
                updateView()
            }
        }
    }
    @IBAction func buyMoreIceButtonPressed() {
        if haveCash > 0 {
            buyIce += 1
            haveIce += 1
            haveCash -= 1
            updateView()
        }
    }
    
    
    //MIX actions
    @IBAction func mixLessLemonsButtonPressed() {
        if mixLemon > 0 {
            haveLemons += 1
            mixLemon -= 1
            updateView()
        }
    }
    @IBAction func mixMoreLemonsButtonPressed() {
        if haveLemons > 0 {
            haveLemons -= 1
            mixLemon += 1
            updateView()
        }
    }
    @IBAction func mixLessIceButtonPressed() {
        if mixIce > 0 {
            haveIce += 1
            mixIce -= 1
            updateView()
        }
    }
    @IBAction func mixMoreIcebuttonPressed() {
        if haveIce > 0 {
            haveIce -= 1
            mixIce += 1
            updateView()
        }
    }
    
    //Start day action
    //no dejar que funcione si no tienes al menos un limón y un cubito de hielo
    @IBAction func startDayButtonPressed() {
        
        if mixIce > 0 && mixLemon > 0 {
            haveCash += GameBrain.acidityMatch(Factory.customerArrayCreator(), acidityMixString: GameBrain.acidityCalculator(mixLemon, mixIce: mixIce))
            mixIce = 0
            mixLemon = 0
            buyIce = 0
            buyLemons = 0
            updateView()
        }
        else {
            println("you need something in your mix!")
        }



    }
    
    
    //HELPER functions
    func updateView(){
        haveCashLabel.text = "$\(haveCash)"
        haveLemonsLabel.text = "\(haveLemons) lemon"
        haveIceLabel.text = "\(haveIce) ice cubes"
        buyLemonLabel.text = "\(buyLemons)"
        buyIceLabel.text = "\(buyIce)"
        mixLemonLabel.text = "\(mixLemon)"
        mixIceLabel.text = "\(mixIce)"
    }
    
    func showWarningNoMix(heather: String = "Warning", message: String){
        var alert = UIAlertController(title: heather, message: message, preferredStyle: UIAlertControllerStyle.Alert)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }
    

}

