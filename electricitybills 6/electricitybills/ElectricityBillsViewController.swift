//
//  ElectricityBillsViewController.swift
//  electricitybills
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ElectricityBillsViewController: UIViewController {

      var Bill1 = ElectricityBill()
    
    @IBOutlet weak var customerId: UITextField!
    
    @IBOutlet weak var customerName: UITextField!
    
    
    @IBOutlet weak var Email: UITextField!
    @IBOutlet weak var lbltotalunit: UITextField!
    @IBOutlet weak var Total: UITextField!
    @IBOutlet weak var textField_Date: UITextField!
  
    
    var datePicker : UIDatePicker!
    
    override func viewDidLoad()
    
   {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btncalculate(_ sender: Any) {
    
        Bill1.customerId = Int(customerId.text!)!
        Bill1.customerName = customerName.text!
        Bill1.BillDate = (textField_Date.text)
        Bill1.TotalBill = Bill1.totalBill(totalUnit: Int(lbltotalunit.text!)!)
      let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        _ = storyBoard.instantiateViewController(withIdentifier: "showbills") as! ElectricitydetailsViewController
         performSegue(withIdentifier: "segueBillDetails", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using
        if let destVC = segue.destination as? ElectricitydetailsViewController
        {
            destVC.Bill1 = Bill1
        }
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.pickUpDate(self.textField_Date)
    }
        
    func pickUpDate(_ textField : UITextField){
        
        // DatePicker
        self.datePicker = UIDatePicker(frame:CGRect(x: 0, y: 0, width: self.view.frame.size.width, height: 216))
        self.datePicker.backgroundColor = UIColor.white
        self.datePicker.datePickerMode = UIDatePickerMode.date
        textField.inputView = self.datePicker
        
        // ToolBar
        let toolBar = UIToolbar()
        toolBar.barStyle = .default
        toolBar.isTranslucent = true
        toolBar.tintColor = UIColor(red: 92/255, green: 216/255, blue: 255/255, alpha: 1)
        toolBar.sizeToFit()
        
        // Adding Button ToolBar
        let doneButton = UIBarButtonItem(title: "Done", style: .plain, target: self, action: #selector(ElectricityBillsViewController.doneClick) as Selector)
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(ElectricityBillsViewController.cancelClick))
        toolBar.setItems([cancelButton, spaceButton, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        textField.inputAccessoryView = toolBar
        
        
    }
    
    // MARK:- Button Done and Cancel
    @objc func doneClick() {
        let dateFormatter1 = DateFormatter()
        dateFormatter1.dateStyle = .medium
        dateFormatter1.timeStyle = .none
        textField_Date.text = dateFormatter1.string(from: UIDatePicker.date)
        textField_Date.resignFirstResponder()
    }
    
    @objc func cancelClick() {
        textField_Date.resignFirstResponder()
    }
    
}

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */


