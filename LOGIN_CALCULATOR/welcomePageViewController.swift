//
//  welcomePageViewController.swift
//  LOGIN_CALCULATOR
//
//  Created by Vir Davinder Singh on 2022-02-22.
//

import UIKit

class welcomePageViewController: UIViewController {
    var str : String! = ""

    @IBOutlet weak var userlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let str = str {
            self.userlabel.text = str
        }
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        let calcpage = storyboard?.instantiateViewController(withIdentifier: "Calc-page") as! CalcPageViewController?;
        navigationController?.pushViewController(calcpage!, animated: true)
    }
    
    
    
    @IBAction func changePwd(_ sender: UIButton) {
        let changepwd = storyboard?.instantiateViewController(withIdentifier: "change-passwrd") as! changePwdPageViewController?;
        navigationController?.pushViewController(changepwd!, animated: true)
    }
}
