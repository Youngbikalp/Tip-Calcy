//
//  ViewController.swift
//  Tip Calcy
//
//  Created by Bikalp  Timalsina on 12/22/19.
//  Copyright © 2019 Bikalp  Timalsina. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var totalLable: UILabel!
    @IBOutlet weak var billTextField: UITextField!
    
    @IBOutlet weak var tipLable: UILabel!
    @IBOutlet weak var tipSlider: UISlider!
    @IBOutlet weak var splitLable: UILabel!
    @IBOutlet weak var splitAmountLable: UILabel!
    @IBOutlet weak var splitSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        billTextField.becomeFirstResponder()
        
    }
    
    var tipCalc = TipCalc(Bill:0,tipPercent: 0.10)
    func calcBill(){
        tipCalc.tipPercent = Double(Int(tipSlider.value)) / 100.0
        tipCalc.Bill = (billTextField.text! as NSString).doubleValue
        tipCalc.calcTip()
        update()
    }
    func update(){
        totalLable.text = String(format:"$%0.2f", tipCalc.totalAmount)
        let totalPeople: Int = Int(splitSlider.value)
        splitAmountLable.text = String(format: "$%0.2f", tipCalc.totalAmount / Double(totalPeople))
    }
    
    
    
    @IBAction func tipSliderMove(_ sender: Any) {
        tipLable.text = String(format: "Tip: %02d%%", Int(tipSlider.value))
        calcBill()
    }
    
    @IBAction func splitSliderMove(_ sender: Any) {
        splitLable.text = "Split: \(Int(splitSlider.value))"
        calcBill()
    }
    
    
    @IBAction func billChange(_ sender: Any) {
        calcBill()
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
}

