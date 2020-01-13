//
//  HomeViewController.swift
//  TheEconomicsProject
//
//  Created by Valley on 12/12/19.
//  Copyright © 2019 Valley. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    // Content Handler Variables
    var contentNum = 0
    var contentLevel = 0
    let content : [Int] = [3, 5, 5, 3, 5, 10]
    
    // Instance Outlets
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
        
        // DialogueRenderer
        DialogueLabelView.text = content(num: 0, level: 0)
    }
    
    // Content Function
    func content(num : Int, level : Int) -> String {
        
        switch level {
            
        case 0:
            switch num {
            // Level #1
            case 0: return "Person X wants to set up their business of producing and selling furniture"
            case 1: return "Primary Sector: this sector functions by obtaining materials from nature and converting it into raw materials."
            case 2: return "Secondary Sector: this sector uses the raw materials to manufacture goods or services."
            case 3: return "Tertiary sector: this is the retail sector, responsible for selling the good or service."
            // Multiple Choice #1
            default: return "Error Loading Content"
            }
        
        case 1:
            switch num {
                
            // Level #2
            case 0: return "In order to begin trading, person X needs to begin production. What factors of production will they use?"
            case 1: return "Factors of Production: There are 4 factors which are used together to produce a given good or a service. They are Land, Labour, Capital, and Enterprise."
            case 2: return "Land is all natural resources, eg. wood"
            case 3: return "Labour is human resources, eg. workers"
            case 4: return "Capital is manmade resources, eg. machinery"
            case 5: return "Enterprise is the risk-taking ability and the ability to combine the other three factors of production to produce goods or services"
                
            // Multiple Choice #2
                
            default: return "Error Loading Content"
            }
        
        case 2:
            switch num {
                
            // Level #3
            case 0: return "Profit = selling price - cost price"
            case 1: return "There is an ‘economic problem’ which is known as scarcity. Wants are unlimited but the resources are limited."
            case 2: return "For example, Person x has $20. They can either buy a book worth $20 or shoes worth $20, but they cannot buy both as they only have $20."
            case 3: return "Therefore, they must make a choice, and the option they don’t choose becomes the Opportunity Cost."
            case 4: return "If Person X chooses the books over the shoes, shoes will be the opportunity cost because it is the next best alternative."
            case 5: return "Since you have only limited money due to scarcity, you can either produce chairs or tables. Which option is a better one for your furniture business?"
                
            // Calculation #1 - Table will be displayed on main screen in a non-tabular form if possible
                
            default: return "Error Loading Content"
            }
            
        case 3:
            switch num {
                
            // Level #4
            case 0: return "In order to be environmentally friendly/sustainable, you decide to install solar panels to power your furniture factories/production facilities."
            case 1: return "There are two main types of goods: Economic and Free goods. Economic goods have a price assigned to them. Thus, they have an Opportunity Cost. Every manufactured good is an economic good; for example, clothes, candy, shoes, pencils, and etc. Free goods are gifts of nature that you don’t have to pay for. For example, air, forests, etc."
            case 2: return " Every manufactured good is an economic good; for example, clothes, candy, shoes, pencils, and etc. Free goods are gifts of nature that you don’t have to pay for. For example, air, forests, etc."
            case 3: return "In the case of solar panels, which good can be considered as a free or economic good?"
                
            // Multiple Choice #3
                
            default: return "Error Loading Content"
            }
            
        case 4:
            switch num {
                
            // Level #5
            case 0: return "Demand- the willingness and ability to buy a given good or service."
            case 1: return "For example, Charlie wants to buy a laptop worth $500, meaning he is willing. However, he does not have $500, therefore he is NOT  able to buy the good."
            case 2: return "If income rises, the demand for a normal good tends to rise. If the good is an inferior good, its demand will fall as income rises. Tastes and preferences are likings of people."
            case 3: return "For example, if someone likes ice creams, it is likely that they will demand ice creams. A persuasive advertising campaign will encourage people to buy the given good. Related goods are of two types: complementary goods and substitute goods."
            case 4: return "Complementary goods are those goods that are used together. For example, bread and butter. Substitute goods are goods that can be used in place of each other. For example, Coca-cola and Pepsi."
            case 5: return "Your furniture company _______, is facing competition from another furniture company ‘AB Furnishings’ as they have just launched cheaper, and better quality sofas. What type of good is ‘AB Furnishings’ table and what effect will it have on your demand?"
                
            // Fill In the Blanks #1
                
            default: return "Error Loading Content"
            }
            
        case 5:
            switch num {
                
            // Level #3
            case 0: return "Supply is the willingness and ability to sell a good or service."
            case 1: return "Factors affecting supply are supply shocks, taxes, subsidies, technology, and cost of factors of production. Supply shocks are unexpected events that affect the supply of a good or s service."
            case 2: return "For example, due to a war or a hurricane, chocolate cannot be exported by the Ivory Coast in Africa. Taxes in terms of supply are corporate taxes. Corporate taxes are aimed at a firm’s profits; a certain percentage of the firm’s profits are taken by the government."
            case 3: return "For example, if the percentage of tax/ tax rate is increased, suppliers will supply less as a greater proportion of their profits will be taken by the government."
            case 4: return "Subsidies are payments made by the government to producers to encourage the production of certain beneficial goods. For example, governments often provide subsidies to private firms providing education or healthcare since both services are beneficial to society."
            case 5: return "Advancements in Technology increase the supply of a given good by improving efficiency. For example, before the printing press was introduced, all books were handwritten."
            case 6: return "Thus, the production of books was a time-consuming and expensive process. With the printing press, however, the supply rose as efficiency increased. As studied earlier, factors of production are land, labour, capital, and enterprise."
            case 7: return "The price of these factors determines the cost of producing the good. Therefore, if the price of the factors of production rises, the cost of production rises. Hence, making it expensive for the producer to produce and vice-versa."
            case 8: return "Due to a hurricane in the city where your production facility is located, the supply of chairs has fallen because labour is not available. Is the cause of the fall in supply due to a fall in willingness or ability?"
            case 9: return "Due to an increase in the corporate tax (a tax levied on firms), you are supplying fewer sofas because the incentive to sell sofas has fallen as you must pay a larger proportion of your profit to the government."
            case 10: return "Has the supply fallen due to a fall in willingness or ability?"
                
            default: return "Error Loading Content"
            }
            
        default: "Mega-Error"
        }
        
        return ""
    }
    
    // Forward Button View
    @IBAction func ForwardButtonAction(_ sender: UIButton) {
        
        if content(num: contentNum, level: contentLevel) != "Error Loading Content" {
            
            DialogueLabelView.text = content(num: contentNum, level: contentLevel)
            contentNum += 1
        } else {
            
            contentNum = 0
            contentLevel += 1
            DialogueLabelView.text = content(num: contentNum, level: contentLevel)
        }
    }
    
    // Backward Button View
    @IBAction func BackButtonAction(_ sender: UIButton) {
            
            if contentNum > 0 {
                
                contentNum -= 1
                DialogueLabelView.text = content(num: contentNum, level: contentLevel)
            } else {
                
                if contentLevel > 0 {
                    
                    contentLevel -= 1
                    contentNum = content[contentLevel]
                    DialogueLabelView.text = content(num: contentNum, level: contentLevel)
                }
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
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
