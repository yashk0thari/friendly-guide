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
    let content : [Int] = [0, 0, 0, 0, 1, 4, 0, 0, 0, 3, 0, 0, 3, 0]
    let option1 : [String] = ["Primary sector",
                              "Machinery, Workers, Wood, and entrepreneurial skills",
                              "5,12",
                              "Sunlight",
                              "Substitute and demand falls",
                              "willingness, ability",
                              "15,20",
                              "55,60",
                              "3",
                              "Inelastic, Necessity \n Price elastic \n Increase",
                              "Elastic, Unit elastic",
                              "Monopoly",
                              "Ethical objectives \n 2.5 \n 3750",
                              "Marketing"]
    
    let option2 : [String] = ["Secondary sector",
                              "Workers and Machinery",
                              "6,13",
                              "Solar panels",
                              "Substitute and demand rises",
                              "willingness, willingness",
                              "25,30",
                              "45,60",
                              "6",
                              "Inelastic, Addictive \n Price inelastic \n Decrease",
                              "Perfectly inelastic, Perfectly elastic",
                              "Public goods",
                              "Profit satisficing \n 1.5 \n 3700",
                              "Financial"]
    
    let option3 : [String] = ["Tertiary sector",
                              "Wood or Workers",
                              "5,13",
                              "Wires and cords",
                              "Complement and demand falls",
                              "ability, willingness",
                              "25,20",
                              "50,45",
                              "2",
                              "Elastic, Necessity \n Unit elastic \n Do nothing",
                              "Unit elastic, Inelastic",
                              "Short termism",
                              "Growth maximisation \n 5.5 \n 3850",
                              "Technical"]
    
    let option4 : [String] = ["None of the Above",
                              "Entrepreneurial skills and wood",
                              "8,11",
                              "Solar battery storage",
                              "Complement and demand rises",
                              "ability, ability",
                              "20,15",
                              "40,45",
                              "4",
                              "Elastic, Addictive \n Perfectly elastic \n New Strategy Required!",
                              "Inelastic, Elastic",
                              "Demerit goods",
                              "Profit maximisation \n 6.1 \n 4000",
                              "Managerial"]
    
    let correctAnswer : [String] = ["3",
                                    "1",
                                    "3",
                                    "1",      // Additional Work Required
                                    "1",      // Additional Work Required
                                    "3",
                                    "3",
                                    "1",
                                    "4",
                                    "2",
                                    "4",
                                    "1",
                                    "1",
                                    "3"]
    
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
    @IBOutlet weak var BookButtonView: UIButton!
    @IBOutlet weak var DialogueLabelView: UILabel!
    @IBOutlet weak var DefinitionTextView: UITextView!
    @IBOutlet weak var OptionsView: UIView!
    @IBOutlet weak var ImageView: UIView!
    @IBOutlet weak var Option1ButtonView: UIButton!
    @IBOutlet weak var Option2ButtonView: UIButton!
    @IBOutlet weak var Option3ButtonView: UIButton!
    @IBOutlet weak var Option4ButtonView: UIButton!
    @IBOutlet weak var BlurEffectView: UIVisualEffectView!
    @IBOutlet weak var ForwardButtonView: UIButton!
    @IBOutlet weak var BackwardButtonView: UIButton!
    
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
        DefinitionTextView.layer.cornerRadius = 5
        
        // Initally
        SettingsView.isHidden = true
        DefinitionTextView.isHidden = true
        OptionsView.isHidden = true
        ImageView.isHidden = true
        DialogueLabelView.isHidden = false
        BlurEffectView.isHidden = true
        level -= 1
        
        // DialougeView
        DialogueLabelView.textColor = UIColor.white
        
        // DialogueRenderer
        DialogueLabelView.text = content(num: 0, level: level)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.setNavigationBarHidden(true, animated: animated)
        
        // Dictionary Content
        let Dictionary : [String] = ["Primary Sector: this sector functions by obtaining materials from nature and converting it into raw materials. \n\n Secondary Sector: this sector uses the raw materials to manufacture goods or services. \n\n Tertiary sector- this is the retail sector, responsible for selling the good or service.", "Factors of Production: There are 4 factors which are used together to produce a given good or a service. They are Land, Labour, Capital, and Enterprise. Land is all natural resources, eg. wood. Labour is human resources, eg. workers. Capital is manmade resources, eg. machinery. Enterprise is the risk-taking ability and the ability to combine the other three factors of production to produce goods or services.", "Profit- selling price-cost price \n\n There is an ‘economic problem’ which is known as scarcity. Wants are unlimited but the resources are limited. For example, Person x has $20. They can either buy a book worth $20 or shoes worth $20, but they cannot buy both as they only have $20. Therefore, they must make a choice, and the option they don’t choose becomes the Opportunity Cost. If Person X chooses the books over the shoes, shoes will be the opportunity cost because it is the next best alternative.", "There are two main types of goods: Economic and Free goods. Economic goods have a price assigned to them. Thus, they have an Opportunity Cost. Every manufactured good is an economic good; for example, clothes, candy, shoes, pencils, and etc. Free goods are gifts of nature that you don’t have to pay for. For example, air, forests, etc.", "Demand: the willingness and ability to buy a given good or service. For example, Charlie wants to buy a laptop worth $500, meaning he is willing. However, he does not have $500, therefore he is NOT  able to buy the good. \n\n The demand for a good is influenced by several factors such as income, tastes and preferences, advertising, and price of related goods. \n\n Income is the money earned by someone through employment. If income rises, the demand for a normal good tends to rise. If the good is an inferior good, its demand will fall as income rises. \n\n Tastes and preferences are likings of people. For example, if someone likes ice creams, it is likely that they will demand ice creams. A persuasive advertising campaign will encourage people to buy the given good. \n\n Related goods are of two types: complementary goods and substitute goods. Complementary goods are those goods that are used together. For example, bread and butter. Substitute goods are goods that can be used in place of each other. For example, Coca-cola and Pepsi.", "Supply is the willingness and ability to sell a good or service. \n\n Factors affecting supply are supply shocks, taxes, subsidies, technology, and cost of factors of production. \n\n Supply shocks are unexpected events that affect the supply of a good or s service. For example, due to a war or a hurricane, chocolate cannot be exported by the Ivory Coast in Africa. \n\n Taxes in terms of supply are corporate taxes. Corporate taxes are aimed at a firm’s profits; a certain percentage of the firm’s profits are taken by the government. For example, if the percentage of tax/ tax rate is increased, suppliers will supply less as a greater proportion of their profits will be taken by the government. \n\n Subsidies are payments made by the government to producers to encourage the production of certain beneficial goods. For example, governments often provide subsidies to private firms providing education or healthcare since both services are beneficial to society. \n\n Advancements in Technology increase the supply of a given good by improving efficiency. For example, before the printing press was introduced, all books were handwritten. Thus, the production of books was a time-consuming and expensive process. With the printing press, however, the supply rose as efficiency increased. \n\n As studied earlier, factors of production are land, labour, capital, and enterprise. The price of these factors determines the cost of producing the good. Therefore, if the price of the factors of production rises, the cost of production rises. Hence, making it expensive for the producer to produce and vice-versa.", "Demand curve and functions: The concept of demand as we previously learnt follows a trend for most goods (normal goods). This can better be understood by representing the trend using a demand function. A demand function is simply an equation that can be used to plot the demand curve. It is denoted as Quantity Demanded= A-bp. You do not have to know the function of each component as this level as it is a higher-level economics topic. \n\n The relationship between demand and price is negative because as price rises, demand falls. \n\n The downward-facing line represents demand. The y-axis represents the price, and the x-axis represents the quantity demanded. I used the information in the table and inputted the values into the linear demand function (equation) to find the quantity demanded. As can be noted, the information from the table has been converted into a demand curve.", "Supply curve and functions: Just like demand, supply too follows a trend which can also be represented using a supply function. A supply function is simply an equation that can be used to plot the supply curve. It is denoted as Quantity supplied=C+dP. You do not have to know the function of each component as this level as it is a higher-level economics topic. \n\n The relation between price and supply is positive: as price rises supply rises as well, and vice-versa.", "Equilibrium: is the level where the quantity demanded equals the quantity supplied. It is the price and quantity at which the suppliers are willing and able to sell a given good or a service, and where the quantity and price at which the consumers are willing and able to buy the good. There is no shortage or surplus at this level. \n\n Qe: Equilibrium Quantity, Pe: Equilibrium price \n\n The point where the demand and supply curve are intersecting represents equilibrium. \n\n Equilibrium is achieved when the quantity demanded is equal to the quantity of supply. Therefore, to find equilibrium price, we have to simply equate the linear demand and supply functions. That is, Qs=Qd", "Price Elasticity of demand: PED is the  degree by which demand changes. It is the responsiveness of demand to a change in price. There are four kinds of elasticities. \n\n Price elastic: a change in price causes a more than proportionate change in demand. \n\n Price inelastic: a change in price causes a less than proportionate change in demand. For example, cigarettes is price inelastic because it is an addictive good. A change in its price will not change its demand significantly because it is an addictive good. Thus it is not easy for consumers to change their spending patterns. \n\n Perfectly price elastic- this is a situation where a change in price causes an infinite change in demand. It is a hypothetical situation in economics. \n\n Perfectly price inelastic- this is a situation when a change causes no change in demand. It is also a hypothetical situation. \n\n Unit elasticity: when the change in price results in an equal change in demand. \n\n Factors that affect elasticity: \n\n 1. Addictive goods: For example, cigarettes is price inelastic because it is an addictive good. A change in its price will not change its demand significantly because it is an addictive good. Thus it is not easy for consumers to change their spending patterns. \n\n 2. Time period: in the long term, the demand of all goods tends to become elastic as one can find substitutes \n\n 3. Luxury or necessity: if a good is a necessity like water or food, its demand tends to be inelastic as a change in price will not cause a drastic change in demand as these goods are essential for living. However, the demand for luxury goods will be more sensitive to price change. Thus the decrease in the price of a luxury product will cause a more than proportionate increase in demand.", "Price Elasticity of Supply: The responsiveness of supply to a change in price. There are four kinds of elasticity: \n\n Price elastic: the change in price causes a more than proportionate change in supply. For example, an increase in price will cause a much greater increase in supply. \n\n Price inelasticity: the change in price causes a less than proportionate change in supply. \n\n Perfectly inelastic supply: a change in price causes no change in supply. \n\n Perfectly elastic supply: change in price causes an infinite change in supply. \n\n Unit elasticity: a change in price causes equal change in supply. \n\n Factors affecting elasticity of supply: \n\n 1. Mobility of resources: if the good is occupationally mobile and geographically mobile then the elasticity of supply will be high. Occupational mobility is a resource (Factors of Production)  which is capable of changing use. For example, a piece of land can be used for the growth of of wheat or a building could be built on it. Thus its use can be changed. The geographical mobility is the ability to move the resource from one place to another. For example, a piece of machinery can be used at one factory and then can be transported to another. \n\n 2. Time period: in the short run, supply is inelastic because it is difficult to find substitutes for a given good or service. However, in the long run, supply becomes elastic. \n\n 3. Spare capacity: the availability of stock allows producers to change supply easily if demand rises.", "Market failure: the failure of the market to achieve allocative efficiency. Allocative efficiency is when resources are allocated in a way which causes no surplus and no shortage. \n\n There are different kinds of market failure: \n\n 1. Merit goods: these are goods that are more beneficial for consumers than they themselves realise; they have external benefits (benefits to the society). For example, education is a merit good because it has greater benefits to individuals than they themselves realise. As people are not aware or ignore the benefits of such goods, they are underproduced (produced less than the optimum amount), which causes market failure because the society would be better off if a greater output was produced. \n\n 2. Demerit goods: These goods are more harmful than consumers themselves realise because they have external costs (costs to the society). For example, cigarettes are demerit goods. Since the disadvantages of consuming these products are not known or ignored by consumers, they are overproduced (produced more than the social optimum), which causes market failure as resources are overallocated in the production of these goods. Overallocation means that too many resources (Land, labour, capital, and enterprise) are used to produce this good. \n\n 3. Short termism: this is a situation in the market when the firms produce more consumer goods (goods consumed by the general public, eg- toothpaste, chocolate) than capital goods (machinery). This causes inefficiency because capital goods like machinery promote productivity. For example, imagine two markets, one where tractors exist and one where they don’t. The first market would be efficient because crops would be produced quickly and efficiently. However, in the second market the production of the same level of output would take much longer. Thus it will be inefficient. \n\n 4. Public goods- These are goods that are non rivalrous and non excludable. Don’t worry, these terms are actually quite simple. Non-rivalrous means that the consumption of the good by one person will not reduce someone else's ability to consume it. Non-excludable means that people cannot be excluded from consuming this product. For example, everyone walking on the street will enjoy the light of the street lamps, regardless of whether they paid taxes. \n\n 5. Monopoly- a monopoly is the single seller of a certain good in the market. Therefore it has market power. This market power can be exploited by the monopoly to charge high prices since there are no substitutes available. This exploitation of consumers causes market failure as resources are not allocated efficiently.", "There are a few terms that you should be familiar with- total cost, average cost, total revenue, average revenue, total product, average product. \n\n Total cost(TC): this is the total cost of producing goods and services \n\n Average cost: the cost of producing one unit of output. Total cost/output \n\n Total revenue(TR): the total amount earned from selling the output \n\n Average revenue(AR): the amount earned from selling one unit of the output. This is also the price of the good. Total revenue/output \n\n Total product: the total output \n\n Businesses have certain aims, and these are: \n\n 1. Profit maximisation: when the difference between TR and TC is maximum \n\n Growth: increasing the market share (proportion of the total market made by the firm), economies of scale (which you’re going to learn about later), etc. \n\n Profit satisficing: generating profits to keep the shareholders happy, by giving dividends. Shareholders are individuals that own a percentage of your firm if you’re a limited company (private or public) and they are paid dividends on their investments. \n\n Ethical objective: to protect the environment or uphold social responsibility. For example, not employing child labour.", "Economies of scale is an increase in the scale of production which causes the average costs to fall. There are various kinds of economies of scale. Firms with a large scale of production, ie large firms are able to enjoy EOS. For example: \n\n 1. Technical EOS: when a firm uses advanced technology to produce its goods and services, which results in increased productivity. Thus, average costs are lowered. \n\n 2. Managerial EOS: when a firm employs specialised managers which improves the efficiency. Hence, causing a fall in the average costs. \n\n 3. Financial EOS: large firms are more likely to get loans from financial institutions as they are more likely to pay back loans, and thus pose a lesser risk to banks. Moreover, as these firms tend to borrow larger amounts, they receive lesser interest rates, which reduces their average costs. \n\n 4. Marketing EOS: marketing costs include the advertising costs which are spread over a large output thus the marketing costs per unit tend to be lesser. \n\n These are few examples of the kinds of Economies of Scale. However, there are more, but we will not talk about those as they are a bit complicated for middle-schoolers."]
        
        DefinitionTextView.text = Dictionary[level]
        Option1ButtonView.setTitle(option1[level], for: .normal)
        Option2ButtonView.setTitle(option2[level], for: .normal)
        Option3ButtonView.setTitle(option3[level], for: .normal)
        Option4ButtonView.setTitle(option4[level], for: .normal)
    }
    
    // Content Function
    func content(num : Int, level : Int) -> String {
        
        switch level {
            
        case 0:
            switch num {
            // Level #1
            case 0:
                OptionsView.isHidden = false
                ForwardButtonView.isEnabled = false
                return "Person X wants to set up their business of producing and selling furniture. What sector are they operating in?"
                
            default: return "Error Loading Content"
            }
        
        case 1:
            switch num {
            // Level #2
            case 0:
                OptionsView.isHidden = false
                ForwardButtonView.isEnabled = false
                return "In order to begin trading, person X needs to begin production. What factors of production will they use?"
                
            default: return "Error Loading Content"
            }
        
        case 2:
            switch num {
            // Level #3
            case 0:
                OptionsView.isHidden = false
                ForwardButtonView.isEnabled = false
                return "Since you have only limited money due to scarcity, you can either produce chairs or tables. Which option is a better one for your furniture business?"
                
            default: return "Error Loading Content"
            }
            
        case 3:
            switch num {
            // Level #4
            case 0:
                OptionsView.isHidden = false
                ForwardButtonView.isEnabled = false
                return "In the case of solar panels, which good can be considered as a free or economic good?"
                
            default: return "Error Loading Content"
            }
            
        case 4:
            switch num {
            // Level #5
            case 0: return "Your furniture company _______, is facing competition from another furniture company ‘AB Furnishings’ as they have just launched cheaper, and better quality sofas."
            case 1:
                OptionsView.isHidden = false
                ForwardButtonView.isEnabled = false
                return "What type of good is ‘AB Furnishings’ table and what effect will it have on your demand?"
                
            default: return "Error Loading Content"
            }
            
        case 5:
            switch num {
            // Level #6
            case 0: return "Due to a hurricane in the city where your production facility is located, the supply of chairs has fallen because labour is not available."
            case 1: return "Is the cause of the fall in supply due to a fall in willingness or ability?"
            case 2: return "Due to an increase in the corporate tax (a tax levied on firms), you are supplying fewer sofas because the incentive to sell sofas has fallen as you must pay a larger proportion of your profit to the government."
            case 3: return "Has the supply fallen due to a fall in willingness or ability?"
            case 4:
                OptionsView.isHidden = false
                ForwardButtonView.isEnabled = false
                return "Answer Both Questions:"
                
            default: return "Error Loading Content"
            }
            
            // -------------x---------------x--------------x-----------
            
            case 6:
            switch num {
            // Level #7
            case 0:
                OptionsView.isHidden = false
                ForwardButtonView.isEnabled = false
                return "Navigate to the Graphs View and calculate the missing values."
                
            default: return "Error Loading Content"
            }
            
        case 7:
        switch num {
        // Level #8
        case 0:
            OptionsView.isHidden = false
            ForwardButtonView.isEnabled = false
            return "Navigate to the Graphs View and calculate the missing values."
            
        default: return "Error Loading Content"
        }
            
        case 8:
        switch num {
        // Level #9
        case 0:
            OptionsView.isHidden = false
            ForwardButtonView.isEnabled = false
            return "If the quantity demanded by the masses can be defined by this linear demand function Qd= 30-2P and the quantity supplied can be defined by linear supply function Qs= 2+5P, find the value of the equilibrium price."
            
        default: return "Error Loading Content"
        }
            
        case 9:
        switch num {
        // Level #10
        case 0:
            return "Will coffee be price inelastic or elastic? Why?"
        case 1:
            return "If the change in price causes an equal change in demand for a certain good, is it:"
        case 2:
        return "Your furniture firm is selling premium quality chairs, and the price of these chairs is quite high: much higher than the costs. If a rival firm has started producing premium velvet chairs, should you decrease or increase the price of your chairs to combat competition?"
        case 3:
            OptionsView.isHidden = false
            ForwardButtonView.isEnabled = false
            return "Answer questions chronologically."
            
        default: return "Error Loading Content"
        }
            
        case 10:
        switch num {
        // Level #11
        case 0:
            OptionsView.isHidden = false
            ForwardButtonView.isEnabled = false
            return "One of the lamps that your company takes a lot of time to produce because materials have to be sourced from several countries overseas. What is the PES of this good in short run and long run?"
            
        default: return "Error Loading Content"
        }
            
        case 11:
        switch num {
        // Level #12
        case 0:
            OptionsView.isHidden = false
            ForwardButtonView.isEnabled = false
            return "There is only one electricity provider in your city, and thus you must buy this commodity from them. All of a sudden, the price of electricity rises significantly, causing you to ration (reduce) your demand because you are no longer able to afford electricity. What is the cause of this market failure?"
            
        default: return "Error Loading Content"
        }
            
        case 12:
        switch num {
        // Level #13
        case 0:
            return "Your firm _______ has decided to purchase green technology to produce furniture to reduce carbon emissions. What business aim is this?"
        case 1:
            return "If the total cost of producing 300 chairs is $750, what is the average cost? (correct to one decimal place)"
        case 2:
        return "If the same chair is sold with the profit markup of $10, what is the total revenue? (correct to one decimal place)"
        case 3:
            OptionsView.isHidden = false
            ForwardButtonView.isEnabled = false
            return "Answer questions chronologically."
            
        default: return "Error Loading Content"
        }
            
        case 13:
        switch num {
        // Level #14
        case 0:
            OptionsView.isHidden = false
            ForwardButtonView.isEnabled = false
            return "If you decide to install the latest technology in your firm, what EOS is it?"
            
        default: return "Error Loading Content"
        }
            
        default: "Mega-Error"
        }
        
        return ""
    }
    
    // Forward Button View
    @IBAction func ForwardButtonAction(_ sender: UIButton) {
        
        DialogueLabelView.text = content(num: contentNum, level: level)
        contentNum += 1
    }
    
    // Backward Button View
    @IBAction func BackButtonAction(_ sender: UIButton) {
        
        ForwardButtonView.isEnabled = true
            
            if contentNum > 0 {

                contentNum -= 1
                DialogueLabelView.text = content(num: contentNum, level: level)
            }
    }
    
    // Options Handler
    @IBAction func Option1ButtonAction(_ sender: UIButton) {
        
        let option = "1"
        
        if option == correctAnswer[level] {
     
        level += 2
        showCorrectAnswer()
        _ = navigationController?.popViewController(animated: true)
        } else {
            
            showWrongAnswer()
        }
    }
    
    @IBAction func Option2ButtonAction(_ sender: UIButton) {
        
        let option = "2"
     
        if option == correctAnswer[level] {
        
           level += 2
           showCorrectAnswer()
           _ = navigationController?.popViewController(animated: true)
        } else {
            
            showWrongAnswer()
        }
    }
    
    @IBAction func Option3ButtonAction(_ sender: UIButton) {
        
        let option = "3"
     
        if option == correctAnswer[level] {
        
           level += 2
           showCorrectAnswer()
           _ = navigationController?.popViewController(animated: true)
        } else {
            
            showWrongAnswer()
        }
    }
    
    @IBAction func Option4ButtonAction(_ sender: UIButton) {
        
        let option = "4"
     
        if option == correctAnswer[level] {
        
           level += 2
           showCorrectAnswer()
           _ = navigationController?.popViewController(animated: true)
        } else {
            
            showWrongAnswer()
        }
    }
    
    
    // Settings View
    @IBAction func SettingsButtonAction(_ sender: UIButton) {
    
        DefinitionTextView.isHidden = true
        
        if SettingsView.isHidden == true {
            
            SettingsView.isHidden = false
        } else {
            
            SettingsView.isHidden = true
        }
    }
    
    // Dialogue View
    @IBAction func StoryButtonAction(_ sender: Any) {
        
        if ImageView.isHidden == true {
            
            ImageView.isHidden = false
            BlurEffectView.isHidden = false
        } else {
            
            ImageView.isHidden = true
            BlurEffectView.isHidden = true
        }
    }
    
    // Definitions View
    @IBAction func BookButtonAction(_ sender: UIButton) {
        
        SettingsView.isHidden = true
        
        if DefinitionTextView.isHidden == true {
            
            DefinitionTextView.isHidden = false
            BlurEffectView.isHidden = false
        } else {
            
            DefinitionTextView.isHidden = true
            BlurEffectView.isHidden = true
        }

    }
    

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.setNavigationBarHidden(false, animated: animated)
    }
}
