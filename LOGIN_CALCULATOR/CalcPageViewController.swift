//
//  CalcPageViewController.swift
//  LOGIN_CALCULATOR
//
//  Created by Vir Davinder Singh on 2022-02-22.
//

import UIKit

class CalcPageViewController: UIViewController {

    @IBOutlet weak var calresult: UILabel!
    @IBOutlet weak var calworking: UILabel!
    var working = ""
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
  
    func addtoworking(value : String)
    {
        working = working + value
        calworking.text = working
    }
    @IBAction func threetap(_ sender: Any) {
        addtoworking(value: "3")
    }
    
    @IBAction func plustap(_ sender: Any) {
        addtoworking(value: "+")
    }
    
    
    @IBAction func zerotap(_ sender: Any)
        {
            addtoworking(value: "0")
        }
    
    
    @IBAction func twotap(_ sender: Any)
            {
                addtoworking(value: "2")
            }
    
    @IBAction func equaltap(_ sender: Any)
        {
            let exp = NSExpression(format: working)
            let result = exp.expressionValue(with: nil, context: nil) as! Int
            calresult.text = String(result)
        }
    
    @IBAction func onetap(_ sender: Any)
        {
            addtoworking(value: "1")
        }
    
}
