//
//  NaviViewController.swift
//  CurrencyConverter
//
//  Created by Charlotte Varnum on 2/17/24.
//

import UIKit

class NaviViewController: UIViewController {
    
    var amount : String = ""
    var EUR : Double = -1
    var GBP : Double = -1
    var CD : Double = -1
    var JY : Double = -1
    @IBOutlet weak var USDValuePassed: UILabel!
    @IBOutlet weak var EURDisplay: UILabel!
    @IBOutlet weak var GBPDisplay: UILabel!
    @IBOutlet weak var CDDisplay: UILabel!
    @IBOutlet weak var JYDisplay: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        USDValuePassed.text = amount
        
        // Currency Updates
        if EUR != -1 {
            EURDisplay.text = String(EUR)
        }
        else {
            EURDisplay.text = "Currency Not Requested"
        }
        
        if GBP != -1 {
            GBPDisplay.text = String(GBP)
        }
        else {
            GBPDisplay.text = "Currency Not Requested"
        }
        
        if CD != -1 {
            CDDisplay.text = String(CD)
        }
        else {
            CDDisplay.text = "Currency Not Requested"
        }
        
        if JY != -1 {
            JYDisplay.text = String(JY)
        }
        else {
            JYDisplay.text = "Currency Not Requested"
        }
        
    }
    

}
