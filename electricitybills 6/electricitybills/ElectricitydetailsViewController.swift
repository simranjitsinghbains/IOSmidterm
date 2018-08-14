//
//  ElectricitydetailsViewController.swift
//  electricitybills
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ElectricitydetailsViewController: UIViewController {
 
  var  Bill1 = ElectricityBill()
    
    @IBOutlet weak var lblcustId: UILabel!
    @IBOutlet weak var lblcustname: UILabel!
    @IBOutlet weak var lblgender: UILabel!
    @IBOutlet weak var lblDate: UILabel!
    @IBOutlet weak var lbltotal: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
   
        lblcustId.text = String(Bill1.customerId)
        lblcustname.text = String(Bill1.customerName)
        lblDate.text = Bill1.BillDate
        lbltotal.text = String(Bill1.totalBill(totalUnit: Int(lbltotalUnit.text))
        
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
