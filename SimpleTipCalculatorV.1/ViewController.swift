//
//  ViewController.swift
//  SimpleTipCalculatorV.1
//  by: Guelor Emanuel
//
//  Created by Guelor Emanuel on 2015-02-11.
//  Copyright (c) 2015 Guelor Emanuel. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var txtMealPrice: UITextField!

    @IBOutlet weak var txtTip: UITextField!
    
    @IBOutlet weak var lblTipTotal: UILabel!
    
    @IBOutlet weak var lblCostPerPerson: UILabel!
    
    @IBOutlet weak var lblnumOfPeople: UILabel!
    var numberOfPeople:Float = 1.0
    var counter:Int = 1      // counter for number of people
   
    
    
    /*
     * Button to calculate the tip
     * @param sender
     */
    @IBAction func btnCalculate(sender: UIButton) {
        var totalMealCost :Float
        var totalTip:Float
    
        
        
        
        if ( counter > 1 && txtMealPrice.text.toInt() != nil && txtTip.text.toInt() != nil) {
             let calculator = Calculator(tipPercent: txtTip.text.floatValue, mealCost: txtMealPrice.text.floatValue)
            
            totalTip                      = calculator.calculateTipPerPerson(numberOfPeople)
            totalMealCost                 = calculator.calculateTotalCost(numberOfPeople)
            txtMealPrice.backgroundColor  = UIColor.whiteColor()
            txtTip.backgroundColor        = UIColor.whiteColor()
            lblTipTotal.text              = "Tip per person: $ \(totalTip.answerFormat)"
            lblCostPerPerson.text         = "Total per person: $\(totalMealCost.answerFormat)"
        }
        else if (counter == 1 && txtMealPrice.text.toInt() != nil && txtTip.text.toInt() != nil) {
            let calculator = Calculator(tipPercent: txtTip.text.floatValue, mealCost: txtMealPrice.text.floatValue)
            
            
            totalTip                      = calculator.calculateTipPerPerson(numberOfPeople)
            totalMealCost                 = calculator.calculateTotalCost(numberOfPeople)
            txtMealPrice.backgroundColor  = UIColor.whiteColor()
            txtTip.backgroundColor        = UIColor.whiteColor()
            lblTipTotal.text              = "Tip: " + totalTip.answerFormat
            lblCostPerPerson.text         = "Total: $" + totalMealCost.answerFormat
        }
        if (txtMealPrice.text.toInt() == nil) {
            txtMealPrice.backgroundColor = UIColor.redColor()
            txtMealPrice.text            = "error: Invalid value"
        }
        if ( txtTip.text.toInt() == nil) {
            txtTip.backgroundColor = UIColor.redColor()
            txtTip.text            = "error: Invalid value"
        }
        
    }
    
    /*
     * Button to reset the UILabels and clear the UITextField
     * param sender
     */
    @IBAction func btnClear(sender: UIButton) {
        //this will clear or reset the the app
        txtMealPrice.text      = ""
        txtTip.text            = ""
        lblTipTotal.text       = "Tip Total"
        lblCostPerPerson.text  = "Total"
        numberOfPeople         = 1.0
        counter                = 1
        lblnumOfPeople.text    = "Number of People: 1"
        
        txtMealPrice.backgroundColor = UIColor.whiteColor()
        txtTip.backgroundColor       = UIColor.whiteColor()
    }
    
    /*
     * Button to increment the number of people
     * param sender
     */
    @IBAction func btnIncrement(sender: UIButton) {
        numberOfPeople+=1
        counter+=1
        
        lblnumOfPeople.text = "Number of People: \(counter)"
    }
    
    /*
    * Button to decrement the number of people
    * param sender
    */
    @IBAction func btnDecrement(sender: UIButton) {
        if (counter > 1) {
            numberOfPeople-=1
            counter-=1
            
            lblnumOfPeople.text = "Number of People: \(counter)"
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true;
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtMealPrice.delegate = self
        txtTip.delegate       = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

