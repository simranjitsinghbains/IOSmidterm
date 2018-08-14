//
//  splashViewController.swift
//  electricitybills
//
//  Created by MacStudent on 2018-08-09.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class splashViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      perform(#selector(self.showLoginVC), with: nil, afterDelay: 10)
        // Do any additional setup after loading the view.
    }
    @objc func showLoginVC(){
        performSegue(withIdentifier: "showLoginscreen", sender: self)
    
    }
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
