//
//  changePwdPageViewController.swift
//  LOGIN_CALCULATOR
//
//  Created by Vir Davinder Singh on 2022-02-22.
//

import UIKit

class changePwdPageViewController: UIViewController {

    @IBOutlet weak var newpwd: UITextField!
    @IBOutlet weak var oldpwd: UITextField!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func done(_ sender: UIButton) {
        
        
        let donepwd = storyboard?.instantiateViewController(withIdentifier: "login-page") as! ViewController?;
        print("-> \(donepwd?.passwrdcheck)")
        if  donepwd?.passwrdcheck == oldpwd.text ?? ""
        {
           
            donepwd?.newpasswrd = newpwd.text ?? ""
           // donepwd?.passwrdcheck = newpwd.text ?? ""
            self.navigationController?.pushViewController(donepwd!, animated: true)
        }
        else {
            label.text = "Wrong Password"
        }
        
      
        
    }
    
}
