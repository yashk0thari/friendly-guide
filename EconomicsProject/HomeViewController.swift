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
    @IBOutlet weak var StoryButtonView: UIButton!
    @IBOutlet weak var DialogueView: UIView!
    @IBOutlet weak var DialogueLabelView: UILabel!

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
        DialogueView.isHidden = true
        
        // DialougeView
        DialogueLabelView.textColor = UIColor.white
    }
    
    // Content Function
    func content(num : Int, level : Int) {
        
        switch level {
            
        case 0:
            switch num {
                
            // Level #1
            case 0: "Person X wants to set up their business of producing and selling furniture"
            case 1: "Primary Sector: this sector functions by obtaining materials from nature and converting it into raw materials."
            case 2: "Secondary Sector: this sector uses the raw materials to manufacture goods or services."
            case 3: "Tertiary sector: this is the retail sector, responsible for selling the good or service."
                
            // Multiple Choice #1
                
            default: "Error Loading Content"
            }
        
        case 1:
            switch num {
                
            // Level #2
            case 0: "In order to begin trading, person X needs to begin production. What factors of production will they use?"
            case 1: "Factors of Production: There are 4 factors which are used together to produce a given good or a service. They are Land, Labour, Capital, and Enterprise."
            case 2: "Land is all natural resources, eg. wood"
            case 3: "Labour is human resources, eg. workers"
            case 3: "Capital is manmade resources, eg. machinery"
            case 4: "Enterprise is the risk-taking ability and the ability to combine the other three factors of production to produce goods or services"
                
            // Multiple Choice #2
                
            default: "Error Loading Content"
            }
        
        case 2:
            switch num {
                
            // Level #3
            case 0: "Profit = selling price - cost price"
            case 1: "There is an ‘economic problem’ which is known as scarcity. Wants are unlimited but the resources are limited."
            case 2: "For example, Person x has $20. They can either buy a book worth $20 or shoes worth $20, but they cannot buy both as they only have $20."
            case 3: "Therefore, they must make a choice, and the option they don’t choose becomes the Opportunity Cost."
            case 4: "If Person X chooses the books over the shoes, shoes will be the opportunity cost because it is the next best alternative."
            case 5: "Since you have only limited money due to scarcity, you can either produce chairs or tables. Which option is a better one for your furniture business?"
                
            // Calculation #1 - Tabel will be displayed on main screen in a non-tabular form if possible
                
            default: "Error Loading Content"
            }
            
        default: "Mega-Error"
        }
    }
    
    // Settings View
    @IBAction func SettingsButtonAction(_ sender: UIButton) {
        
        if SettingsView.isHidden == true {
            
            SettingsView.isHidden = false
        } else {
            
            SettingsView.isHidden = true
        }
    }
    
    // Dialogue View
    @IBAction func StoryButtonAction(_ sender: Any) {
        
        DialogueView.isHidden = false
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
