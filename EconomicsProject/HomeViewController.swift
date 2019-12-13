//
//  HomeViewController.swift
//  TheEconomicsProject
//
//  Created by Valley on 12/12/19.
//  Copyright © 2019 Valley. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var ChangeNameTextFieldView: UITextField!
    @IBOutlet weak var musicSwitch: UISwitch!
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var HTPButtonView: UIButton!
    @IBOutlet weak var ProgressButtonView: UIButton!
    @IBOutlet weak var FeebackButtonView: UIButton!
    @IBOutlet weak var LogoutButtonView: UIButton!
    @IBOutlet weak var SettingsView: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Background Info
        let uiImage = UIImage(named: "back")
        let backgroundColor = UIColor(patternImage: uiImage!)
        self.view.backgroundColor = backgroundColor
        
        // Aesthetical Adjustments
        HTPButtonView.layer.cornerRadius = 5
        ProgressButtonView.layer.cornerRadius = 5
        FeebackButtonView.layer.cornerRadius = 5
        LogoutButtonView.layer.cornerRadius = 5
        
        // Initally
        SettingsView.isHidden = true
    }
    
    // Settings View
    @IBAction func SettingsButtonAction(_ sender: UIButton) {
        
        if SettingsView.isHidden == true {
            
            SettingsView.isHidden = false
        } else {
            
            SettingsView.isHidden = true
        }
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
