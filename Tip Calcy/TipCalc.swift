//
//  TipCalc.swift
//  Tip Calcy
//
//  Created by Bikalp  Timalsina on 12/22/19.
//  Copyright © 2019 Bikalp  Timalsina. All rights reserved.
//

import Foundation

class TipCalc{
    var Bill : Double = 0
    var tipAmount: Double = 0
    var tipPercent : Double = 0
    var totalAmount: Double = 0
    
    init(Bill: Double, tipPercent: Double){
        self.Bill = Bill
        self.tipPercent = tipPercent
    }
    
    func calcTip() {
        tipAmount = Bill * tipPercent
        totalAmount = tipAmount + Bill
    }
}
