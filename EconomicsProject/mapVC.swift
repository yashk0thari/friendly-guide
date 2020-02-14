//
//  mapVC.swift
//  EconomicsProject
//
//  Created by Nirbhay Singh on 05/02/20.
//  Copyright © 2020 Valley. All rights reserved.
//

import UIKit

class mapVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
