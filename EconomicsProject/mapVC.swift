//
//  mapVC.swift
//  EconomicsProject
//
//  Created by Nirbhay Singh on 05/02/20.
//  Copyright © 2020 Valley. All rights reserved.
//

import UIKit

class mapVC: UIViewController {
    
    @IBOutlet weak var Level1ButtonView: UIButton!
    @IBOutlet weak var Level2ButtonView: UIButton!
    @IBOutlet weak var Level3ButtonView: UIButton!
    @IBOutlet weak var Level4ButtonView: UIButton!
    @IBOutlet weak var Level5ButtonView: UIButton!
    @IBOutlet weak var Level6ButtonView: UIButton!
    @IBOutlet weak var Level7ButtonView: UIButton!
    @IBOutlet weak var Level8ButtonView: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // initially
        if level == 0 {
            Level2ButtonView.isHidden = true
            Level3ButtonView.isHidden = true
            Level4ButtonView.isHidden = true
            Level5ButtonView.isHidden = true
            Level6ButtonView.isHidden = true
            Level7ButtonView.isHidden = true
            Level8ButtonView.isHidden = true
            
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print(level)
        
        switch level {
        case 2: Level2ButtonView.isHidden = false
        case 3: Level3ButtonView.isHidden = false
        case 4: Level4ButtonView.isHidden = false
        case 5: Level5ButtonView.isHidden = false
        case 6: Level6ButtonView.isHidden = false
        case 7: Level7ButtonView.isHidden = false
        case 8: Level8ButtonView.isHidden = false
            
        default: Level1ButtonView.isHidden = false
        }
    }
    
    // Level Segue
    @IBAction func Level1ButtonAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "mapToHome", sender: self)
        level = 1
    }
    
    @IBAction func Level2ButtonAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "mapToHome", sender: self)
        level = 2
    }
    
    @IBAction func Level3ButtonAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "mapToHome", sender: self)
        level = 3
    }
    
    @IBAction func Level4ButtonAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "mapToHome", sender: self)
        level = 4
    }
    
    @IBAction func Level5ButtonAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "mapToHome", sender: self)
        level = 5
    }
    
    @IBAction func Level6ButtonAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "mapToHome", sender: self)
        level = 6
    }
    
    @IBAction func Level7ButtonAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "mapToHome", sender: self)
        level = 7
    }
    
    @IBAction func Level8ButtonAction(_ sender: UIButton) {
        
        performSegue(withIdentifier: "mapToHome", sender: self)
        level = 8
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
