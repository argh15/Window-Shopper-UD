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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createCalculateButton()
    }
    
    func createCalculateButton() {
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 40))
        calcBtn.backgroundColor = #colorLiteral(red: 0.9514593909, green: 0.5519665551, blue: 0.01224177702, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(performCalculation), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcBtn
        priceTextField.inputAccessoryView = calcBtn
    }
    
    @objc func performCalculation() {
        print("Here!")
    }
}

