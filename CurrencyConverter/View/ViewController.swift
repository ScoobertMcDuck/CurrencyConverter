//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by Charlotte Varnum on 2/17/24.
//

import UIKit

class ViewController: UIViewController {

    
   
    @IBOutlet weak var USDValue: UITextField!
    @IBOutlet weak var USDLabel: UILabel!
    var amount : String = "1"
    var amountInt : Int = -1
    var currencyLogic = CurrencyLogic()
    var EUR : Double = -1
    var GBP : Double = -1
    var CD : Double = -1
    var JY : Double = -1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func USDValueEntered(_ sender: UITextField) {
        if let textValue = USDValue.text {
            if Int(textValue) == nil {
                amount = "Invalid Number Entered"
            }
            else {
                amount = textValue
                amountInt = Int(textValue)!
            }
        }
    }
    
    
    
    
    @IBAction func EUROn(_ sender: UISwitch) {
        if sender.isOn {
            EUR = currencyLogic.convertToEuros(amountInt)
        }
    }
    
    
    @IBAction func GBPOn(_ sender: UISwitch) {
        if sender.isOn {
            GBP = currencyLogic.convertToPounds(amountInt)
        }
    }
    
    
    @IBAction func CDOn(_ sender: UISwitch) {
        if sender.isOn {
            CD = currencyLogic.convertToCanadianDollars(amountInt)
        }
    }
    
    
    @IBAction func JYOn(_ sender: UISwitch) {
        if sender.isOn {
            JY = currencyLogic.convertToJapaneseYen(amountInt)
        }
    }
    
    
    @IBAction func navigate(_ sender: UIButton) {
        self.performSegue(withIdentifier: "toNavigation", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toNavigation" {
            let currencyNavigation = segue.destination as! NaviViewController
            currencyNavigation.amount = amount
            currencyNavigation.EUR = EUR
            currencyNavigation.GBP = GBP
            currencyNavigation.CD = CD
            currencyNavigation.JY = JY
        }
    }
}

