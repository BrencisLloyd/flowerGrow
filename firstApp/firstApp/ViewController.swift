//
//  ViewController.swift
//  firstApp
//
//  Created by Lloyd, Alice on 2/24/20.
//  Copyright © 2020 Lloyd, Brencis. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

//variables
    
    var water:Int = 0
    var fert:Int = 0
    var prune:Int = 0
    var repot:Int = 0
    var threat:Int = 0
    var chars:Int = Int(arc4random_uniform(5) + 1)
    var total:Int = 0
    
    @IBOutlet weak var growBetter: UIImageView!
    
    @IBOutlet weak var beginFlower: UIImageView!
    
    
    @IBOutlet weak var deadFlower: UIImageView!
    
    
    @IBOutlet weak var happyFlower: UIImageView!
    
//actions
    
  
    @IBOutlet weak var flowerName: UITextField!
    
    
    
    
    
    @IBOutlet weak var flowerLabel: UILabel!
    
  

    
    @IBAction func waterButton(_ sender: UISwitch) {
        if sender.isOn {
                 water = 1
             }
            else {
                 water = 0
             }
    }
    
    @IBAction func fertButton(_ sender: UISwitch) {
           if sender.isOn {
                 fert = 1
             }
            else {
                 fert = 0
             }        }
    
    @IBAction func pruneButton(_ sender: UISwitch) {
        if sender.isOn {
                 prune = 1
             }
            else {
                 prune = 0
             }
    }
    
    @IBAction func repotButon(_ sender: UISwitch) {
        if sender.isOn {
                 repot = 1
             }
            else {
                 repot = 0
             }
    }
    
    @IBAction func threatButton(_ sender: UISwitch) {
        if sender.isOn {
                 threat = 1
            growBetter.isHidden = false
             }
            else {
                 threat = 0
            growBetter.isHidden = true             }
   
    
    }
    
    
    
    
    @IBAction func reset(_ sender: Any) {
        chars = 0
        water = 0
        fert = 0
        prune = 0
        repot = 0
        threat = 0
        
        
        
    growBetter.isHidden = true
    
        
        
    }
    

    @IBAction func Submit(_ sender: Any) {
       
            total = water + fert + prune + repot + threat
        beginFlower.isHidden = true
        flowerLabel.text = "Your flower name is \(flowerName.text!)"
             if(total == chars) {
                happyFlower.isHidden = false
                    }
                    else {
                        happyFlower.isHidden = false
                    }
                    
    
    
    
    
}

}
