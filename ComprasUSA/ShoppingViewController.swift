//
//  ViewController.swift
//  ComprasUSA
//
//  Created by Gabriel on 28/07/21.
//

import UIKit

class ShoppingViewController: UIViewController {

    
    @IBOutlet weak var tfDolar: UITextField!
    
    @IBOutlet weak var lbRealDescription: UILabel!
    
    
    @IBOutlet weak var lbReal: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        tfDolar.resignFirstResponder()
        setAmout()
    }
    
    func setAmout() {
        tc.shoppingValue = tc.convertToDouble(tfDolar.text!)
        lbReal.text = tc.getFormattedValue(of: tc.shoppingValue * tc.dolar, withCurrency: "R$")
        let dolar = lbReal.text = tc.getFormattedValue(of: tc.dolar, withCurrency: "")
        lbRealDescription.text = "Valor sem impostos (dólar \(dolar))"
        
    }


}

