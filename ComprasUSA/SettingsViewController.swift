//
//  SettingsViewController.swift
//  ComprasUSA
//
//  Created by Gabriel on 28/07/21.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var tfDolar: UITextField!
    
    @IBOutlet weak var tfIOF: UITextField!
    
    @IBOutlet weak var tfStateTaxes: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tfDolar.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        tfIOF.text = tc.getFormattedValue(of: tc.iof, withCurrency: "")
        tfStateTaxes.text = tc.getFormattedValue(of: tc.stateTax, withCurrency: "")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    func setValues() {
        tc.dolar = tc.convertToDouble(tfDolar.text!)
        tc.iof = tc.convertToDouble(tfDolar.text!)
        tc.stateTax = tc.convertToDouble(tfDolar.text!)
    }
}

extension SettingsViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        setValues()
    }
}
