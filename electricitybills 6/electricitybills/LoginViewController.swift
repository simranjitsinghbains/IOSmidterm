//
//  LoginViewController.swift
//  electricitybills
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func LoginClick(_ sender: Any) {
  
        if(txtEmail.text == "simran@gmail.com" && txtPassword.text == "1993")
        {
            print("login sucess", txtEmail.text! )
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let billViewController = storyBoard.instantiateViewController(withIdentifier: "showbills") as! ElectricityBillsViewController
        self.present(billViewController, animated: true, completion: nil)
    
    
    }
        
        else
        {
            print("unsucess")
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

}
