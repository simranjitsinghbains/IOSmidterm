//
//  electricitycalculate.swift
//  electricitybills
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import Foundation
enum Gender {
    case male
    case female
}

class ElectricityBill {
    
    var gender: Gender?
    var TotalUnit: Int = 0
    var customerId: Int = 0
    var customerName: String = ""
    var BillDate: Date?
    var Email : String = ""
    var TotalBill: Double = 0.0
    
    func totalBill(totalUnit:Int) -> Double {
        
        if (totalUnit<=100){
            TotalBill = Double(Double(totalUnit)*0.75)
        }
        else if(totalUnit <= 250){
            TotalBill = Double(175 + Double(totalUnit-100)*1.25)
        }
        else if(totalUnit <= 450){
            TotalBill = Double(362.5 + Double(totalUnit-250)*1.75)
        }
        else {
            TotalBill = Double(712.5 + Double(totalUnit-450)*2.25)
        }
        
        return TotalBill
    }
    
}
