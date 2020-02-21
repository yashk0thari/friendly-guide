//
//  AppUtils.swift
//  EconomicsProject
//
//  Created by Nirbhay Singh on 20/02/20.
//  Copyright © 2020 Valley. All rights reserved.
//

import Foundation
import SCLAlertView

func showWrongAnswer(){
    SCLAlertView().showError("Oops", subTitle: "That's the wrong answer.")
}
func showCorrectAnswer(){
    SCLAlertView().showSuccess("Success", subTitle: "That's the correct answer.")
}
