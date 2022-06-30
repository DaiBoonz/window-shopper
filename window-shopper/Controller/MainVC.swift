//
//  ViewController.swift
//  window-shopper
//
//  Created by MacOS-BigSur on 29/06/2022.
//

import UIKit

class MainVC: UIViewController {


   
    @IBOutlet weak var wageTxt: CurrencyTxtField!
    @IBOutlet weak var priceTxt: CurrencyTxtField!
    
    @IBOutlet weak var resultLbl: UILabel!
    @IBOutlet weak var hoursLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let calBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5763723254, blue: 0, alpha: 1)
        calBtn.setTitle("Caculate", for: .normal)
        calBtn.setTitleColor(UIColor.white, for: .normal)
        calBtn.addTarget(self, action: #selector(MainVC.caculate), for: .touchUpInside)
        
        wageTxt.inputAccessoryView = calBtn
        priceTxt.inputAccessoryView = calBtn
        
        priceTxt.isHidden = true
        hoursLbl.isHidden = true
    }
    
    @objc func caculate() {
        if let wageTxt = wageTxt.text, let priceTxt = priceTxt.text {
            if let wage = Double(wageTxt), let price = Double(priceTxt) {
                view.endEditing(true)
                resultLbl.isHidden = false
                hoursLbl.isHidden = false
                resultLbl.text = "\(Wage.getHour(forWage: wage, forPrice: price))"
            }
        }
        
    }

    @IBAction func clearCaculatoPress(_ sender: Any) {
        
        resultLbl.isHidden = true
        hoursLbl.isHidden = true
        wageTxt.text = ""
        priceTxt.text = ""
    }
}

