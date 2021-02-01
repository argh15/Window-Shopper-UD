//
//  MainVC.swift
//  Window-Shopper
//
//  Created by Arghadeep  on 01/02/21.
//

import UIKit

class MainVC: UIViewController {

    @IBOutlet weak var wageTextField: CustomTextField!
    @IBOutlet weak var priceTextField: CustomTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCalculateButton()
        handleVisibility(showButton: false)
    }
    
    func createCalculateButton() {
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9514593909, green: 0.5519665551, blue: 0.01224177702, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(performCalculation), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcBtn
        priceTextField.inputAccessoryView = calcBtn
        
    }
    
    @objc func performCalculation() {
        if let wageText = wageTextField.text, let priceText = priceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText) {
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
                view.endEditing(true)
                handleVisibility(showButton: true)
            }
        }
    }
    
    func handleVisibility(showButton val: Bool) {
        resultLabel.isHidden = !val
        hoursLabel.isHidden = !val
    }
    
    @IBAction func clearCalcBtnAction(_ sender: Any) {
        handleVisibility(showButton: false)
        wageTextField.text = ""
        priceTextField.text = ""
    }
}

