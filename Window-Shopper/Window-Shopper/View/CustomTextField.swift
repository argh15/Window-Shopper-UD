//
//  CustomTextField.swift
//  Window-Shopper
//
//  Created by Arghadeep  on 01/02/21.
//

import UIKit

@IBDesignable
class CustomTextField: UITextField {
    
    override func prepareForInterfaceBuilder() {
        applyTheme()
    }
    
    override func draw(_ rect: CGRect) {
        let label = createCurrencyLabel()
        label.text = createFormatter().currencySymbol
        addSubview(label)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        applyTheme()
    }
    
    func applyTheme() {
        backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        layer.cornerRadius = 5.0
        textAlignment = .center
        
        if let placeholderText = placeholder {
            attributedPlaceholder = NSAttributedString(string: placeholderText, attributes: [NSAttributedString.Key.foregroundColor: UIColor.white.withAlphaComponent(0.25)])
            textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.25)
        }
    }
    
    func createCurrencyLabel() -> UILabel {
        let size : CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height/2) - size/2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.8956019987, green: 0.8956019987, blue: 0.8956019987, alpha: 0.7714308647)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        currencyLabel.layer.cornerRadius = 5.0
        currencyLabel.clipsToBounds = true
        return currencyLabel
    }
    
    func createFormatter() -> NumberFormatter {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = .current
        return formatter
    }

}
