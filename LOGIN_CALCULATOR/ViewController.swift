//
//  ViewController.swift
//  LOGIN_CALCULATOR
//
//  Created by Vir Davinder Singh on 2022-02-22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTxt: UITextField!
    @IBOutlet weak var passwrdTxt: UITextField!
    var newpasswrd : String?
    var passwrdcheck : String? = "pwd"
    var usercheck = "user1"
    
    
    @IBOutlet weak var labeltxt: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.passwrdTxt.isSecureTextEntry = true
        passwrdTxt.center
    }

    @IBAction func login(_ sender: UIButton) {
        if let newpasswrd = newpasswrd
        {
            passwrdcheck = newpasswrd
        }
       // print(passwrdcheck)
        if usernameTxt.text == usercheck
        {
            if passwrdTxt.text == passwrdcheck
            {
                let welcomePage = storyboard?.instantiateViewController(withIdentifier: "welcome-page") as! welcomePageViewController?;
                welcomePage?.str = "user1/" + passwrdcheck!
               // navigationController?.popToRootViewController(animated: true)
                navigationController?.pushViewController(welcomePage!, animated: true)
            }
            else
            {
                labeltxt.text = "Wrong  password"
            }
        }
        else
        {
            labeltxt.text = "Wrong username"
        }
    }
    
    @IBAction func forgotpwd(_ sender: UIButton) {
        let forgetpage = storyboard?.instantiateViewController(withIdentifier: "change-passwrd") as! changePwdPageViewController?;
        navigationController?.pushViewController(forgetpage!, animated: true)

        
    }
}

