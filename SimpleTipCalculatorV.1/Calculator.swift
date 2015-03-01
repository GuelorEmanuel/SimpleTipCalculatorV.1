//
//  Calculator.swift
//  SimpleTipCalculatorV.1
//
//  Created by Guelor Emanuel on 2015-02-22.
//  Copyright (c) 2015 Guelor Emanuel. All rights reserved.
//

import Foundation

class Calculator {
    var tipPercentage:Float
    var mealCost:Float
    
    /*
     * Function to initialize tipPercentage and mealCost with the user input
     * @param self.tipPercentage, self.mealCost
     */
    init(tipPercent:Float,mealCost:Float){
        self.tipPercentage = tipPercent * 0.01
        self.mealCost      = mealCost
    }
    
    /*
     * Function to calculate the Tip
     *  @return (self.tipPercentage * self.mealCost)
     */
    func calculateTip()->Float{
        
        return self.tipPercentage * self.mealCost
    }
    
    
   /*
    * Function to calculate the Tip per person
    *  @param numberOfPeople
    *  @return (totalMealTip/numberOfPeople)
    */
    func calculateTipPerPerson(numberOfPeople:Float)->Float{
        
        var totalMealTip = calculateTip()
        
        
        return (totalMealTip/numberOfPeople)
        
    }
    
   /*
    * Function to calculate the Tip per person
    *  @param numberOfPeople
    *  @return (mealCostPerPerson + totalMealTip)
    */
    func calculateTotalCost(numberOfPeople:Float)->Float{
        
        var totalMealTip      = calculateTipPerPerson(numberOfPeople)
        var mealCostPerPerson = self.mealCost/numberOfPeople
        
        
        return (mealCostPerPerson + totalMealTip)
        
    }
    
    /*
     * get method for tipPercentage
     * @return tipPercentage
     */
    func getTipPercentage()->Float {
        return tipPercentage
    }
    
   /*
    * get method for mealCost
    * @return mealCost
    */
    func getMealCost()->Float {
        return mealCost
    }

    
    
}
